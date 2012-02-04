<?php
/**
* @version 
* @package MosModule - COAddOns for Mambo & Jommla - Mambot
* @copyright (C) 2008 ongetc.com
* @info ongetc@ongetc.com http://ongetc.com
* @license GNU/GPL http:/ongetc.com/gpl.html.
*/ 
defined( '_VALID_MOS' ) or die( 'Direct Access to this location is not allowed.' );

global $mmcls;
$mmbot="mosmodule";
$mmcls = new mosModuleBotClass($mmbot);

class mosModuleBotClass{
var $mebot;
var $mepath;
var $meini;

  function mosModuleBotClass($mebot) {
    global $mosConfig_lang;
    $this->lang=strtolower($mosConfig_lang);
  	$this->urlLang=strtolower(mosGetParam( $_REQUEST, 'lang', "" ));
    $this->mebot=$mebot;
    $this->mepath=$this->getBot().'/content/mosmodule/';
    require_once($GLOBALS['mosConfig_absolute_path']. '/'. $this->mepath.'mosmodule.class.php');
    $this->mm = new mosModuleClass($this->mebot,$this->mepath);
  }
	function readFile($fName) {
		$contents="";
		if($handle = @fopen($fName, 'r')){
			$contents = fread($handle, filesize($fName));
			fclose($handle);
		}
		return $contents;
	}  
	function readFile2Array($fName) {
		return explode("\n",$this->readFile($fName));
	}
// entrance from api or CB hack
  function botMe( $textin) {
  	global $database, $mainframe,$foldername;
  	$bot_params=$this->getParam();
  	$foldername = $bot_params->def('foldername');
  	$aliasFile = $bot_params->def('aliasfile');
    $this->meini = $this->getIni($aliasFile);  
  
    if (!$bots=$this->mm->isMe($textin) ) return $textin;
    $text = preg_split( "/{(".$this->mm->mebot.")\s*(.*?)}/i", $textin );
    $textout = $text[0];  // split out text only no mosmodule
    //process the bots
    $n = count($bots);
    for($i=0; $i<=$n-1; $i++) {
      $textout .= $this->processBot($bots[$i][0]);  // process mosmodule
      $textout .= $text[$i+1];  // add back text
    }
    return $textout;  // return row with processed text
  }
  function getMMParm( $iargs ) {
  	if (count($iargs)>1) $pname = $iargs[1]; else $pname = "";
    return $pname;
  }
function getTask($bot) {	
	global $database;
  	// define positions for module blocks
	$sql = "SELECT DISTINCT position from #__modules ORDER BY position";
	$database->setQuery( $sql );
	$positions = $database->loadResultArray();

// may be useless code  
//  $options = explode('=', $bot[0][2]);
  $options = explode('=', $bot);  
	if (count($options)>1) $option = strtolower( $options[0] ? $options[0] : $options[1] );
	else $option = strtolower( $options[0] );
// may be useless code    
	$task = in_array($option, $positions) ? 'block' : $option;
	$task = $option=='list' ? $option : $task;
  return $task;
}
  function getPname($bot) { 
  //  $args = $bot[0][2];	// module=module title or module block position or list
    $args = $bot;	// module=module title or module block position or list  
  	$args = explode('=', $args,2);
  	if (count($args)>1) $pname = $args[1]; else $pname = "";
    return $this->mm->fixParams($pname);
  }
  function getIni($aliasFile="") {
    $all = array();
    (empty($aliasFile) or (!file_exists($aliasFile)))
    ? $tmp = $this->readFile2Array($GLOBALS['mosConfig_absolute_path']. '/'. $this->mepath."mosmodule.ini")
    : $tmp = $this->readFile2Array($aliasFile);
    foreach ($tmp as $one) {
      if (!empty($one) and (stristr($one, '~'))) {
        $xtmp=explode('~', $one); 
        $alias=$xtmp[0]; 
        $all[$alias]['task']=$this->getTask($xtmp[1]);
        $all[$alias]['pname']=$this->getPname($xtmp[1]);          
      }
    }  
    return $all;
  }
  function getAlias($alias) {
    (!empty($this->meini[$alias])) ? $aliasArray = $this->meini[$alias] : $aliasArray = array();
    return $aliasArray;
  }  
  function mergeParam($alias, $pname) {
    return preg_replace("/%s/is", $pname, $alias, 1); // one param at a time
  }  
  function fixAlias($alias, $pname) {
    $pnameArray = $this->mm->getParams($pname); 
    $oneAlias = $this->mm->fixParams($alias['pname']);
    foreach ($pnameArray as $one) {
      $oneAlias = $this->mergeParam($oneAlias, $one); 
    }
    return preg_replace("/%s/is", "", $oneAlias); // null all left over of %s
//    return $oneAlias;   
  }
  
function processBot( $thisbot ) {
	$pname="";    
	$text = '';
	preg_match_all( "/{(".$this->mebot.")\s*(.*?)}/i", $thisbot, $bot, PREG_SET_ORDER ); // split out the arguments
  $task = $this->getTask($bot[0][2]);	
  $pname = $this->getPname($bot[0][2]);	
  $aliasArray = $this->getAlias($task);  
  if (!empty($aliasArray['pname'])) {
    $pname = $this->fixAlias($aliasArray,$pname); 
    $task = $aliasArray['task']; // get task from aliasArray
  }
// try to fix &amp; problem when use wysiwyg editor
//	$pname=$this->getMMParm($args);
	switch ($task) {
		case 'block':
//			$text = $this->docapture($task,$option);          
//			$text = $this->docapture($task,$pname); break;
		case 'textsizer':
		case 'videoegg':
		case 'video':
		case 'flash':
		case 'phpinc':
		case 'inc':
		case 'snippet':
		case 'wrapper':
		case 'grabpage':
		case 'rssfeed':
		case 'mosqid':
		case 'moscom':
		case 'mosprayer':		
		case 'gigid':
			$text = $this->docapture($task,$pname); break;
		case 'module':
			$pname=$this->mm->getmodulename( $pname );
			$text = $this->docapture($task,$pname); break;
		case 'author':
			$text = $this->loadArticlesByAuthor( $pname); break;
		case 'readmore':
			$text = $this->loadArticleWithReadMore($pname); break;
		case 'ref':
			$text = $this->loadReference($pname); break;      
		case 'articleid':
			$text = $this->loadarticle($pname); break;
		case 'codeid':
			$text = $this->loadcode( $pname); break;
		case 'section':
		case 'random':
			$text = $this->loadsection( $pname); break;
		case 'list':
		default:
//			$text = $this->mm->listModules( $positions ); break;
			$text = $this->mm->listModules(); break;
	}
	return $text;
}

function docapture($task,$pname) {
	global $mosmodule_var, $foldername;
	ob_start();
	switch ($task) {
		case 'inc':
		case 'phpinc':
			$foldername .= "/";
			$mosmodule_var = array();
//			$mosmodule_var = explode(",", $pname);
      $mosmodule_var = $this->mm->getParams($pname);
			if (file_exists($foldername . $mosmodule_var[0])) {
				$php_file = $foldername . array_shift($mosmodule_var);
				include($php_file);
			}
		break;
		case 'snippet':
			$output = $this->loadarticle($pname);  
			eval($output);
		break;
		case 'module':
			$this->loadModule( $pname );
		break;
		case 'block':
			$count = 	mosCountModules( $pname );
			if ($count) { mosLoadModules ( $pname ); }
		break;
		case 'textsizer':
			echo $this->mm->textsizer($pname);
		break;
		case 'video':
		case 'videoegg':
		case 'flash':
			echo $this->mm->doVideo($task,$pname);
		break;
		case 'grabpage':
		case 'rssfeed':
			echo $this->mm->grabPage($pname);
		break;
		case 'wrapper':
			echo $this->mm->wrapper($pname);
		break;
		case 'mosqid':
			echo $this->mm->mosq($pname);
		break;
		case 'moscom':
			echo $this->mm->moscom($pname);
		break;
		case 'mosprayer':
			echo $this->mm->mosprayer($pname);
		break;		
		case 'gigid':
			echo $this->mm->gigcalendar($pname);
		break;
		default: 
	}
	$output = ob_get_contents();
	ob_end_clean();
	return $output;
}

