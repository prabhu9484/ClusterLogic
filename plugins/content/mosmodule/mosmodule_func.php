<?php
/**
* @version 
* @package MosModule - COAddOns for Mambo & Jommla - Mambot
* @copyright (C) 2009 ongetc.com
* @info ongetc@ongetc.com http://ongetc.com
* @license GNU/GPL http:/ongetc.com/gpl.html.
*/ 
defined( '_VALID_MOS' ) or die( 'Direct Access to this location is not allowed.' );
function mosmodule_bot( $field ) {
  $mmMe = new MosModuleTinyIsJClassForFunc;
  $mosmoduleclass=$mmMe->getBot().'/content/mosmodule/mosmodule.inc.php';
  require_once($mosmoduleclass);
  global $mmcls;
  return $mmcls->botMe( $field );
}

// tiny class to deal with J15 compatibility issue
class MosModuleTinyIsJClassForFunc {
	function MosModuleTinyIsJClassForFunc() { } // empty constructor
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
