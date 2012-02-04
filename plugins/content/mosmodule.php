<?php  
/**
* @version 
* @package MosModule - COAddOns for Mambo & Jommla - Mambot
* @copyright (C) 2009 ongetc.com
* @info ongetc@ongetc.com http://ongetc.com
* @license GNU/GPL http:/ongetc.com/gpl.html.
*/ 
defined( '_VALID_MOS' ) or die( 'Direct Access to this location is not allowed.' );
global $mosmodule_var;
$mmMe = new MosModuleTinyIsJClass;
$mosmoduleclass=$GLOBALS['mosConfig_absolute_path']. '/'. $mmMe->getBot().'/content/mosmodule/mosmodule.inc.php';
require_once($mosmoduleclass);

if (isset($_MAMBOTS)) { // new mambot
	if ($mmMe->isJ15()) $whichfunc="callback_mosmodule_J15_in_content";
	else $whichfunc="callback_legacy_mosmodule_in_content";
	$_MAMBOTS->registerFunction('onPrepareContent', $whichfunc) ;
}
else $row->text=callback_mosmodule_botme($row->text);	// really old pre Mambo 4.5 legacy bot

// wrapper to work around J1.5 legacy issue
function callback_mosmodule_J15_in_content( &$row, &$params, $page=0 ) {  // call back function
	$row->text = callback_mosmodule_botme($row->text);
	return true;
}

function callback_legacy_mosmodule_in_content( $published, &$row, &$params, $page=0 ) {  // call back function
	if (!$published) return false;
	$row->text = callback_mosmodule_botme($row->text);
	return true;
}

function callback_mosmodule_botme ( $atext ) {  // call back function
    global $mmcls;
	return $mmcls->botMe($atext);
}

	
// tiny class to deal with J15 compatibility issue
class MosModuleTinyIsJClass {
	function MosModuleTinyIsJClass() { } // empty constructor
	function isJ15() {
		( (defined('JVERSION')) and 
			($this->is1stNewer2nd(substr(JVERSION,0,3),'1.0') ) ) ? $ret=true : $ret=false;
		return $ret;
	}
	function is1stNewer2nd( $first,$second ) {
	   (version_compare($first,$second)=="1") ? $newer=true : $newer=false;
	   return $newer;
	}
	function getBotTable() { return "#__".$this->getBot(); }
	function getBot() {
		($this->isJ15()) ? $ret="plugins" : $ret="mambots";
		return $ret;
	}
}
?>