  function loadcode( $articleid) {
    return $this->code_replacer($this->loadarticle($articleid));
  }
  
function getParam() {
	global $database;
	$query = "SELECT id FROM ".$this->getBotTable()." WHERE element = '".$this->mebot."' AND folder = 'content'";
	$database->setQuery( $query );
	$mosmodule_id = $database->loadResult();
	$mambot = new mosMambot( $database );
	$mambot->load( $mosmodule_id );
	$bot_params =& new mosParameters( $mambot->params );
	return $bot_params;
}

  function doBot(&$row,$iwhich) {
//    if ( ($this->mm->isMe($row->text)) and ($this->mm->isNotAuthor($row)) ) $row->text=$this->botMe($row->text);
    if ( ($this->mm->isMe($row->text)) and ($this->mm->isNotAuthor($row->text)) ) $row->text=$this->botMe($row->text);
    $this->mm->doImageBot($row,$iwhich); // process mosimage first
    $row->text=preg_replace("/{(mospagebreak)}/i", "", $row->text); // get rid of page break in author list and pagination
    return $row->text;
  }

	function loadArticleFromContent($articleid, $textpart, $translate="", $bypass="" ) {
		$text="";
    ($bypass=="") ? $state = " and a.state=1" : $state = "";
	    $textbody = $this->mm->setTextBody($textpart);
		$sql = "SELECT a.*, $textbody as text".
//		  " FROM  #__content AS a WHERE a.state=1 and a.id = '$articleid'";
		  " FROM  #__content AS a WHERE a.id = '$articleid'".$state;      
		if ($rows=$this->mm->getRows($sql)) {
			$translateText = $this->loadArticleFromTranslatedContent($articleid, $textpart, $translate);
			if (!empty($translateText)) $rows[0]->text = $translateText;	// inject translated text
			$text = $this->doBot($rows[0],$textpart); // since there is only 1 row
		}
		return $text;
	}

