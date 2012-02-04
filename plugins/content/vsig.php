<?php
/*
// "Simple Image Gallery" (in content items) Plugin for Joomla 1.5 - Version 1.2.1
// License: http://www.gnu.org/copyleft/gpl.html
// Authors: Fotis Evangelou - George Chouliaras
// Copyright (c) 2008 JoomlaWorks.gr - http://www.joomlaworks.gr
// Project page at http://www.joomlaworks.gr - Demos at http://demo.joomlaworks.gr
// ***Last update: January 6th, 2007***

// Modified by Andreas Berger - http://www.bretteleben.de
// Plugin Name changed to "Very Simple Image Gallery" - Version 1.5.5
// Lightbox removed, large image added, further modifications.
// Modifications and additions Copyright (c) 2010 Andreas Berger - andreas_berger@bretteleben.de
// License: http://www.gnu.org/copyleft/gpl.html
// Project page and Demo at http://www.bretteleben.de
// ***Last update: 2010-02-25***
*/

defined( '_JEXEC' ) or die( 'Restricted access' );

// Import library dependencies
jimport('joomla.event.plugin');

class plgContentVsig extends JPlugin
{
	//Constructor
	function plgContentVsig( &$subject )
	{
		parent::__construct( $subject );
		// load plugin parameters
		$this->_plugin = JPluginHelper::getPlugin( 'content', 'vsig' );
		$this->_params = new JParameter( $this->_plugin->params );
	}

