<?php
/*
// JoomlaWorks "Simple Image Rotator" Module for Joomla! 1.5.x - Version 1.2
// License: http://www.gnu.org/copyleft/gpl.html
// Copyright (c) 2006 - 2008 JoomlaWorks, a Komrade LLC company.
// More info at http://www.joomlaworks.gr
// Developers: Fotis Evangelou
// ***Last update: May 20th, 2008***
*/

/** ensure this file is being included by a parent file */
defined('_JEXEC') or die('Restricted access');

global $mainframe;

$database =& JFactory::getDBO();

// j!1.5 paths
$mosConfig_absolute_path = JPATH_SITE;
$mosConfig_live_site = JURI :: base();
if(substr($mosConfig_live_site, -1)=="/") $mosConfig_live_site = substr($mosConfig_live_site, 0, -1);

require_once (JPATH_SITE.DS.'components'.DS.'com_banners'.DS.'router.php');

if(!function_exists('ampReplaceOld')) {

	function ampReplaceOld( $text ) {
		$text = str_replace( '&&', '*--*', $text );
		$text = str_replace( '&#', '*-*', $text );
		$text = str_replace( '&', '&', $text );
		$text = preg_replace( '|&(?![\w]+;)|', '&', $text ); // this is the line causing problems
		$text = str_replace( '*-*', '&#', $text );
		$text = str_replace( '*--*', '&&', $text );
		return $text;
	}


}

// module parameters
$moduleclass_sfx 	= $params->get( 'moduleclass_sfx','');
$imagefolder 		= trim($params->get('imagefolder'));
$transition 		= intval($params->get('transition',40));
$delay 				= intval($params->get('delay',3000));
$width 				= intval($params->get('width',600));
$height 			= intval($params->get('height',200));
$forceresize 		= intval($params->get('forceresize',0));
$enablelink			= trim($params->get('enablelink'));
$link 				= ampReplaceOld($params->get('link'));
$linktitle 			= $params->get( 'linktitle', 'JoomlaWorks Simple Image Rotator');
$target 			= trim($params->get('target'));
$display 			= trim($params->get('display'));
$darkbg 			= intval($params->get('darkbg',0));
$useforbanners 		= intval($params->get('useforbanners',0));
$bannerfolder 		= $params->get('bannerfolder','images/banners/');

?>

<!-- JoomlaWorks "Simple Image Rotator" Module (v1.2) starts here -->
<noscript>
	<div class="message">Sorry, but Javascript is not enabled in your browser!</div>