  function loadArticleWithReadMore($pname) {
	$articleText = $translateText = $readMoreLink = "";
	$textpart="all";
	$defaultNumOfWords=80;
//    $aparam = explode(",", $pname);
    $aparam = $this->mm->getParams($pname);    
    $articleid = $aparam[0];
    if (count($aparam)>1) {  
//      $numOfWords = $defaultNumOfWords;
      if (!empty($aparam[1])) {  
        $numOfWords = $aparam[1];
      } 
    }
    
    (count($aparam)>2) ? $aReadMore = explode("=", $aparam[2]) : $aReadMore = array("readmore");
    (count($aparam)>3) ? $translate = $aparam[3] : $translate = "";
    (count($aparam)>4) ? $bypass = $aparam[4] : $bypass = "";  

    if (empty($numOfWords)) {  
       $numOfWords = $defaultNumOfWords;
    }

	$articleText = $this->loadArticleFromContent($articleid, $textpart, $translate, $bypass );
	if (is_numeric($numOfWords)) {
//    $articleText = $this->loadArticleFromContent($articleid, "all", $translate, $bypass );
    if (count(str_word_count($articleText,2))>$numOfWords) {
      $articleText = $this->mm->getWordsFromText($articleText,$numOfWords);
    }
	} else {
    $articleText = $this->loadArticleFromContent($articleid, "introtext", $translate, $bypass );
  }
	$readMoreLink=$this->mm->readMore($articleid, $aReadMore);
  return $articleText.$readMoreLink;   
  }     
  function loadarticle($pname) {
    $articleText = $translateText = $readMoreLink = "";
//    $aparam = explode(",", $pname);
    $aparam = $this->mm->getParams($pname);  
    $articleid = $aparam[0];
    (count($aparam)>1) ? $textpart = $aparam[1] : $textpart = "all";
    (count($aparam)>2) ? $aReadMore = explode("=", $aparam[2]) : $aReadMore = array();
    (count($aparam)>3) ? $translate = $aparam[3] : $translate = "";
    (count($aparam)>4) ? $bypass = $aparam[4] : $bypass = ""; 
  	$articleText = $this->loadArticleFromContent($articleid, $textpart, $translate, $bypass );
    ($textpart == 'introtext') 
  	? $readMoreLink=$this->mm->readMore($articleid, $aReadMore) 
  	: $readMoreLink="";
    return $articleText.$readMoreLink;   
  }               
  
function loadArticleFromTranslatedContent($articleid, $textpart="all", $translate="") {
	$text="";
    $textbody = $this->mm->setTextBody($textpart);
	switch (strtolower($translate)) {
	case 'joomfish':
		$row=$this->jfTranslate2Row($articleid,$textpart);
		break;
	case 'nokkaew':
		$row=$this->nokTranslate2Row($articleid,$textpart);
		break;
	}
	if (isset($row['text'])) $text = $row['text'];
	return $text;
}

