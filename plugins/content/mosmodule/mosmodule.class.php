<?php
/**
* @version 
* @package MosModule - COAddOns for Mambo & Jommla - Mambot
* @copyright (C) 2008 ongetc.com
* @info ongetc@ongetc.com http://ongetc.com
* @license GNU/GPL http:/ongetc.com/gpl.html.
*/ 
defined( '_VALID_MOS' ) or die( 'Direct Access to this location is not allowed.' );
// mosmodule Core Class
class mosModuleClass{
var $mebot;
var $mepath;
var $unEscapeChar;
var $char2Escape;
var $cSeparator;
  var $mainframe;
  var $database;
  
  function mosModuleClass($mebot,$mepath) {
    global $mainframe;
    global $database; 
    $this->mainframe = $mainframe;
    $this->database = $database;
    
    $this->mebot=$mebot;
    $this->mepath=$mepath;
    $this->unEscapeChar="{-}";
    $this->char2Escape="\,";
    $this->cSeparator="|";
  }
  function commaEscape($pname) {
    if (stristr($pname, $this->char2Escape)) {
      $pname = preg_replace("/\\".$this->char2Escape."/is", $this->unEscapeChar, $pname); // escape char    
    }
    return $pname;
  }
  function commaUnEscape($pnameArray) {
    if (preg_grep("/".$this->unEscapeChar."/", $pnameArray)) {
      $pnameArray = preg_replace("/".$this->unEscapeChar."/i", ",", $pnameArray); // put back  escape char
    }
    return $pnameArray;
  }  
  function comma2Bar($pname) {
    return preg_replace("/,/is", "|", $pname); // standardize on | as separator    
  }   
  function param2Array($pname) {  
    return preg_split("/[".$this->cSeparator."]/", $pname); 
  }   
  function fixParams($pname) {
    $pname = $this->commaEscape($pname);
    if (!stristr($pname, $this->cSeparator)) {    
      if (stristr($pname, ',')) {
        $pname = $this->comma2Bar($pname);
      }
    }
    return $pname;
  }
  function getParams($pname) {  
    $aparam = $this->commaUnEscape($this->param2Array($pname));   // put back  escape char     
    return array_map('trim', $aparam); 
  }  
  function getmodulename( $pname ) {
//      $module_list = explode(",", $pname);
      $module_list = $this->getParams($pname);     
      $modulecnt = count($module_list);
      if ($modulecnt==1) $pname = $module_list[0];
      else {
        $itemchoose = rand(0,$modulecnt-1);
        $pname = $module_list[$itemchoose];
      } 
    return $pname;
  }
  function wrapper($pname) {
	$iwidth = "100%";
	$iheight = "800px";
	$iscrolling = "auto";
	$ialign = "top";
	$aparam = array();
//	$aparam = explode(",", $pname);
  $aparam = $this->getParams($pname);
	$iurl = $aparam[0];
	if (count($aparam)>1 and $aparam[1]) $iwidth = $aparam[1];
	if (count($aparam)>2 and $aparam[2]) $iheight = $aparam[2];
	if (count($aparam)>3 and $aparam[3]) $iscrolling = $aparam[3];
	if (count($aparam)>4 and $aparam[4]) $ialign = $aparam[4];

return "<iframe id='MMWrapper' src='$iurl' width='$iwidth' height='$iheight' scrolling='$iscrolling' align='$ialign' frameborder='0'>This option will not work correctly.  Unfortunately, your browser does not support Inline Frames</iframe>";
	}
  function grabPage($pname) {
	$aparam = array();
//	$aparam = explode(",", $pname);
  $aparam = $this->getParams($pname);  
	$iurl = $aparam[0];
	(count($aparam)>1) ? $textpart = $aparam[1] : $textpart = "body";
	$curl_handle = curl_init();
	curl_setopt ($curl_handle, CURLOPT_URL, $iurl);
	curl_setopt ($curl_handle, CURLOPT_RETURNTRANSFER, 1);
	curl_setopt ($curl_handle, CURLOPT_CONNECTTIMEOUT, 1);
	$buffer = "";
	$buffer = curl_exec($curl_handle);
	$curl_errors = curl_errno($curl_handle);
	curl_close($curl_handle);
	if ( $curl_errors || !$buffer ) {
		$buffer = "";
	}
//    $buffer=preg_replace("/<head(.+?)<\/head>(.+?)/is", "$2", $buffer); // get rid head
    $buffer=preg_replace("/<\/html>/i", "", $buffer); // strip out end html
//    $buffer=preg_replace("/(.+?)(<body.+?<\/body>)/is", "$2", $buffer); // just keep body
    $buffer=preg_replace("/(.+?)<body(.+?)>(.+?)<\/body>/is", "$3", $buffer); // just keep content of body
	$buffer = "<!-- Start of MosModule --><div id='mmGrabPage'>".$buffer."</div><!-- End of MosModule -->";
	return $buffer;
}
function textsizer($pname) {
$output =" 
<script type='text/javascript'>
mostsizer = function( tagid,iafsize,isize,idirection ) {
  var msize=iafsize.length-1;
  if ( idirection != 0 ) isize += idirection;
  else isize = 2; // reset to original size
  if ( isize < 0 ) isize = msize;
  if ( isize > msize ) isize = 0;
  
  var dd = 'document.getElementById(\"'+tagid+'\");';
  var d = eval(dd);
  if (d) {
    var innerTags = d.getElementsByTagName(\"*\");
    for ( var j = 0 ; j < innerTags.length ; j++ ) {
      innerTags[j].style.fontSize = iafsize[ isize ];
    }
  }
return isize;
}                  
</script>
<div id='tsizerlink'>
<script>
var nsize=2;
var afsize = new Array( 'xx-small','x-small','small','medium','large','x-large','xx-large' );
var mostsizertag = '$pname';
</script>
<input class='tsizerbutton' id='plus' value=' A+ '  onclick='javascript:nsize=mostsizer(mostsizertag,afsize,nsize,1)' type='button' />
<input class='tsizerbutton' id='reset'value=' A '  onclick='javascript:nsize=mostsizer(mostsizertag,afsize,nsize,0)' type='button' />
<input class='tsizerbutton' id='minus' value=' A- '  onclick='javascript:nsize=mostsizer(mostsizertag,afsize,nsize,-1)' type='button' />
</div>";
return $output;
}
  function videoegg($pname,$vwidth,$vheight) {
    $output = "<script language=\"javascript\" src=\"http://update.videoegg.com/js/PlayerCustom.js\"></script><script language='javascript'>var api = VE_getCustomPlayerAPI('1.0');api.embedPlayer('".$pname."', ".$vwidth.", ".$vheight.", false, '', 'videoegg', false, '', '');</script>";
    return $output;
  }
  function video($pname,$vwidth,$vheight) {
    $output = "<embed style=\"width:".$vwidth."px; height:".$vheight."px;\" id=\"VideoPlayback\" type=\"application/x-shockwave-flash\" src=\"".$pname."\" flashvars=\"\"> </embed>";      
    return $output;
  }
function flash($pname,$vwidth,$vheight) {
      $output = "<script type=\"text/javascript\" src=\"".$this->mepath."swfobject.js\"></script>
<p id=\"mmplayer\"><a href=\"http://www.macromedia.com/go/getflashplayer\">Get the Flash Player</a> to see this player.</p>
<script type=\"text/javascript\">
	var s1 = new SWFObject(\"".$this->mepath."mediaplayer.swf\",\"single\",\"$vwidth\",\"$vheight\",\"7\");
	s1.addParam(\"allowfullscreen\",\"true\");
	s1.addVariable(\"file\",\"$pname\");
	s1.addVariable(\"image\",\"$pname\");
	s1.write(\"mmplayer\");
</script>";
      return $output;
}
  function doVideo($task,$pname) {
  	$aparam = array();
  //	$aparam = explode(",", $pname);
    $aparam = $this->getParams($pname);  
  	$videofile = $aparam[0];
  	(count($aparam)>1) ? $vwidth = $aparam[1] : $vwidth = "390";
  	(count($aparam)>2) ? $vheight = $aparam[2] : $vheight = "280";
  	switch ($task) {
  		case 'videoegg':
  			$output = $this->videoegg($videofile,$vwidth,$vheight);
  			break;
  		case 'video':
  			$output = $this->video($videofile,$vwidth,$vheight);
  			break;
  		case 'flash':
  			$output = $this->flash($videofile,$vwidth,$vheight);
  			break;
  	}
  	return $output;
  }
  function createDate( $row ) {
		( intval( $row->created ) != 0 ) 
      ? $output = "<div class=\"createdate\">".mosFormatDate( $row->created )."</div>"
      : $output ="";
    return $output;
	}
  function doImageBot(&$row,$iwhich) {
    if (!preg_match_all( "/{(mosimage)}/i", $row->text, $dummy, PREG_SET_ORDER ) ) return;
      global $params, $_MAMBOTS;
      $_MAMBOTS->loadBotGroup( 'content' );
      $params = new mosParameters( $row->attribs );
      $params->set('image', 1);
      $params->set('intro_only', ($iwhich == 'introtext' ? 1 : 0));
      $params->set('introtext', ($iwhich == 'fulltext' ? 0 : 1));
      $results = $_MAMBOTS->trigger( 'onPrepareContent', array( &$row, &$params,0), true );
      return $row->text;
  }
	function getModules() {
		global $database, $my;
		$text="";
		$sql = "SELECT title FROM #__modules WHERE access <= '$my->gid' ORDER BY title";
		$database->setQuery($sql);
		$modules = $database->loadResultArray();
		foreach ($modules as $module) { $text .= "$module <br />"; }
		return $text;
	}
	function getPositions() {
		global $database, $my;
		$text="";
		$sql = "SELECT DISTINCT position from #__modules ORDER BY position";
		$database->setQuery( $sql );
		$positions = $database->loadResultArray();
		foreach ($positions as $position) { $text .= "$position <br />"; }
		return $text;
	}
  function setTextBody($textpart) {
  	$iwhich = strtolower($textpart);
  	switch ($iwhich) {
  		case "introtext": $textbody = "a.introtext"; break;
  		case "fulltext": $textbody = "a.fulltext"; break;
  		default: $textbody = "concat(a.introtext, a.fulltext)";
  	}
  	return $textbody;
  }
  function setTranslatedText($row, $textpart ) {
    	switch ($textpart) {
  		case 'introtext':
  		$text=$row['introtext'];
  		break;
  		case 'fulltext':
  		$text=$row['fulltext'];
  		break;
  		default:
  		case 'all':
  		$text=$row['introtext'].$row['fulltext'];
  		break;
  	}
  return $text;
  }
//  function isNotAuthor(&$row) { return (!preg_match_all( "/{(".$this->mebot.")\sauthor=*(.*?)}/i", $row->text, $dummy, PREG_SET_ORDER ) ); }
  function isNotAuthor($textin) { return (!preg_match_all( "/{(".$this->mebot.")\sauthor=*(.*?)}/i", $textin, $dummy, PREG_SET_ORDER ) ); }
  function isMe($textin) { if ( preg_match_all( "/{(".$this->mebot.")\s*(.*?)}/i", $textin, $retMatchArray, PREG_SET_ORDER ) ) return $retMatchArray; }
  function getRows($sql) {
    global $database;
    $database->setQuery($sql);
    return $database->loadObjectList(); 
  }
  function pageNav($rows, $start, $per_page, $clsprefix) {
    global $option,$Itemid,$id;
    if (preg_match("/com_comprofiler/i", $option))  
      $thisurl="index.php?option=com_comprofiler&Itemid=$Itemid&task=userProfile&user=".$rows[0]->created_by;
    else $thisurl="index.php?option=com_content&Itemid=$Itemid&id=$id&task=view";
    require_once($this->mepath.'mospaginate.class.php');
    $mmpage = new mosPaginate($thisurl);
    return $mmpage->pageNav($rows, $start, $per_page, $clsprefix);
  }
	function debug($itext,$iarray,$show="show") {
		$buff = "<pre><p align='left'>$itext => ".print_r($iarray,true)."</p></pre>";
		if (strtolower($show)<>"show") $buff = "<!-- $buff -->";
    return $buff;
  }
  function mosq($pname) {
  	global $mosConfig_absolute_path, $mosConfig_live_site, $database;
  	global $gid;
  	$mosqfunc="components/com_reporter/reporter.functions.php";
  	if (!file_exists($mosqfunc)) return;
  	require_once($mosqfunc);
  	// require_once("components/com_reporter/reporter.functions.php");
  	$aparam = array();
  //	$aparam = explode(",", $pname);
    $aparam = $this->getParams($pname);  
  	$queryID = $aparam[0];
  	$code="";
  	ob_start();
  	$Query = new ReporterLogic($database, $gid); 
  	$Query->logic = new mosReporterQuery($Query->database);
  	$Query->logic->load($queryID);
  	$Query->loadProcessor();
  	$Query->processLogic('','','');
  	$Query->displayLogic('', '');
  	$buf = ob_get_contents();
  	ob_end_clean();
  	$code .= $buf;
  	return  $code;
  }
  function moscom($pname) {
  	$id	= intval( mosGetParam( $_REQUEST, 'id', 0 ) );
    global $moscom;
    include_once($GLOBALS['mosConfig_absolute_path'] .'/administrator/components/com_comments/moscom.main.class.php');
    if (!isset($moscom)) $moscom = new MoscomMain();
  	return $moscom->mcMain($id, "mosmodule");
  }
  function mosprayer($pname) {
  	$id	= intval( mosGetParam( $_REQUEST, 'id', 0 ) );
    global $mosprayer;
    include_once($GLOBALS['mosConfig_absolute_path'] .'/administrator/components/com_mosprayer/mosprayer.main.class.php');
    if (!isset($mosprayer)) $mosprayer = new MosprayerMain();
  	return $mosprayer->mcMain($id, "mosmodule");
  }  
  function gigcalendar($pname) {
  	global $mosConfig_live_site;
   	$aparam = array();
  //	$aparam = explode(",", $pname);
    $aparam = $this->getParams($pname);  
  	$gigID = $aparam[0];
  	$url=$mosConfig_live_site."/index2.php?option=com_gigcal&task=details&gigcal_gigs_id=".$gigID;
      return $this->grabPage($url);
  }
  function readMoreURL( $URL, $aReadMore ) {
  	(isset($aReadMore[0])) ? $readMore = $aReadMore[0] : $readMore="";
  	(isset($aReadMore[1])) ? $readMoreText = $aReadMore[1] : $readMoreText="Read more...";
  	($readMore) 
  	? $readMoreLink='&nbsp;&nbsp;<a href="'.$URL.'" class="readon">'.$readMoreText.'</a>'
  	: $readMoreLink="";
  	return $readMoreLink;
  }
  function readMore( $articleid, $aReadMore ) {
  	global $mosConfig_live_site;  
  	(isset($aReadMore[0])) ? $readMore = $aReadMore[0] : $readMore="";
  	(isset($aReadMore[1])) ? $readMoreText = $aReadMore[1] : $readMoreText="Read more...";
    $url = $this->unSefURL($mosConfig_live_site.'/index.php?option=com_content&amp;task=view&amp;id='.$articleid.$this->getItemid($articleid));
  	($readMore) 
    ? $readMoreLink=$this->readMoreURL($url, $aReadMore )
    : $readMoreLink="";
  	return $readMoreLink;
  }
  function unSefURL($iURL) {
    (function_exists("sefRelToAbs")) ? $url = sefRelToAbs($iURL) : $url = $iURL;
    return $url;
  }  
  function getItemid($articleid) { 
    $itemid = $this->mainframe->getItemid( $articleid, 0, 0 ); 
    (!empty($itemid)) ? $item = "&amp;Itemid=".$itemid : $item = "";
    return $item;
  } 
  function getWordsFromText($text, $limit) {
    if (strlen($text) > $limit) {
  	  $words = str_word_count($text, 2);	// get words into array
  	  $pos = array_keys($words);
  	  $text = substr($text, 0, $pos[$limit]);
    }
    return $text;
  }  
  function listModules() {
  $modules=$this->getModules();
  $positions=$this->getPositions();
return "<h3>MosModule usages</h3>
<p />{mosmodule list} - Display a list of modules and block positions
<br />{mosmodule position} - Show any position like user1,user2,left,right,etc
<br />{mosmodule random=SectionName}
<br />{mosmodule articleid=ContentID}
<br />{mosmodule readmore=ContentID}
<br />{mosmodule author=Username}
<br />{mosmodule codeid=ContentI}
<br />{mosmodule snippet=ContentID}
<br />{mosmodule inc=filename.php,p1,p2...}
<br />{mosmodule phpinc=filename.php,p1,p2...}
<br />{mosmodule video=URLToVideo,width,height}
<br />{mosmodule flash=PathTo/VideoFile.swf,width,heigth}
<br />{mosmodule videoegg=URLToVideo,width,heigth}
<br />{mosmodule textsizer=IDTag}
<br />{mosmodule module=Search,Poll}
<br />{mosmodule rssfeed=http://support.ongetc.com/index.php?option=com_rss&feed=RSS2.0&no_html=1}
<br />{mosmodule grabpage=http://ongetc.com/index2.php}
<br />{mosmodule wrapper=http://ongetc.com/index2.php,width,height,scrolling,align}
<br />{mosmodule mosqid=MosQ_QueryId}
<br />{mosmodule gigid=GigCalendar_GigId}
<br />{mosmodule moscom}
<br />{mosmodule reference=ContentID}
<p />Need more detail: see readme.txt
<table align='center' cellpadding='4' border='0'>
<tr><th>Available Modules</th><th>Available Positions</th></tr>
<tr>
<td valign='top'>$modules</td><td valign='top'>$positions</td>
</tr>
</table>
";
  }
}  // end class
?>