	function onPrepareContent(&$row, &$params, $limitstart) {

		// just startup
		global $mainframe;

		// checking
		if ( !preg_match("#{vsig}(.*?){/vsig}#s", $row->text) ) {
			return;
		}

		// j!1.5 paths
		$path_absolute = 	JPATH_SITE;
		$path_site = 			JURI :: base();
		if(substr($path_site, -1)=="/") $path_site = substr($path_site, 0, -1);
		$path_imgroot = 	'/images/stories/'; 							// default image root folder
		$path_ctrls = 		'/images/stories/vsig_buttons/'; 	// button folder
		$path_plugin = 		'/plugins/content/plugin_vsig/'; 	// path to plugin folder
		$folder_thumbs = 	'vsig_thumbs'; 										// thumbnail subfolder

		// import helper
    JLoader::import( 'vsighelper', dirname( __FILE__ ).'/plugin_vsig' );

//captions
		if (preg_match_all("#{vsig_c}(.*?){/vsig_c}#s", $row->text, $matches, PREG_PATTERN_ORDER) > 0) {
			$document =& JFactory::getDocument();
			foreach ($matches[0] as $match) {
				$_raw_cap_ = preg_replace("/{.+?}/", "", $match);
				$_raw_cap_exp_ = explode("|",$_raw_cap_);
				$cap1=($_raw_cap_exp_[1]&&trim($_raw_cap_exp_[1])!="")?(trim(plgContentVsigHelper::beStrtolower($_raw_cap_exp_[1]))):("CAPDEFAULT");
				$cap2=($_raw_cap_exp_[2]&&trim($_raw_cap_exp_[2])!="")?(trim($_raw_cap_exp_[2])):("");
				$cap3=($_raw_cap_exp_[3]&&trim($_raw_cap_exp_[3])!="")?(trim($_raw_cap_exp_[3])):("");
				$caparray="cap_ar".$_raw_cap_exp_[0];
				if(!isset($$caparray)){$$caparray=array();};
				${$caparray}[$cap1]=array($cap2,$cap3);
				//remove the call
				$row->text = plgContentVsigHelper::beReplaceCall("{vsig_c}".$_raw_cap_."{/vsig_c}",'', $row->text);
			}
		}
//captions

//links
		if (preg_match_all("#{vsig_l}(.*?){/vsig_l}#s", $row->text, $matches, PREG_PATTERN_ORDER) > 0) {
			$document =& JFactory::getDocument();
			foreach ($matches[0] as $match) {
				$_raw_link_ = preg_replace("/{.+?}/", "", $match);
				$_raw_link_exp_ = explode("|",$_raw_link_);
				$_link1=($_raw_link_exp_[1]&&trim($_raw_link_exp_[1])!="")?(trim(plgContentVsigHelper::beStrtolower($_raw_link_exp_[1]))):("LINKDEFAULT");
				$_link2=($_raw_link_exp_[2]&&trim($_raw_link_exp_[2])!="")?(trim($_raw_link_exp_[2])):("");
				$_link3=($_raw_link_exp_[3]&&trim($_raw_link_exp_[3])!="")?(trim($_raw_link_exp_[3])):($_link2);
				$_link4=($_raw_link_exp_[4]&&trim($_raw_link_exp_[4])!="")?(trim($_raw_link_exp_[4])):("_self");
				$_linkarray="_linkar".$_raw_link_exp_[0];
				if(!isset($$_linkarray)){$$_linkarray=array();};
				${$_linkarray}[$_link1]=array($_link2,$_link3,$_link4);
				//remove the call
				$row->text = plgContentVsigHelper::beReplaceCall("{vsig_l}".$_raw_link_."{/vsig_l}",'', $row->text);
			}
		}
//links

//images
		if (preg_match_all("#{vsig}(.*?){/vsig}#s", $row->text, $matches, PREG_PATTERN_ORDER) > 0) {
			$document =& JFactory::getDocument();
			$sigcount = -1;
			$_target=JRequest::getURI();
			$vsig_cssadd=""; //collect css for page head
			$vsig_script=""; //collect javascript for page head
			foreach ($matches[0] as $match) {
				$sigcount++;
				//split string and check for overrides
				$vsig_code = preg_replace("/{.+?}/", "", $match);
				$vsig_raw = explode ("|", $vsig_code);
				$_images_dir_ = trim($vsig_raw[0]);
				if(substr($_images_dir_, -1)!="/"&&$_images_dir_!=""){$_images_dir_=$_images_dir_."/";} //add trailing slash
				if(substr($_images_dir_,0,1)=="/"&&$_images_dir_!=""){$_images_dir_=substr($_images_dir_,1,strlen($_images_dir_)-2);} //remove leading slash
				//process overrides if any
				unset ($vsig_overrides);
				$vsig_overrides=array();
				if(count($vsig_raw)>=2){ //there are parameteroverrides
					for($i=1;$i<count($vsig_raw);$i++){
						$overr_temp=explode("=",$vsig_raw[$i]);
						if(count($overr_temp)>=2){
							$vsig_overrides[strtolower(trim($overr_temp[0]))]=trim($overr_temp[1]);
						}
					}
				}

				unset($images);
				$noimage = 0;
				//read and process the param for the image root
				$path_imgroot	= trim($this->_params->get('imagepath', $path_imgroot));
				if(substr($path_imgroot, -1)!="/"){$path_imgroot=$path_imgroot."/";} //add trailing slash
				if(substr($path_imgroot,0,1)!="/"){$path_imgroot="/".$path_imgroot;} //add leading slash
				// read directory and check for images
				if ($dh = @opendir($path_absolute.$path_imgroot.$_images_dir_)) {
					while (($f = readdir($dh)) !== false) {
						if((substr(strtolower($f),-3) == 'jpg') || (substr(strtolower($f),-3) == 'gif') || (substr(strtolower($f),-3) == 'png')) {
							$noimage++;
							$images[] = array('filename' => $f, 'flastmod' => filemtime($path_absolute.$path_imgroot.$_images_dir_.$f)); 
						}
					}
					closedir($dh);
					//damn, found the folder but it is empty
					$html2="<br />Very Simple Image Gallery:<br />No images found in folder ".$path_absolute.$path_imgroot.$_images_dir_."<br />";
				}
				else {
					//you promised me a folder - where is it?
					$html2="<br />Very Simple Image Gallery:<br />Could not find folder ".$path_absolute.$path_imgroot.$_images_dir_."<br />";
				}

				if($noimage) {
					//read in parameters and overrides
					$_width_ 			= (array_key_exists("twidth",$vsig_overrides)&&$vsig_overrides['twidth']!="")?($vsig_overrides['twidth']):($this->_params->get('th_width', 120));	//thumbs
					$_height_ 		= (array_key_exists("theight",$vsig_overrides)&&$vsig_overrides['theight']!="")?($vsig_overrides['theight']):($this->_params->get('th_height', 90));	//thumbs
					$_quality_ 		= (array_key_exists("quality",$vsig_overrides)&&$vsig_overrides['quality']!="")?($vsig_overrides['quality']):($this->_params->get('th_quality', 80));	//thumbs
					$_space_ 			= (array_key_exists("space",$vsig_overrides)&&$vsig_overrides['space']!="")?($vsig_overrides['space']):($this->_params->get('th_space', 5));		//thumbs
					$_imwidth_ 		= (array_key_exists("width",$vsig_overrides)&&$vsig_overrides['width']!="")?($vsig_overrides['width']):($this->_params->get('im_width', 90));		//image
					$_impercent_	= (array_key_exists("percent",$vsig_overrides)&&$vsig_overrides['percent']!="")?($vsig_overrides['percent']):($this->_params->get('im_percent', 1));	//image
					$_im_align_ 	= (array_key_exists("align",$vsig_overrides)&&$vsig_overrides['align']!="")?($vsig_overrides['align']):($this->_params->get('im_align', 1));		//image
					$_usescript_ 	= (array_key_exists("script",$vsig_overrides)&&$vsig_overrides['script']!="")?($vsig_overrides['script']):($this->_params->get('usescript', 1));		//javascript
					$_th_right_ 	= (array_key_exists("right",$vsig_overrides)&&$vsig_overrides['right']!="")?($vsig_overrides['right']):($this->_params->get('th_right', 2));		//layout
					$_th_area_ 		= (array_key_exists("area",$vsig_overrides)&&$vsig_overrides['area']!="")?($vsig_overrides['area']):($this->_params->get('th_area', 30));		//layout
					$_th_sort_		= (array_key_exists("sort",$vsig_overrides)&&$vsig_overrides['sort']!="")?($vsig_overrides['sort']):($this->_params->get('th_sort', 0));	//thumbs
					$_setid_ 			= (array_key_exists("folderid",$vsig_overrides)&&$vsig_overrides['folderid']!="")?($vsig_overrides['folderid']):($this->_params->get('setid', 0));				//foldername
					$_cap_show_ 	= (array_key_exists("caps",$vsig_overrides)&&$vsig_overrides['caps']!="")?($vsig_overrides['caps']):($this->_params->get('cap_show', 1));		//captions
					$_cap_pos_ 		= (array_key_exists("inout",$vsig_overrides)&&$vsig_overrides['inout']!="")?($vsig_overrides['inout']):($this->_params->get('cap_pos', 1));			//captions
					$_link_use_ 	= (array_key_exists("links",$vsig_overrides)&&$vsig_overrides['links']!="")?($vsig_overrides['links']):($this->_params->get('link_use', 1));		//links
					$_sets_use_ 	= (array_key_exists("sets",$vsig_overrides)&&$vsig_overrides['sets']!="")?($vsig_overrides['sets']):($this->_params->get('sets_use', ''));		//sets
					$_sets_txt_ 	= (array_key_exists("setstxt",$vsig_overrides)&&$vsig_overrides['setstxt']!="")?($vsig_overrides['setstxt']):($this->_params->get('sets_txt', 'Set'));		//sets
					$path_ctrls 	= trim($this->_params->get('buttonpath', $path_ctrls));
					//controls
					$_ctrl_fwd_ 		= (array_key_exists("cfwd",$vsig_overrides))?($vsig_overrides['cfwd']):(trim($this->_params->get('ctrl_fwd', '')));
					$_ctrl_back_ 		= (array_key_exists("cbwd",$vsig_overrides))?($vsig_overrides['cbwd']):(trim($this->_params->get('ctrl_back', '')));
					$_ctrl_height_ 	= 24;
					//check if images are used for controls and allow default buttons
					$_ctrl_fwd_type = $_ctrl_back_type = "noimg";
					if(is_file($path_absolute.$path_ctrls.$_ctrl_fwd_)&&((substr(strtolower($_ctrl_fwd_),-3)=='jpg')||(substr(strtolower($_ctrl_fwd_),-3)=='gif')||(substr(strtolower($_ctrl_fwd_),-3)=='png'))){$_ctrl_fwd_=$path_ctrls.$_ctrl_fwd_;$_ctrl_fwd_type="img";}
					elseif($_ctrl_fwd_==""){$_ctrl_fwd_=$path_plugin.'fwd.png';$_ctrl_fwd_type="img";}
					if(is_file($path_absolute.$path_ctrls.$_ctrl_back_)&&((substr(strtolower($_ctrl_back_),-3)=='jpg')||(substr(strtolower($_ctrl_back_),-3)=='gif')||(substr(strtolower($_ctrl_back_),-3)=='png'))){$_ctrl_back_=$path_ctrls.$_ctrl_back_;$_ctrl_back_type="img";}
					elseif($_ctrl_back_==""){$_ctrl_back_=$path_plugin.'bwd.png';$_ctrl_back_type="img";}

					//calculations
					$_tempwidth=($_impercent_)?100:$_imwidth_;
					$_im_area_=$_tempwidth;
					if($_th_right_=="1"){
						$_im_area_=intval($_tempwidth-$_tempwidth/100*$_th_area_);
						$_rulerspace_=intval(($_tempwidth-$_im_area_)/10*9);
						$_rulerspace_.=($_impercent_)?"%":"px";
					}

					//calculate the number of sets
					$_sets_number_=($_sets_use_&&$_sets_use_<=(count($images)+1))?(ceil(count($images)/$_sets_use_)):1;

					//justify
					$therealimagearea=$_im_area_;
					if(!$_impercent_&&$_th_right_=="2"){
						$countthumbs=intval($_im_area_/($_width_+10+$_space_));
						$toremove=$_im_area_-($countthumbs*($_width_+10+$_space_));
						$newwidth=$_width_+intval($toremove/$countthumbs);
						$_height_=intval($_height_/$_width_*$newwidth);
					  $_width_=$newwidth;
						$therealimagearea=$countthumbs*($_width_+10+$_space_)-10-$_space_;
					}
					$_im_area_.=($_impercent_)?"%":"px";
					//set imagewidth according the settings to percent/pixel
					$_imwidth_.=($_impercent_)?"%":"px";
					$therealimagearea.=($_impercent_)?"%":"px";

					//create a unique identifier for the current gallery
					$identifier=$row->id."_".$sigcount;

					//write the styles for the gallery
					$vsig_cssadd.=".vsig_cont".$identifier." {width:".($_width_+10+$_space_)."px;height:".($_height_+10+$_space_)."px;}\n";
					if($_th_right_!="1"){$vsig_cssadd.=".vsig_top".$identifier." {width:".$_im_area_.";margin:5px 5px 5px -5px;}\n.vsig_top".$identifier." img {width:".$therealimagearea.";}\n";}
					else{$vsig_cssadd.=".vsig_top".$identifier." {width:".$_im_area_.";float:left;margin:-5px 15px 5px -5px;}\n.vsig_top".$identifier." img {width:".$therealimagearea.";}\n.vsig_ruler".$identifier." {width:".$_rulerspace_.";}\n";}
					if($_im_align_==0){$vsig_cssadd.=".vsig".$identifier." {margin:0 0 0 auto;padding:0;display:block;width:".$_imwidth_.";}\n";}
					elseif($_im_align_==1){$vsig_cssadd.=".vsig".$identifier." {margin:auto;padding:0;display:block;width:".$_imwidth_.";}\n";}
					elseif($_im_align_==3){$vsig_cssadd.=".vsig".$identifier." {margin:10px;float:left;width:".$_imwidth_.";}\n";}
					elseif($_im_align_==4){$vsig_cssadd.=".vsig".$identifier." {margin:10px;float:right;width:".$_imwidth_.";}\n";}
					else{$vsig_cssadd.=".vsig".$identifier." {width:".$_imwidth_.";}\n";}
					$vsig_cssadd.=".vsig_ctrls_".$identifier." {display:block;width:".$therealimagearea.";height:".$_ctrl_height_."px;text-align:right;}\n";

					//manipulate uri
					$aktimg=0;
					$target[$identifier]=htmlspecialchars($_target);
					if($foundrequest=JRequest::getInt('vsig'.$identifier)){
						$aktimg=(int)$foundrequest;
						//if we find on of our request-params a potential random sort is changed to the default sort
						if($_th_sort_==4){$_th_sort_=0;}
						$target[$identifier] = preg_replace('@[&|&amp;]?vsig'.$identifier.'=[0-9]+@', '', $target[$identifier] );
						$target[$identifier] = @preg_replace('@(\?&amp;)@', '?', $target[$identifier] );
						}
					$vsig_adqm = strpos($target[$identifier], '?');
					$target[$identifier].=($vsig_adqm===false)?("?"):("");
					$target[$identifier].=(substr($target[$identifier], -1)!="?")?("&amp;"):("");    
					$target[$identifier] = @preg_replace('@(&amp&amp;)@', '&amp;', $target[$identifier] );

					//current set according to main image else 1
					$_sets_current_=($_sets_use_)?(intval($aktimg/$_sets_use_)+1):1;

					//sort images
					$images = plgContentVsigHelper::beSortImages($images,$_th_sort_);

					//set path of thumbnail directory
					$thumbdir=$path_absolute.$path_imgroot.$_images_dir_.$folder_thumbs.'/';
					//check_existence_of/create thumbdirectory
					if(!is_dir($thumbdir)){plgContentVsigHelper::beMakeFolder($thumbdir,'thumbnail');}

					//set the var for the current array of captions
					$captions="cap_ar".$sigcount;
					//set the var for the current array of links
					$vsiglinks="_linkar".$sigcount;

					//start collecting html and set folder identity - if set to do so
					if($_setid_){
						$_tempstring=explode("/",$_images_dir_);
						$_tempstring=$_tempstring[count($_tempstring)-2];
						$html2 = "\n<a name='g_vsig".$identifier."'></a><div class='vsig vsig".$identifier."' id='".$_tempstring."'>";
					}else{
						$html2 = "\n<a name='g_vsig".$identifier."'></a><div class='vsig vsig".$identifier."'>";
					}

					//start collecting html for thumbs-part
					$html3='';

					//create current javascript array
					if($_usescript_){
						$vsig_script.="var vsig_".$identifier."= new Array();\n";
						$vsig_script.="var vsig_".$identifier."_b=new Array('".$path_site.$path_imgroot.$_images_dir_."','".$folder_thumbs."/','".$identifier."','".$target[$identifier]."vsig".$identifier."=');\n";
						}
					//set counter for thumbs in set to 1
					$thumbs_in_set=1;
					//traverse the found images#######################
					for($a = 0;$a<$noimage;$a++) {
						if($images[$a]['filename'] != '') {

							//prepare captions############################
							$cur_cap=array("",""); //reset captions
							$cur_cap_set=0; //set trigger for captions
							if($_cap_show_&&isset($$captions)){ //are captions activated and are there captions?
								if(array_key_exists(plgContentVsigHelper::beStrtolower($images[$a]['filename']),$$captions)){ //check for specific caption
									$cur_cap=array(${$captions}[plgContentVsigHelper::beStrtolower($images[$a]['filename'])][0],${$captions}[plgContentVsigHelper::beStrtolower($images[$a]['filename'])][1]);
									$cur_cap_set=1;
								}
								elseif(array_key_exists("CAPDEFAULT",$$captions)){ //check for default caption
									$cur_cap=array(${$captions}["CAPDEFAULT"][0],${$captions}["CAPDEFAULT"][1]);
									$cur_cap_set=1;
								}
							}
							//create values for js
							$cur_cap_js=$cur_cap;
							//encode captions
							$cur_cap_js[0] = plgContentVsigHelper::beKickQuotes($cur_cap_js[0]);
							$cur_cap_js[1] = plgContentVsigHelper::beKickQuotes($cur_cap_js[1]);

							//prepare links###############################
							$cur_link=array("#g_vsig".$identifier,"","_self"); //reset links
							if($_link_use_&&isset($$vsiglinks)){ //are links activated and are there links?
								if(array_key_exists(plgContentVsigHelper::beStrtolower($images[$a]['filename']),$$vsiglinks)){ //check for specific links
									$cur_link=${$vsiglinks}[plgContentVsigHelper::beStrtolower($images[$a]['filename'])];
								}
								elseif(array_key_exists("LINKDEFAULT",$$vsiglinks)){ //check for default link
									$cur_link=${$vsiglinks}["LINKDEFAULT"];
								}
							}
							//create values for js
							$cur_link_js=$cur_link;							
							//encode links

							//prepare alt and title#######################
							$cur_alt=substr($images[$a]['filename'], 0, -4); //reset alt-text and title
							//create values for js
							$cur_alt_js=$cur_alt;
							//encode alt-title from image name
							$cur_alt = utf8_encode($cur_alt);
							$cur_alt_js = $cur_alt;
							//check captions to use instead of file name
							if(isset($$captions)){ //are there captions?
								if(array_key_exists(plgContentVsigHelper::beStrtolower($images[$a]['filename']),$$captions)){ //check for specific caption
									$cur_alt=${$captions}[plgContentVsigHelper::beStrtolower($images[$a]['filename'])][0];
								}
								elseif(array_key_exists("CAPDEFAULT",$$captions)){ //check for default caption
									$cur_alt=${$captions}["CAPDEFAULT"][0];
								}
							//create values for js
							$cur_alt_js=$cur_alt;
							//encode alt-title from captions
							}
							//if a specific link is set, the title overrides all
							if($_link_use_&&isset($$vsiglinks)&&array_key_exists(plgContentVsigHelper::beStrtolower($images[$a]['filename']),$$vsiglinks)&&${$vsiglinks}[plgContentVsigHelper::beStrtolower($images[$a]['filename'])][1]!=""){
								$cur_alt=${$vsiglinks}[plgContentVsigHelper::beStrtolower($images[$a]['filename'])][1];
							//encode alt-title from links
							//$cur_alt=$cur_alt;
							$cur_alt_js=$cur_alt;
							}
							//encode alt-title
							$cur_alt_js = plgContentVsigHelper::beKickQuotes($cur_alt_js);
							$cur_alt = plgContentVsigHelper::beKickQuotes($cur_alt);

							//prepare and encode webpath main image#######
							$cur_webpath=$path_site.$path_imgroot.$_images_dir_.rawurlencode(utf8_encode($images[$a]['filename']));

							//top image###################################
							if($images[$a]['filename']==$images[$aktimg]['filename']) {
								$html2 .= "\n<div class='vsig_top vsig_top".$identifier."'>";
								if($_link_use_&&isset($$vsiglinks)){ //links are activated and set
								$html2 .= "\n<a href='".$cur_link[0]."' title='".$cur_link[1]."' target='".$cur_link[2]."'>";
								}
								$html2 .= "\n<img id='topimg".$identifier."' src='".$cur_webpath."' title='".$cur_alt."' alt='".$cur_alt."'/>";
								if($_cap_show_&&isset($$captions)){ //we have to show captions
								$html2 .= "\n<div class='".(($_cap_pos_)?'inside':'outside')."' style='width:".$therealimagearea.";'>";
									if($cur_cap_set){ //captions (specific or default) are set for this image
								$html2 .= "<span>".$cur_cap[0]."</span><span>".$cur_cap[1]."</span>";
									}
								$html2 .= "\n</div>".(($_cap_pos_)?"":"<br class='vsig_clr' />");
								}
								if($_link_use_&&isset($$vsiglinks)){ //links are activated and set
								$html2 .= "\n</a>";
								}
								$html2 .= "\n</div>\n";
							}

							//thumbnails##################################
							//check_existence_of/create thumb
							$thethumb = plgContentVsigHelper::beResizeImg($path_absolute.$path_imgroot.$_images_dir_.$images[$a]['filename'],$folder_thumbs,$_width_,$_height_,'keep','no',$_quality_);

							//prepare and encode webpath thumbs#######
							$cur_thumb_webpath=$path_site.$path_imgroot.$_images_dir_.$folder_thumbs.'/'.$thethumb[1];

							//check if sets are used and if the current thumb belongs to the current set
							if(!$_sets_use_||($a>=($_sets_use_*$_sets_current_-$_sets_use_)&&$a<=($_sets_use_*$_sets_current_-1)&&$_sets_use_>=2)){
								//write html for thumbs
								$html3 .= '<div id="thbvsig_'.$identifier.'_'.$thumbs_in_set.'" class="vsig_cont vsig_cont'.$identifier.'"><div class="vsig_thumb">';
								$html3 .= '<a href="'.$target[$identifier].'vsig'.$identifier.'='.$a.'" rel="nofollow"';
								if($_usescript_>=1){ //javascript is activated, insert the onclick event
								$html3 .= ' onclick=\'switchimg(vsig_'.$identifier.'['.$a.'],vsig_'.$identifier.'_b);return false;\'';
								}
								$html3 .= ' title="'.$cur_alt.'">';
								$html3 .= '<img src="'.$cur_thumb_webpath.'" alt="'.$cur_alt.'"/>';
								$html3 .= "</a></div></div>\n";
								//increment counter for thumbs in set
								$thumbs_in_set++;
							}
							//array for javascript; name: identifier+prefix
							if($_usescript_){
							$vsig_script.="vsig_".$identifier."[".$a."]=new Array(";	
							$vsig_script.="'".rawurlencode(utf8_encode($images[$a]['filename']))."',";				//0-image-url
							$vsig_script.="'".$cur_cap_js[0]."',";				//1-alt
							$vsig_script.="'".$cur_cap_js[1]."',";				//2-captitle
							$vsig_script.="'".$cur_link_js[0]."',";				//3-captext
							$vsig_script.="'".$cur_link_js[1]."',";				//4-linkhref
							$vsig_script.="'".$cur_link_js[2]."',";				//5-linktext
							$vsig_script.="'".$cur_alt_js."',";						//6-linktarget
							$vsig_script.="'".$thethumb[1]."');\n";	//7-thumb-url
							}
						}
					}

					//if the last set contains less thumbs than a full set, add dummies
					if($_sets_use_&&count($images)>=($_sets_use_+1)&&$_sets_use_>=2){
						for($b=$thumbs_in_set;$b<=$_sets_use_;$b++){
							$html3 .= '<div id="thbvsig_'.$identifier.'_'.$thumbs_in_set.'" class="vsig_cont vsig_cont'.$identifier.'" style="visibility:hidden;"><div class="vsig_thumb">';
							$html3 .= '<a href="" rel="nofollow"';
							if($_usescript_>=1){ //javascript is activated, insert the onclick event
							$html3 .= ' onclick=\'return false;\'';
							}
							$html3 .= ' title=""><img src=""/>';
							$html3 .= "</a></div></div>\n";
							//increment counter for thumbs in set
							$thumbs_in_set++;
						}
					}
					//add controls
					if($_sets_use_&&$_sets_number_>=2) {
						$html4="<div class='vsig_ctrls vsig_ctrls_".$identifier."'>";
						$html4.="<div class='vsig_ctrl_left'></div><div class='vsig_ctrl_right'>";
						//back
						if($_sets_current_>=2){
							$html4.= '<a href="'.$target[$identifier].'vsig'.$identifier.'='.(($_sets_current_-1)*$_sets_use_-$_sets_use_).'" rel="nofollow"';
							if($_usescript_>=1){ //javascript is activated, insert the onclick event
							$html4.= ' id=\'bbackvsig_'.$identifier.'\'';
							$html4.= ' onclick=\'switchset("vsig_'.$identifier.'",'.(($_sets_current_-1)*$_sets_use_-$_sets_use_).','.$_sets_use_.');return false;\'';
							}
							$html4.= '>';
						}
						else{
							$html4.= '<a href="#g_vsig'.$identifier.'" rel="nofollow"';
							if($_usescript_>=1){ //javascript is activated, insert the onclick event
							$html4.= ' id=\'bbackvsig_'.$identifier.'\'';
							$html4.= ' onclick=\'return false;\'';
							}
							$html4.= '>';
						}
						if($_ctrl_back_type=="img"){$html4.="<img src='".$path_site.$_ctrl_back_."' alt='".substr($_ctrl_back_, (strrpos($_ctrl_back_, "/")+1), -4)."'/>";}
						else{$html4.=$_ctrl_back_;}
						$html4.="</a>";
						//counter
						$html4.="&nbsp;&nbsp;".$_sets_txt_."<span id='countervsig_".$identifier."' class='vsig_counter'>&nbsp;".$_sets_current_."/".$_sets_number_."</span>&nbsp;&nbsp;";
						//forward
						if($_sets_current_<=$_sets_number_-1){
							$html4.= '<a href="'.$target[$identifier].'vsig'.$identifier.'='.($_sets_current_*$_sets_use_).'" rel="nofollow"';
							if($_usescript_>=1){ //javascript is activated, insert the onclick event
							$html4.= ' id=\'bfwdvsig_'.$identifier.'\'';
							$html4.= ' onclick=\'switchset("vsig_'.$identifier.'",'.($_sets_current_*$_sets_use_).','.$_sets_use_.');return false;\'';
							}
							$html4.= '>';
						}
						else{
							$html4.= '<a href="#g_vsig'.$identifier.'" rel="nofollow"';
							if($_usescript_>=1){ //javascript is activated, insert the onclick event
							$html4.= ' id=\'bbackvsig_'.$identifier.'\'';
							$html4.= ' onclick=\'return false;\'';
							}
							$html4.= '>';
						}
						if($_ctrl_fwd_type=="img"){$html4.="<img src='".$path_site.$_ctrl_fwd_."' alt='".substr($_ctrl_fwd_, (strrpos($_ctrl_fwd_, "/")+1), -4)."'/>";}
						else{$html4.=$_ctrl_fwd_;}
						$html4.="</a>";
						$html4.="</div></div>\n";
					}

					//combine top image, controls and thumbs####################
					if($_sets_use_&&$_sets_number_>=2) {
					//if thumbs are right PLUS sets are used => topimage-ruler-thumbs-controls
						if($_th_right_=="1"){
							$html2 .="<div class='vsig_ruler".$identifier." vsig_ruler'>\n";
							$html2 .=$html3;
							$html2 .="</div>\n";
							$html2 .=$html4;
						}
					//if thumbs are below PLUS sets are used => topimage-controls-thumbs
						else{ //if($_th_right_!="1"){
							$html2 .=$html4;
							$html2 .=$html3;
						}
					}
					else{
					//if thumbs are right NO sets are used => topimage-ruler-thumbs
						if($_th_right_=="1"){
							$html2 .="<div class='vsig_ruler".$identifier." vsig_ruler'>\n";
							$html2 .=$html3;
							$html2 .="</div>\n";
						}
					//if thumbs are below NO sets are used => topimage-thumbs
						else{ //if($_th_right_!="1"){
							$html2 .=$html3;
						}
					}

					$html2 .="<div class=\"vsig_clr\"></div>\n</div>\n";
					if($_usescript_==1){ //javascript is activated, link the js-file
						$document->addScript($path_site.$path_plugin.'vsig.js');
					}
				}
				//replace the call with the gallery#################
				$row->text = plgContentVsigHelper::beReplaceCall("{vsig}".$vsig_code."{/vsig}",$html2, $row->text);
			}
			//add arrays with alt, caption and link
			if($vsig_script!=""){
			$document->addScriptDeclaration($vsig_script);
			}
			//write collected CSS setting to the head of the page
			if($vsig_cssadd!=""){
			$document->addCustomTag("<style type='text/css'>\n".$vsig_cssadd."</style>\n");
			$document->addCustomTag('<link href="'.$path_site.$path_plugin.'vsig.css" rel="stylesheet" type="text/css" />' );
			}
		}
//images
	}

function onAfterDisplayContent( &$article, &$params, $limitstart ) {
	global $mainframe;
	if(preg_match('#vsig[0-9]+_#s', $_SERVER['REQUEST_URI'])>=1){
		$document =& JFactory::getDocument();
		$document->setMetaData("robots", "noindex, nofollow");
		}
	}

}
?>