  function loadReference($pname) {
    $articleTitle = $readMoreLink = "";
    $aparam = $this->mm->getParams($pname);  
    $articleidOrURL = $aparam[0];
    (count($aparam)>1) ? $bypass = $aparam[1] : $bypass = "";      
    if (is_numeric($articleidOrURL)) {
      $articleTitle = $this->loadArticleTitle($articleidOrURL, $bypass );  
      (count($aparam)>2) ? $aReadMore = explode("=", $aparam[2]) : $aReadMore = array("readmore",$articleTitle);
      $readMoreLink=$this->mm->readMore($articleidOrURL, $aReadMore);
    } else {
      (count($aparam)>2) ? $aReadMore = explode("=", $aparam[2]) : $aReadMore = array("readmore",$articleidOrURL);
      $readMoreLink=$this->mm->readMoreURL($articleidOrURL, $aReadMore);    
    }
    return "Reference: ".$readMoreLink;   
  }            
  
  function loadArticleTitle($articleid, $bypass="") {
		$text="";  
    ($bypass=="") ? $state = " and a.state=1" : $state = "";
		$sql = "SELECT a.* FROM  #__content AS a WHERE a.id = '$articleid'".$state;      
		if ($rows=$this->mm->getRows($sql)) {
      $text = $rows[0]->title;
		}
		return $text;
	}
  
function getTranslate2Row($textpart,$sql,$lang) {
	$a=$buff=array('id'=>'','title'=>'','introtext'=>'','fulltext'=>'','all'=>'','langid'=>'','lang'=>'','text'=>'');
	$rows=$this->mm->getRows($sql);
	if ($rows) {
		foreach ($rows as $row) {
			$a['id']=$row->reference_id;
			$a['lang']=$row->$lang;
			$a['langid']=$row->language_id;
			if ($row->reference_field=="title") $a['title']=$row->value;
			if (($row->reference_field=="introtext") && $row->value<>"") $a['introtext']=$row->value;
			if (($row->reference_field=="fulltext") && $row->value<>"")	$a['fulltext']=$row->value;
			$a['text']=$this->mm->setTranslatedText($a, $textpart );
		}
	}
	return $a;
}

function jfTranslate2Row($aid,$textpart) {
	$a=$buff=array('id'=>'','title'=>'','introtext'=>'','fulltext'=>'','all'=>'','langid'=>'','lang'=>'','text'=>'');
//	$sql = 'SELECT a.id, language_id, reference_id, reference_field, value, name,shortcode FROM `#__jf_content` as a, #__languages as b where a.reference_table="content" and b.id=a.language_id and reference_id='.$aid.' and shortcode="'.$this->lang.'" order by id';
	$sql = 'SELECT a.id, language_id, reference_id, reference_field, value, name,shortcode FROM `#__jf_content` as a, #__languages as b where a.reference_table="content" and b.id=a.language_id and reference_id='.$aid.' and code="'.$this->lang.'" order by id';

	$a=$this->getTranslate2Row($textpart,$sql,"shortcode");
	return $a;
}
	
function nokTranslate2Row($aid,$textpart) {
	$a=$buff=array('id'=>'','title'=>'','introtext'=>'','fulltext'=>'','all'=>'','langid'=>'','lang'=>'','text'=>'');

	$sql = 'SELECT a.id, language_id, reference_id, reference_field, value, name,mambo FROM `#__nok_content` as a, #__nok_language as b where a.reference_table="content" and b.id=a.language_id and reference_id='.$aid.' and name="'.$this->lang.'" order by id';

	$a=$this->getTranslate2Row($textpart,$sql,"mambo");
	return $a;
}