</noscript>
<script language="javascript" type="text/javascript">
<!--
var embedSIRCSS = '<' + 'style type="text/css" media="all">'
+ '@import "modules/mod_jw_sir/mod_jw_sir/mod_jw_sir.css";'
+ 'ul#jw-sir,ul#jw-sir li#jw-sir-loading<?php if ($darkbg){echo '-black';} ?> {width:<?php echo $width;?>px;height:<?php echo $height;?>px;}'
+ '</' + 'style>';
document.write(embedSIRCSS);
-->
</script>
<script type="text/javascript" src="modules/mod_jw_sir/mod_jw_sir/mod_jw_sir.js"></script>
<script type="text/javascript">var delay=<?php echo $delay; ?>;var transition=<?php echo $transition; ?>;var preLoader='jw-sir-loading<?php if ($darkbg){echo '-black';} ?>';</script>
<ul id="jw-sir" class="<?php echo $moduleclass_sfx; ?>">
  <?php
  // retrieve the published banners only
  $database->setQuery("SELECT * FROM  #__banner WHERE showBanner=1 AND imageurl!=''");
  $rows = $database->loadObjectList();
  if ($useforbanners) {
  	// banner mode
  	if ($darkbg){
  		echo '<li id="jw-sir-loading-black"></li>';
  	} else {
  		echo '<li id="jw-sir-loading"></li>';
  	}
  	foreach ($rows as $row) {
  		$link = JRoute::_('index.php?option=com_banners&amp;task=click&amp;bid='.$row->bid);
  		$finalpath = $bannerfolder.$row->imageurl;
  		// resize
  		if ($forceresize) {
  			$image_info = @getimagesize($finalpath);
  			$rwidth = $image_info[0];
  			$rheight = $image_info[1];
  			if ( $image_info[0] > $width ) {
  				$target = $width;
  				$percentage = ($target / $rwidth);
  				$rwidth = round($rwidth * $percentage);
  				$rheight = round($rheight * $percentage);
  				$img_dimensions = 'style="width:'.$rwidth.'px;height:'.$rheight.'px;" ';
  			} else {
  				$img_dimensions = 'style="width:'.$rwidth.'px;height:'.$rheight.'px;" ';
  			}
  		}
  		// output
  		if ($enablelink) {
  			if ($target) {
  				echo '<li><a href="'.$link.'" target="_blank"><img src="'.$finalpath.'" title="'.$linktitle.'" alt="'.$linktitle.'" '.$img_dimensions.' /></a></li>';
  			} else {
  				echo '<li><a href="'.$link.'"><img src="'.$finalpath.'" title="'.$linktitle.'" alt="'.$linktitle.'" '.$img_dimensions.' /></a></li>';
  			}
  		} else {
  			echo '<li><img src="'.$finalpath.'" title="'.$linktitle.'" alt="'.$linktitle.'" '.$img_dimensions.' /></li>';
  		}
  	}
  } else {
  	// standard mode
  	if (file_exists($imagefolder) && is_readable($imagefolder)) {
  		$folder = opendir($imagefolder);
  	} else {
  		echo '<div class="message">"Simple Image Rotator" error! Please check the module settings and make sure you have entered a valid image folder path!</div>';
  		return;
  	}
  	$allowed_types = array("jpg","JPG","jpeg","JPEG","gif","GIF","png","PNG","bmp","BMP");
  	$index = array();
  	while ($file = readdir ($folder)) {
  		if(in_array(substr(strtolower($file), strrpos($file,".") + 1),$allowed_types)) {array_push($index,$file);}
  	}
  	closedir($folder);
  	if($display == 'random') {shuffle($index);} else {sort($index);}
  	if ($darkbg){
  		echo '<li id="jw-sir-loading-black"></li>';
  	} else {
  		echo '<li id="jw-sir-loading"></li>';
  	}
  	foreach ($index as $file) {
  		$finalpath = $imagefolder."/".$file;
  		// resize
  		if ($forceresize) {
  			$image_info = @getimagesize($finalpath);
  			$rwidth = $image_info[0];
  			$rheight = $image_info[1];
  			if ( $image_info[0] > $width ) {
  				$target = $width;
  				$percentage = ($target / $rwidth);
  				$rwidth = round($rwidth * $percentage);
  				$rheight = round($rheight * $percentage);
  				$img_dimensions = 'style="width:'.$rwidth.'px;height:'.$rheight.'px;" ';
  			} else {
  				$img_dimensions = 'style="width:'.$rwidth.'px;height:'.$rheight.'px;" ';
  			}
  		}
  		// output
  		if ($enablelink) {
  			if ($target) {
  				echo '<li><a href="'.$link.'" target="_blank"><img src="'.$finalpath.'" title="'.$linktitle.'" alt="'.$linktitle.'" '.$img_dimensions.'/></a></li>';
  			} else {
  				echo '<li><a href="'.$link.'"><img src="'.$finalpath.'" title="'.$linktitle.'" alt="'.$linktitle.'" '.$img_dimensions.'/></a></li>';
  			}
  		} else {
  			echo '<li><img src="'.$finalpath.'" title="'.$linktitle.'" alt="'.$linktitle.'" '.$img_dimensions.'/></li>';
  		}
  	}
  	// end if
  }
?>
</ul>
<!-- JoomlaWorks "Simple Image Rotator" Module (v1.2) ends here -->