  function loadArticlesByAuthor( $pname) {
    $aparam = array();
//    $aparam = explode(",", $pname);
    $aparam = $this->mm->getParams($pname);      
    $author = $aparam[0];
    (count($aparam)>1) ? $per_page = $aparam[1] : $per_page = "5";
    (count($aparam)>2) ? $textpart = $aparam[2] : $textpart = "all";
    (count($aparam)>3) ? $nopage = $aparam[3] : $nopage = "page";
    $textbody = $this->mm->setTextBody($textpart);
    $sql = "SELECT a.*, $textbody as text, b.username, b.name".
      " FROM  #__content AS a, #__users as b".
      " WHERE a.state=1 and a.created_by=b.id and b.username = '$author'".
      " order by a.created desc";
    if (!$rows=$this->mm->getRows($sql)) return; // no records
    $clsprefix="mm";
    $start = mosGetParam( $_REQUEST, 'start',1 ); // default to first page
    if (!$per_page) $per_page=5;
    $pagebody=$this->getAuthorArticles($rows,$start,$per_page,$textpart,$clsprefix);

    if ($nopage=="nopage") $pagenav="";
    else $pagenav = $this->mm->pageNav($rows, $start, $per_page, $clsprefix);
	
    $pageout = '<div id="'.$clsprefix.'BODY">'.$pagebody.$pagenav.'</div>';
    $mcsite=$GLOBALS['mosConfig_live_site'].'/'.$this->mepath;
    $css='<link rel="StyleSheet" href="'.$mcsite.'mosmodule.css" type="text/css" />';
	
    $return="$css<br /><br />$pageout";   
	return $return;
  }

function getAuthorArticles($rows,$start,$per_page,$textpart,$clsprefix) {
	if (!isset($rows[2])) return "";	// nothing to page
    $pagebody="";
    for ($x=$start-1;$x<($start-1+$per_page);$x++) { 
      if ($rows[$x]) {
        if ($x % 2) { $mmclass=$clsprefix.'EVEN'; } else { $mmclass=$clsprefix.'ODD'; }
        $pagebody .= '<div class="contentheading">'.$rows[$x]->title."</div><br />".$this->mm->createDate($rows[$x])
          .'<div class="'.$mmclass.'Text">	'.
          $this->doBot($rows[$x],$textpart)
          .'</div>';
      }
    } 
    return $pagebody;
}

// load a random article from section name
function loadsection( $pname) {
	$aparam = array();
//	$aparam = explode(",", $pname);
  $aparam = $this->mm->getParams($pname);    
	$sectionname = $aparam[0];
	(count($aparam)>1) ? $yestitle = $aparam[1] : $yestitle = "";
	(count($aparam)>2) ? $textpart = $aparam[2] : $textpart = "all";
	$textbody = $this->mm->setTextBody($textpart);
	$text="";
	$sql = "SELECT b.Name, a.*, $textbody as text".
		' FROM  #__content AS a, #__sections AS b'.
		' WHERE b.id=a.sectionid and a.state=1 and b.title LIKE "'.$sectionname.'%"'.
		' ORDER BY RAND() LIMIT 1';
	if ($rows=$this->mm->getRows($sql)) {
		foreach ($rows as $row) {
			$this->doBot($row,$textpart);  // need more testing
			if ($yestitle) $text .= "<b>$row->title</b>";
			$text .= "<br />$row->text<br />";
		}              
	}
	return $text;   
} 
  
function code_replacer($text ) {
    $html_entities_match = array("#<#", "#>#");
    $html_entities_replace = array("&lt;", "&gt;");
    $text = preg_replace($html_entities_match, $html_entities_replace, $text );
    // Replace 2 spaces with "&nbsp; " so non-tabbed code indents without making huge long lines.
    $text = str_replace("  ", "&nbsp; ", $text);
    // now Replace 2 spaces with " &nbsp;" to catch odd #s of spaces.
    $text = str_replace("  ", " &nbsp;", $text);
    // Replace tabs with "&nbsp; &nbsp;" so tabbed code indents sorta right without making huge long lines.
    $text = str_replace("\t", "&nbsp; &nbsp;", $text);
    $text = str_replace('&lt;', '<', $text);
    $text = str_replace('&gt;', '>', $text);
    $text = highlight_string( $text, 1 );
    $text = str_replace('&amp;nbsp;', '&nbsp;', $text);
    $text = str_replace('&lt;br/&gt;', '<br />', $text);
    $text = str_replace('<font color="#007700">&lt;</font><font color="#0000BB">br</font><font color="#007700">/&gt;','<br />', $text);
    $text = str_replace('&amp;</font><font color="#0000CC">nbsp</font><font color="#006600">;', '&nbsp;', $text);
    $text = str_replace('&amp;</font><font color="#0000BB">nbsp</font><font color="#007700">;', '&nbsp;', $text);
    $text = str_replace('<font color="#007700">;&lt;</font><font color="#0000BB">br</font><font color="#007700">/&gt;','<br />', $text);
    return $text;
}

function loadModule( $thismodule ) {
	global $database, $mainframe, $my, $mosConfig_absolute_path, $Itemid, $style;
	//	if (!$this->isJ15()) require_once( "$mosConfig_absolute_path/includes/frontend.html.php" );
	$sql = 'SELECT id, title, module, position, content, showtitle, params'.
	' FROM #__modules WHERE access <= '.$my->gid. ' AND title like "'.$thismodule.'%" LIMIT 1';
	$database->setQuery( $sql );
	$module = $database->loadObjectList();
	
	if($database->getErrorNum()) {
		echo "MA ".$database->stderr(true);
		return;
	}

	if ( count($module) ) {
		$module = $module[0];
		$params =& new mosParameters( $module->params );
		if (strtolower($module->module)=="mod_mosmodule") return;	// prevent possible when call itself
		if (!$this->isJ15()) {
			require_once( "$mosConfig_absolute_path/includes/frontend.html.php" );
			if ((substr("$module->module",0,4))=="mod_") { modules_html::module2( $module, $params, $Itemid, $style=-1 ); }
			else { modules_html::module( $module, $params, $Itemid, $style=-1 ); }
		} else {
			if (!isset($module->user)) 	$module->user=0;	// need this to prevent warning when load module
			$document	= &JFactory::getDocument();
			$renderer	= $document->loadRenderer('module');
			$params		= array('style'=>-1);	// raw html code
			echo $renderer->render($module, $params);
		}
	}
}

function isJ15() {
	( (defined('JVERSION')) and 
		($this->is1stNewer2nd(substr(JVERSION,0,3),'1.0') ) ) ? $ret=true : $ret=false;
	return $ret;
}
function is1stNewer2nd($first,$second) {
   (version_compare($first,$second)=="1") ? $newer=true : $newer=false;
   return $newer;
}
function getBotTable() { return "#__".$this->getBot(); }

function getBot() {
	($this->isJ15()) ? $ret="plugins" : $ret="mambots";
	return $ret;
}

// mosmodule entrance from mambot, not use any more
function do_mosmodule(&$row) { return $this->botMe($row->text); }
}  // end class
?>