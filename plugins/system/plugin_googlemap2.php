<?php
/**
 * plugin_googlemap2.php,v 2.13 2011/01/09 13:34:11
 * @copyright (C) Reumer.net
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
 *
 /* ----------------------------------------------------------------

/** ensure this file is being included by a parent file */

defined( '_JEXEC' ) or die( 'Restricted access' );

jimport( 'joomla.plugin.plugin' );
jimport( 'joomla.html.parameter' ); 

if (!defined('_CMN_JAVASCRIPT')) define('_CMN_JAVASCRIPT', "<b>JavaScript must be enabled in order for you to use Google Maps.</b> <br/>However, it seems JavaScript is either disabled or not supported by your browser. <br/>To view Google Maps, enable JavaScript by changing your browser options, and then try again.");

class plgSystemPlugin_googlemap2 extends JPlugin
{
	var $config;
	var $subject;
	var $jversion;
	var $params;
	var $regex;
	var $document;
	var $doctype;
	var $published;
	var $debug_plugin;
	var $debug_text;
	var $plugincode;
	var $brackets;
	var $countmatch;
	var $protocol;
	var $googlewebsite;
	var $urlsetting;
	var $googlekey;
	var $lang;
	var $language;
	var $langtype;
	var $iso;
	var $no_javascript;
	var $pagebreak;
	var	$google_API_version;
	var	$timeinterval;
	var	$loadmootools;
	var	$googleindexing;
	var	$langanim;
	var $proxy;
	var	$first_google=true;
	var	$first_mootools;
	var	$first_modalbox;
	var	$first_localsearch;
	var	$first_kmlrenderer;
	var	$first_kmlelabel;
	var	$first_svcontrol;
	var	$first_animdir;
	var	$first_arcgis;
	var	$first_panoramiolayer;
	var $event;
	
	/**
	 * Constructor
	 *
	 * @access      protected
	 * @param       object  $subject The object to observe
	 * @param       array   $config  An array that holds the plugin configuration
	 * @since       1.0
	 */
	public function __construct( &$subject, $config )
	{
		parent::__construct( $subject, $config );
		$this->event = 'construct';
		// Do some extra initialisation in this constructor if required
		$this->subject = $subject;
		$this->config = $config;
		// Version of Joomla
		$this->jversion = JVERSION;
		$plugin =& JPluginHelper::getPlugin('system', 'plugin_googlemap2');
		$this->params = new JParameter( $plugin->params );
		// Check if params are defined and set otherwise try to get them from previous version
		$this->_upgrade_plugin();
		// Set debug
		$this->debug_plugin = $this->params->get( 'debug', '0' );
		$this->debug_text = '';
		// Get document and doctype
		$this->document =& JFactory::getDocument();
		$this->doctype = $this->document->getType();
		// Edit mode?
		$option = JRequest::getVar('option', '');	
		$view = JRequest::getVar('view', '');	
		$task = JRequest::getVar('task', '');	
		$this->editmode = ($option=='com_content'&&$view=='article'&&$task=="edit");
		// Get params
		$this->plugincode = $this->params->get( 'plugincode', 'mosmap' );
		$this->brackets = $this->params->get( 'brackets', '{' );
		// define the regular expression for the bot
		if ($this->brackets=="both") {
			$this->regex="/(<p\b[^>]*>\s*)?(\{|\[)".$this->plugincode."\s*(.*?)(\}|\])(\s*<\/p>)?/si";
			$this->countmatch = 3;
		} elseif ($this->brackets=="[") {
			$this->regex="/(<p\b[^>]*>\s*)?\[".$this->plugincode."\s*(.*?)\](\s*<\/p>)?/si";
			$this->countmatch = 2;
		} else {
			$this->regex="/(<p\b[^>]*>\s*)?{".$this->plugincode."\s*(.*?)}(\s*<\/p>)?/si";
			$this->countmatch = 2;
		}

		// Clean up variables
		unset($plugin, $option, $view, $task);
	}
	
	/**
	 * Do something onAfterInitialise 
	 */
	public function onAfterInitialise()
	{
		$this->event = 'onAfterInitialise';
	}
	
	/**
	 * onPrepareContent is rename in Joomla 1.6 to onContentPrepare
	 */
	public function onContentPrepare($context, &$article, &$params, $limitstart)
	{
		$this->event = 'onContentPrepare';
		
		$app = JFactory::getApplication();
		if($app->isAdmin()) {
			return;
		}
		
		$text = &$article->text;
		$introtext = &$article->introtext;
		
		// check whether plugin has been unpublished
		if ( !$this->params->get( 'publ', 1 ) ) {
			$text = preg_replace( $this->regex, '', $text );
			return true;
		}
		
		// PDF can't show maps so remove it
		if ($this->doctype=='pdf') {
			$text = preg_replace( $this->regex, '', $text );
			return true;
		}
		
		// check if article is in edit mode then don't replace {mosmap{ so it can be edited
		if ($this->editmode)
			return true;
	
		// perform the replacement in a normal way, but this has the disadvantage that other plugins
		// can't add information to the mosmap, other later added content is not checked and modules can't be checked
		// $this->_replace( $text );	
		// $this->_replace( $introtext );
		
		// Clean up variables
		unset($app, $text, $introtext);
	}
	
	/**
	 * onPrepareContent is for Joomla 1.5
	 */
	public function onPrepareContent(&$article)
	{
		$this->event = 'onPrepareContent';
		
		$app = JFactory::getApplication();
		if($app->isAdmin()) {
			return;
		}
		
		$text = &$article->text;
		$introtext = &$article->introtext;
		
		// check whether plugin has been unpublished
		if ( !$this->params->get( 'publ', 1 ) ) {
			$text = preg_replace( $this->regex, '', $text );
			return true;
		}
		
		// PDF or feed can't show maps so remove it
		if ($this->doctype=='pdf'||$this->doctype=='feed') {
			$text = preg_replace( $this->regex, '', $text );
			return true;
		}
		
		// check if article is in edit mode then don't replace {mosmap{ so it can be edited
		if ($this->editmode)
			return true;
	
		// perform the replacement in a normal way, but this has the disadvantage that other plugins
		// can't add information to the mosmap, other later added content is not checked and modules can't be checked
		//$this->_replace( $text );	
		//$this->_replace( $introtext );	
		
		// Clean up variables
		unset($app, $text, $introtext);
	}
	
	/**
	 * Do something onAfterRoute 
	 */
	public function onAfterRoute()
	{
		$this->event = 'onAfterRoute';
	}
	
	/**
	 * Do something onAfterDispatch 
	 */
	public function onAfterDispatch()
	{
		$this->event = 'onAfterDispatch';
		
		$app = JFactory::getApplication();
		if($app->isAdmin()) {
			return;
		}
		
		// FEED
		if ($this->doctype=='feed'&&isset($this->document->items)) {
			foreach($this->document->items as $item) {
				$text = &$item->description;
				$text = preg_replace( $this->regex, '', $text );
			}
			return true;
		}
		
		// PDF can't show maps so remove it
		if ($this->doctype=='pdf') {
			$text = $this->document->getBuffer("component");
			$text = preg_replace( $this->regex, '', $text );
			$this->document->setBuffer($text, "component"); 
			return true;
		}
		
		// check if article is in edit mode then don't replace {mosmap{ so it can be edited
		if ($this->editmode) {
			return true;
		}
		// In other components or leftovers
		if (isset($this->document->_buffer)) {
			$text = $this->document->getBuffer("component");
			
			// check whether plugin has been unpublished
			if ( !$this->params->get( 'publ', 1 ) )
				$text = preg_replace( $this->regex, '', $text );
			else
				$this->_replace($text);			
			$this->document->setBuffer($text, "component"); 
		}
		
		// Clean up variables
		unset($app, $item, $text, $introtext);
	}
	
	/**
	 * Do something onAfterRender 
	 */
	public function onAfterRender()
	{
		$this->event = 'onAfterRender';
		
		$app = JFactory::getApplication();
		if($app->isAdmin()) {
			return;
		}
		
		// Get the rendered body text
		$text = JResponse::getBody();
		
		// check whether plugin has been unpublished
		if ( !$this->params->get( 'publ', 1 ) ) {
			$text = preg_replace( $this->regex, '', $text );
			return true;
		}
		
		// PDF or feed can't show maps so remove it
		if ($this->doctype=='pdf'||$this->doctype=='feed') {
			$text = preg_replace( $this->regex, '', $text );
			return true;
		}
		
		// check if article is in edit mode then don't replace {mosmap{ so it can be edited
		if ($this->editmode)
			return true;
	
		// perform the replacement
		$this->_replace( $text );
		
		// Set the body text with the replaced result
        JResponse::setBody($text);

		// Clean up variables
		unset($app, $text, $introtext);
	}
	
	function _replace(&$text) {
		$matches = array();
		$cnt = preg_match_all($this->regex,$text,$matches,PREG_OFFSET_CAPTURE | PREG_PATTERN_ORDER);
//		print_r($matches);
		if ($cnt>0) {
			// intialize the general parameters
			$this->_init();
			// Process the found {mosmap} codes
			for($counter = 0; $counter < $cnt; $counter ++) {
				// Very strange the first match is the plugin code??
				$this->_process($matches[0][$counter][0], $matches[$this->countmatch][$counter][0], $text, $counter);
			}
		}
		
		// Clean up variables
		unset($matches, $cnt, $counter, $content);
	}
	
	function _init() {
		// Get ID
		$this->id = intval( JRequest::getVar('id', null) );	
		$this->id = explode(":", $this->id);
		$this->id = $this->id[0];
		// What is the url of website without / at the end
		$this->url = preg_replace('/\/$/', '', JURI::base());
		$this->_debug_log("url base(): ".$this->url);			
		$this->base = JURI::base(true);
		$this->_debug_log("url base(true): ".$this->base);			
		// Protocol not working with maps.google.com only with enterprise account
		if ($_SERVER['SERVER_PORT'] == 443)
			$this->protocol = "https://";
		else
			$this->protocol = "http://";
		$this->_debug_log("Protocol: ".$this->protocol);
		// Get language
		$this->langtype = $this->params->get( 'langtype', '' );
		$this->lang = JFactory::getLanguage();
		$this->lang->load("plg_system_plugin_googlemap2", JPATH_SITE."/administrator", $this->lang->getTag(), true);
		$this->language = $this->_getlang();
		$this->no_javascript = JText::_( 'CMN_JAVASCRIPT', _CMN_JAVASCRIPT);
		// Define encoding
		$this->iso = "utf-8";
		// Get params
		$this->googlewebsite = $this->params->get( 'googlewebsite', 'maps.google.com' );
		$this->_debug_log("googlewebsite: ".$this->googlewebsite);
		$this->urlsetting = $this->params->get( 'urlsetting', 'http_host' );
		$this->_debug_log("urlsetting: ".$this->urlsetting);
		if ($this->urlsetting=='mosconfig')
			$this->urlsetting = $this->url;
		else 
			$this->urlsetting = $_SERVER['HTTP_HOST'];
		$this->google_API_version = $this->params->get( 'Google_API_version', '2.x' );
		$this->googleindexing = $this->params->get( 'googleindexing', '1' );
		$this->timeinterval = $this->params->get( 'timeinterval', '500' );
		$this->loadmootools = $this->params->get( 'loadmootools', '1' );
		$this->_debug_log("loadmootools: ".$this->loadmootools);
		$this->langanim = $this->params->get( 'langanim', 'en;The requested panorama could not be displayed|Could not generate a route for the current start and end addresses|Street View coverage is not available for this route|You have reached your destination|miles|miles|ft|kilometers|kilometer|meters|In|You will reach your destination|Stop|Drive|Press Drive to follow your route|Route|Speed|Fast|Medium|Slow' );
		$this->proxy = $this->params->get( 'proxy', '1' );
		// Get key
		$this->googlekey = $this->_get_API_key();
		// Pagebreak regular expression
		$this->pagebreak = '/<hr\s(title=".*"\s)?class="system-pagebreak"(\stitle=".*")?\s\/>/si';
		// load scripts once
		$this->first_google=true;
		$this->first_mootools=true;
		$this->first_modalbox=true;
		$this->first_localsearch=true;
		$this->first_kmlrenderer=true;
		$this->first_kmlelabel=true;
		$this->first_svcontrol=true;
		$this->first_animdir= true;
		$this->first_arcgis=true;
		$this->first_panoramiolayer = true;
		$this->_debug_log("brackets: ".$this->brackets);
	}
	
	function _process($match, $params, &$text, $counter) {
		$startmem = round($this->_memory_get_usage()/1024);
		$this->_debug_log("Memory Usage Start (_process): " . $startmem . " KB");
		
		// Parameters can get the default from the plugin if not empty or from the administrator part of the plugin
		$width = $this->params->get( 'width', '100%' );
		$height = $this->params->get( 'height', '400px' );
		$deflatitude = $this->params->get( 'lat', '52.075581' );
		$deflongitude = $this->params->get( 'lon', '4.541513' );
		$centerlat = $this->params->get( 'centerlat', '' );
		$centerlon = $this->params->get( 'centerlon', '' );
		$address = $this->params->get( 'address', '' );
		$zoom = $this->params->get( 'zoom', '10' );
		$minzoom = $this->params->get( 'minzoom', '0' );
		$maxzoom = $this->params->get( 'maxzoom', '19' );	
		$ovzoom = $this->params->get( 'ovzoom', '' );
		$corzoom = $this->params->get( 'corzoom', '0' );
		$controltype = $this->params->get( 'controlType', 'user' );
		$showmaptype = $this->params->get( 'showMaptype', '1' );
		$showterrainmaptype = $this->params->get( 'showTerrainMaptype', '1' );
		$showearthmaptype = $this->params->get( 'showEarthMaptype', '1' );
		$showscale = $this->params->get( 'showScale', '0' );
		$zoom_new = $this->params->get( 'zoomNew', '0' );
		$zoom_wheel = $this->params->get( 'zoomWheel', '0' );
		$keyboard = $this->params->get( 'keyboard', '0' );
		$overview = $this->params->get( 'overview', '0' );
		$navlabel = $this->params->get( 'navlabel', '0' );
		$dragging = $this->params->get( 'dragging', '1' );
		$rotation = $this->params->get( 'rotation', '0' );
		$marker = $this->params->get( 'marker', '1' );
		$icon = $this->params->get( 'icon', '' );
		$iconwidth = $this->params->get( 'iconwidth', '' );
		$iconheight = $this->params->get( 'iconheight', '' );
		$iconshadow = $this->params->get( 'iconshadow', '' );
		$iconshadowwidth = $this->params->get( 'iconshadowwidth', '' );
		$iconshadowheight = $this->params->get( 'iconshadowheight', '' );
		$iconshadowanchorx = $this->params->get( 'iconshadowanchorx', '' );
		$iconshadowanchory = $this->params->get( 'iconshadowanchory', '' );
		$iconanchorx = $this->params->get( 'iconanchorx', '' );
		$iconanchory = $this->params->get( 'iconanchory', '' );
		$iconinfoanchorx = $this->params->get( 'iconinfoanchorx', '' );
		$iconinfoanchory = $this->params->get( 'iconinfoanchory', '' );
		$icontransparent = $this->params->get( 'icontransparent', '' );
		$iconimagemap = $this->params->get( 'iconimagemap', '' );
		$gotoaddr = $this->params->get( 'gotoaddr', '0' );
		$gotoaddrzoom = $this->params->get( 'gotoaddrzoom', '0' );
		$erraddr = $this->params->get( 'erraddr', 'Address ## not found!' );
		$txtaddr = $this->params->get( 'txtaddr', 'Address: <br />##' );
		$clientgeotype = $this->params->get( 'clientgeotype', 'google' );
		$align = $this->params->get( 'align', 'center' );
		$dir = $this->params->get( 'dir', '0' );
		$animdir = $this->params->get( 'animdir', '0' );
		$animspeed = $this->params->get( 'animspeed', 1 );
		$formspeed = $this->params->get( 'formspeed', 0 );
		$formdirtype = $this->params->get( 'formdirtype', 0 );
		$formaddress = $this->params->get( 'formaddress', 0 );
		$animautostart = $this->params->get( 'animautostart', '0' );
		$animunit = $this->params->get( 'animunit', 'miles' );
		$dirtype = $this->params->get( 'dirtype', 'D' );
		$avoidhighways = $this->params->get( 'avoidhighways', '0' );
		$traffic = $this->params->get( 'traffic', '0' );
		$panoramio = $this->params->get( 'panoramio', 'none' );
		$panotype = $this->params->get( 'panotype', 'none' );
		$panoorder = $this->params->get( 'panoorder', 'popularity' );
		$panomax = $this->params->get( 'panomax', '50' );
		$youtube = $this->params->get( 'youtube', 'none' );
		$wiki = $this->params->get( 'wiki', 'none' );
		$adsmanager = $this->params->get( 'adsmanager', '0' );
		$maxads = $this->params->get( 'maxads', '3' );
		$localsearch = $this->params->get( 'localsearch', '0' );
		$adsense = $this->params->get( 'adsense', '' );
		$channel = $this->params->get( 'channel', '' );
		$googlebar = $this->params->get( 'googlebar', '0' );
		$searchlist = $this->params->get( 'searchlist', '0' );
		$searchtarget = $this->params->get( 'searchtarget', '0' );
		$searchzoompan = $this->params->get( 'searchzoompan', '1' );
		$txt_get_dir = $this->params->get( 'txtgetdir', 'Get Directions' );
		$txt_from = $this->params->get( 'txtfrom', '' );
		$txt_to = $this->params->get( 'txtto', '' );
		$txt_diraddr = $this->params->get( 'txtdiraddr', 'Address: ' );
		$txt_dir = $this->params->get( 'txtdir', 'Directions: ' );
		$txt_driving = $this->params->get( 'txt_driving', '' );
		$txt_avhighways = $this->params->get( 'txt_avhighways', '' );
		$txt_walking = $this->params->get( 'txt_walking', '' );
		$dirdef = $this->params->get( 'dirdefault', '0' );
		$showdir = $this->params->get( 'showdir', '1' );
		$lightbox = $this->params->get( 'lightbox', '0' );
		$lbxwidth = $this->params->get( 'lbxwidth', '100%' );
		$lbxheight = $this->params->get( 'lbxheight', '700px' );
		$txtlightbox = $this->params->get( 'txtlightbox', 'Open lightbox' );
		$lbxcaption =  $this->params->get( 'lbxcaption', '' );
		$lbxzoom =  $this->params->get( 'lbxzoom', '' );
		$effect = $this->params->get( 'effect', 'none' );
		$kmlrenderer = $this->params->get( 'kmlrenderer', 'google' );
		$kmlsidebar = $this->params->get( 'kmlsidebar', 'none' );
		$kmllightbox = $this->params->get( 'kmllightbox', '0' );
		$kmlsbwidth = $this->params->get( 'kmlsbwidth', '200' );
		$kmlfoldersopen = $this->params->get( 'kmlfoldersopen', '0' );
		$kmlopenmethod = $this->params->get( 'kmlopenmethod', 'click' );
		$kmlsbsort = $this->params->get( 'kmlsbsort', 'none' );
		$kmlmessshow = $this->params->get( 'kmlmessshow', '0' );
		$kmlclickablemarkers = $this->params->get( 'kmlclickablemarkers', '1' );			
		$kmlopendivmarkers = $this->params->get( 'kmlopendivmarkers', '' );			
		$kmlcontentlinkmarkers = $this->params->get( 'kmlcontentlinkmarkers', '0' );			
		$kmllinkablemarkers = $this->params->get( 'kmllinkablemarkers', '0' );
		$kmllinktarget = $this->params->get( 'kmllinktarget', '' );
		$kmllinkmethod = $this->params->get( 'kmllinkmethod', '' );
		$kmlmarkerlabel = $this->params->get( 'kmlmarkerlabel', '' );
		$kmlmarkerlabelclass = $this->params->get( 'kmlmarkerlabelclass', '' );
		$kmlpolylabel = $this->params->get( 'kmlpolylabel', '' );
		$kmlpolylabelclass = $this->params->get( 'kmlpolylabelclass', '' );
		$sv = $this->params->get( 'sv', 'none' );
		$svwidth = $this->params->get( 'svwidth', '100%' );
		$svheight = $this->params->get( 'svheight', '300' );
		$svyaw = $this->params->get( 'svyaw', '0' );
		$svpitch = $this->params->get( 'svpitch', '0' );
		$svzoom = $this->params->get( 'svzoom', '' );
		$earthtimeout = $this->params->get( 'earthtimeout', '100' );
		$earthborders = $this->params->get( 'earthborders', '0' );
		$earthbuildings = $this->params->get( 'earthbuildings', '0' );
		$earthroads = $this->params->get( 'earthroads', '0' );
		$earthterrain = $this->params->get( 'earthterrain', '0' );
		$maxcluster=$this->params->get( 'maxcluster', '' );
		$gridsize=$this->params->get( 'gridsize', '' );
		$minmarkerscluster=$this->params->get( 'minmarkerscluster', '' );
		$maxlinesinfocluster=$this->params->get( 'maxlinesinfocluster', '' );
		$clusterinfowindow=$this->params->get( 'clusterinfowindow', 'click' );
		$clusterzoom=$this->params->get( 'clusterzoom', 'dblclick' );
		$clustermarkerzoom=$this->params->get( 'clustermarkerzoom', '16' );
		$tilelayer=$this->params->get( 'tilelayer', '' );
		$tileopacity=$this->params->get( 'tileopacity', '1' );
		$tilebounds=$this->params->get( 'tilebounds', '' );
		$tileminzoom=$this->params->get( 'tileminzoom', '0' );
		$tilemaxzoom=$this->params->get( 'tilemaxzoom', '19' );
		$tilemethod=$this->params->get( 'tilemethod', '' );

		// Next parameters can be set as default out of the administrtor module or stay empty and the plugin-code decides the default. 
		$zoomType = $this->params->get( 'zoomType', '' );
		$mapType = strtolower($this->params->get( 'mapType', '' )); 

		// default empty and should be filled as a parameter with the plugin out of the content item
		$code='';
		$lbcode='';
		$lang = $this->language;
		$mapclass='';
		$tolat='';
		$tolon='';
		$toaddress='';
		$description='';
		$tooltip='';
		$kml = array();
		$kmlsb = array();
		$layer = array();
		$lookat = array();
		$camera = array();
		$msid='';
		$client_geo = 0;
		$show = 1;
		$imageurl='';
		$imagex='';
		$imagey='';
		$imagexyunits='';
		$imagewidth='';
		$imageheight='';
		$imageanchorx='';
		$imageanchory='';
		$imageanchorunits='';
		$searchtext='';
		$latitude='';
		$longitude='';
		$waypoints = array();

		// Give the map a random name so it won't interfere with another map
		$mapnm = $this->id."_".$this->_randomkeys(5)."_".$counter;

		//track if coordinates different from config
		$inline_coords = 0;
		$inline_tocoords = 0;
		$geocoded = 0;
		
		// Match the field details to build the html
		$fields = explode("|", $params);

		foreach($fields as $value) {
			$value=trim($value);
			$values = explode("=",$value, 2);
			$values[0] = trim(strtolower($values[0]));
			$values=preg_replace("/^'/", '', $values);
			$values=preg_replace("/'$/", '', $values);
			$values=preg_replace("/^&#0{0,2}39;/",'',$values);
			$values=preg_replace("/&#0{0,2}39;$/",'',$values);

			if (count($values)>1)
				$values[1] = trim($values[1]);

			if($values[0]=='debug'){
				$this->debug_plugin=$values[1];
			}else if($values[0]=='mapname'){
				$mapnm=$values[1];
			}else if($values[0]=='mapclass'){
				$mapclass=$values[1];
			}else if($values[0]=='googleindexing'){
				$googleindexing=$values[1];
			}else if($values[0]=='width'){
				$width=$values[1];
			}else if($values[0]=='height'){
				$height=$values[1];
			}else if($values[0]=='lat'&&$values[1]!=''){
				$latitude=$this->_remove_html_tags($values[1]);
				$inline_coords = 1;
			}else if($values[0]=='lon'&&$values[1]!=''){
				$longitude=$this->_remove_html_tags($values[1]);
				$inline_coords = 1;
			}else if($values[0]=='centerlat'){
				$centerlat=$this->_remove_html_tags($values[1]);
				$inline_coords = 1;
			}else if($values[0]=='centerlon'){
				$centerlon=$this->_remove_html_tags($values[1]);
				$inline_coords = 1;
			}else if($values[0]=='tolat'){
				$tolat=$this->_remove_html_tags($values[1]);
				$inline_tocoords = 1;
			}else if($values[0]=='tolon'){
				$tolon=$this->_remove_html_tags($values[1]);
				$inline_tocoords = 1;
			}else if($values[0]=='zoom'){
				$zoom=$values[1];
			}else if($values[0]=='corzoom'){
				$corzoom=$values[1];
			}else if($values[0]=='minzoom'){
				$minzoom=$values[1];
			}else if($values[0]=='maxzoom'){
				$maxzoom=$values[1];
			}else if($values[0]=='controltype'){
				$controltype=$values[1];
			}else if($values[0]=='keyboard'){
				$keyboard=$values[1];
			}else if($values[0]=='zoomtype'){
				$zoomType=$values[1];
			}else if($values[0]=='rotation'){
				$rotation=$values[1];
			}else if($values[0]=='text'){
				$description=html_entity_decode(html_entity_decode(trim($values[1])));
				$description=str_replace("\"","\\\"", $description);
				$description=str_replace("&#0{0,2}39;","'", $description);
			}else if($values[0]=='tooltip'){
				$tooltip=trim($values[1]);
				$tooltip=str_replace("&amp;","&", $tooltip);
			}else if($values[0]=='maptype'){
				$mapType=strtolower($values[1]);
			}else if($values[0]=='showmaptype'){
				$showmaptype=$values[1];
			}else if($values[0]=='showterrainmaptype'){
				$showterrainmaptype=$values[1];
			}else if($values[0]=='showearthmaptype'){
				$showearthmaptype=$values[1];
			}else if($values[0]=='showscale'){
				$showscale=$values[1];
			}else if($values[0]=='zoomnew'){
				$zoom_new=$values[1];
			}else if($values[0]=='zoomwheel'){
				$zoom_wheel=$values[1];
			}else if($values[0]=='overview'){
				$overview=$values[1];
			}else if($values[0]=='navlabel'){
				$navlabel=$values[1];
			}else if($values[0]=='dragging'){
				$dragging=$values[1];
			}else if($values[0]=='marker'){
				$marker=$values[1];
			}else if($values[0]=='icon'){
				$icon=$values[1];
			}else if($values[0]=='iconwidth'){
				$iconwidth=$values[1];
			}else if($values[0]=='iconheight'){
				$iconheight=$values[1];
			}else if($values[0]=='iconshadow'){
				$iconshadow=$values[1];
			}else if($values[0]=='iconshadowwidth'){
				$iconshadowwidth=$values[1];
			}else if($values[0]=='iconshadowheight'){
				$iconshadowheight=$values[1];
			}else if($values[0]=='iconshadowanchorx'){
				$iconshadowanchorx=$values[1];
			}else if($values[0]=='iconshadowanchory'){
				$iconshadowanchory=$values[1];
			}else if($values[0]=='iconanchorx'){
				$iconanchorx=$values[1];
			}else if($values[0]=='iconanchory'){
				$iconanchory=$values[1];
			}else if($values[0]=='iconinfoanchorx'){
				$iconinfoanchorx=$values[1];
			}else if($values[0]=='iconinfoanchory'){
				$iconinfoanchory=$values[1];
			}else if($values[0]=='icontransparent'){
				$icontransparent=$values[1];
			}else if($values[0]=='iconimagemap'){
				$iconimagemap=$values[1];
			}else if($values[0]=='address'){
				$address=trim($values[1]);
			}else if($values[0]=='toaddress'){
				$toaddress=trim($values[1]);
			}else if(($this->brackets=='both'||$this->brackets=='[')&&preg_match("/waypoint\([0-9]+\)/", $values[0])){
				$waypoints[$this->_get_index($values[0], '(')] = $values[1];
			}else if(($this->brackets=='both'||$this->brackets=='{')&&preg_match("/waypoint\[[0-9]+\]/", $values[0])){
				$waypoints[$this->_get_index($values[0], '[')] = $values[1];
			}else if($values[0]=='gotoaddr'){
				$gotoaddr=$values[1];
			}else if($values[0]=='gotoaddrzoom'){
				$gotoaddrzoom=$values[1];
			}else if($values[0]=='align'){
				$align=$values[1];
			}else if($values[0]=='lang'){
				$lang=$values[1];
			}else if($values[0]=='kml'){
				$kml[0]=$this->_remove_html_tags($values[1]);
			}else if(($this->brackets=='both'||$this->brackets=='[')&&preg_match("/kml\([0-9]+\)/", $values[0])){
				$kml[$this->_get_index($values[0], '(')] = $this->_remove_html_tags($values[1]);
			}else if(($this->brackets=='both'||$this->brackets=='{')&&preg_match("/kml\[[0-9]+\]/", $values[0])){
				$kml[$this->_get_index($values[0], '[')] = $this->_remove_html_tags($values[1]);
			}else if($values[0]=='kmlsb'){
				$kmlsb[0]=$this->_remove_html_tags($values[1]);
			}else if(($this->brackets=='both'||$this->brackets=='[')&&preg_match("/kmlsb\([0-9]+\)/", $values[0])){
				$kmlsb[$this->_get_index($values[0], '(')] = $this->_remove_html_tags($values[1]);
			}else if(($this->brackets=='both'||$this->brackets=='{')&&preg_match("/kmlsb\[[0-9]+\]/", $values[0])){
				$kmlsb[$this->_get_index($values[0], '[')] = $this->_remove_html_tags($values[1]);
			}else if($values[0]=='layer'){
				$layer[0]=$this->_remove_html_tags($values[1]);
			}else if(($this->brackets=='both'||$this->brackets=='[')&&preg_match("/layer\([0-9]+\)/", $values[0])){
				$layer[$this->_get_index($values[0], '(')] = $this->_remove_html_tags($values[1]);
			}else if(($this->brackets=='both'||$this->brackets=='{')&&preg_match("/layer\[[0-9]+\]/", $values[0])){
				$layer[$this->_get_index($values[0], '[')] = $this->_remove_html_tags($values[1]);
			}else if($values[0]=='msid'){
				$msid=$values[1];
			}else if($values[0]=='traffic'){
				$traffic=$values[1];
			}else if($values[0]=='panoramio'){
				$panoramio=$values[1];
			}else if($values[0]=='panotype'){
				$panotype=$values[1];
			}else if($values[0]=='panoorder'){
				$panoorder=$values[1];
			}else if($values[0]=='panomax'){
				$panomax=$values[1];
			}else if($values[0]=='youtube'){
				$youtube=$values[1];
			}else if($values[0]=='wiki'){
				$wiki=$values[1];
			}else if($values[0]=='adsmanager'){
				$adsmanager=$values[1];
			}else if($values[0]=='maxads'){
				$maxads=$values[1];
			}else if($values[0]=='localsearch'){
				$localsearch=$values[1];
			}else if($values[0]=='adsense'){
				$adsense=$values[1];
			}else if($values[0]=='channel'){
				$channel=$values[1];
			}else if($values[0]=='googlebar'){
				$googlebar=$values[1];
			}else if($values[0]=='searchtext'){
				$searchtext=$values[1];
			}else if($values[0]=='searchlist'){
				$searchlist=$values[1];
			}else if($values[0]=='searchtarget'){
				$searchtarget=$values[1];
			}else if($values[0]=='searchzoompan'){
				$searchzoompan=$values[1];
			}else if($values[0]=='dir'){
				$dir=$values[1];
			}else if($values[0]=='dirtype'){
				$dirtype=$values[1];
			}else if($values[0]=='avoidhighways'){
				$avoidhighways=$values[1];
			}else if($values[0]=='showdir'){
				$showdir=$values[1];
			}else if($values[0]=='animdir'){
				$animdir=$values[1];
			}else if($values[0]=='animspeed'){
				$animspeed=$values[1];
			}else if($values[0]=='animautostart'){
				$animautostart=$values[1];
			}else if($values[0]=='animunit'){
				$animunit=$values[1];
			}else if($values[0]=='formspeed'){
				$formspeed=$values[1];
			}else if($values[0]=='formdirtype'){
				$formdirtype=$values[1];
			}else if($values[0]=='formaddress'){
				$formaddress=$values[1];
			}else if($values[0]=='txt_get_dir'){
				$txt_get_dir=$values[1];
			}else if($values[0]=='txt_from'){
				$txt_from=$values[1];
			}else if($values[0]=='txt_to'){
				$txt_to=$values[1];
			}else if($values[0]=='txt_diraddr'){
				$txt_diraddr=$values[1];
			}else if($values[0]=='txt_dir'){
				$txt_dir=$values[1];
			}else if($values[0]=='lightbox'){
				$lightbox=$values[1];
			}else if($values[0]=='lbxwidth'){
				$lbxwidth=$values[1];
			}else if($values[0]=='lbxheight'){
				$lbxheight=$values[1];
			}else if($values[0]=='lbxcaption'){
				$lbxcaption=$values[1];
			}else if($values[0]=='txtlightbox'){
				$txtlightbox=$values[1];
			}else if($values[0]=='lbxcenterlat'){
				$lbxcenterlat=$values[1];
			}else if($values[0]=='lbxcenterlon'){
				$lbxcenterlon=$values[1];
			}else if($values[0]=='lbxzoom'){
				$lbxzoom=$values[1];
			}else if($values[0]=='show'){
				$show=$values[1];
			}else if($values[0]=='imageurl'){
				$imageurl=$values[1];
			}else if($values[0]=='imagex'){
				$imagex=$values[1];
			}else if($values[0]=='imagey'){
				$imagey=$values[1];
			}else if($values[0]=='imagexyunits'){
				$imagexyunits=$values[1];
			}else if($values[0]=='imagewidth'){
				$imagewidth=$values[1];
			}else if($values[0]=='imageheight'){
				$imageheight=$values[1];
			}else if($values[0]=='imageanchorx'){
				$imageanchorx=$values[1];
			}else if($values[0]=='imageanchory'){
				$imageanchory=$values[1];
			}else if($values[0]=='imageanchorunits'){
				$imageanchorunits=$values[1];
			}else if($values[0]=='kmlrenderer'){
				$kmlrenderer=$values[1];
			}else if($values[0]=='kmlsidebar'){
				$kmlsidebar=$values[1];
			}else if($values[0]=='kmllightbox'){
				$kmllightbox=$values[1];
			}else if($values[0]=='kmlsbwidth'){
				$kmlsbwidth=$values[1];
			}else if($values[0]=='kmlfoldersopen'){
				$kmlfoldersopen=$values[1];
			}else if($values[0]=='kmlopenmethod'){
				$kmlopenmethod=$values[1];
			}else if($values[0]=='kmlsbsort'){
				$kmlsbsort=$values[1];
			}else if($values[0]=='kmlmessshow'){
				$kmlmessshow =$values[1];
			}else if($values[0]=='kmlclickablemarkers'){
				$kmlclickablemarkers =$values[1];
			}else if($values[0]=='kmlopendivmarkers'){
				$kmlopendivmarkers =$values[1];
			}else if($values[0]=='kmlcontentlinkmarkers'){
				$kmlcontentlinkmarkers =$values[1];
			}else if($values[0]=='kmllinkablemarkers'){
				$kmllinkablemarkers =$values[1];
			}else if($values[0]=='kmllinktarget'){
				$kmllinktarget =$values[1];
			}else if($values[0]=='kmllinkmethod'){
				$kmllinkmethod =$values[1];
			}else if($values[0]=='kmlmarkerlabel'){
				$kmlmarkerlabel =$values[1];
			}else if($values[0]=='kmlmarkerlabelclass'){
				$kmlmarkerlabelclass =$values[1];
			}else if($values[0]=='kmlpolylabel'){
				$kmlpolylabel =$values[1];
			}else if($values[0]=='kmlpolylabelclass'){
				$kmlpolylabelclass =$values[1];
			}else if($values[0]=='sv'){
				$sv =$values[1];
			}else if($values[0]=='svwidth'){
				$svwidth =$values[1];
			}else if($values[0]=='svheight'){
				$svheight=$values[1];
			}else if($values[0]=='svyaw'){
				$svyaw=$values[1];
			}else if($values[0]=='svpitch'){
				$svpitch=$values[1];
			}else if($values[0]=='svzoom'){
				$svzoom=$values[1];
			}else if($values[0]=='lookat'){
				$lookat[0]=$values[1];
			}else if(($this->brackets=='both'||$this->brackets=='[')&&preg_match("/lookat\([0-9]+\)/", $values[0])){
				$lookat[$this->_get_index($values[0], '(')] = $values[1];
			}else if(($this->brackets=='both'||$this->brackets=='{')&&preg_match("/lookat\[[0-9]+\]/", $values[0])){
				$lookat[$this->_get_index($values[0], '[')] = $values[1];
			}else if($values[0]=='camera'){
				$camera[0]=$values[1];
			}else if(($this->brackets=='both'||$this->brackets=='[')&&preg_match("/camera\([0-9]+\)/", $values[0])){
				$camera[$this->_get_index($values[0], '(')] = $values[1];
			}else if(($this->brackets=='both'||$this->brackets=='{')&&preg_match("/camera\[[0-9]+\]/", $values[0])){
				$camera[$this->_get_index($values[0], '[')] = $values[1];
			}else if($values[0]=='earthbuildings'){
				$earthbuildings=$values[1];
			}else if($values[0]=='earthborders'){
				$earthborders=$values[1];
			}else if($values[0]=='earthroads'){
				$earthroads=$values[1];
			}else if($values[0]=='earthterrain'){
				$earthterrain=$values[1];
			}else if($values[0]=='maxcluster'){
				$maxcluster=$values[1];
			}else if($values[0]=='gridsize'){
				$gridsize=$values[1];
			}else if($values[0]=='minmarkerscluster'){
				$minmarkerscluster=$values[1];
			}else if($values[0]=='maxlinesinfocluster'){
				$maxlinesinfocluster=$values[1];
			}else if($values[0]=='clusterinfowindow'){
				$clusterinfowindow=$values[1];
			}else if($values[0]=='clusterzoom'){
				$clusterzoom=$values[1];
			}else if($values[0]=='clustermarkerzoom'){
				$clustermarkerzoom=$values[1];
			}else if($values[0]=='tilelayer'){
				$tilelayer=$this->_remove_html_tags($values[1]);
			}else if($values[0]=='tileopacity'){
				$tileopacity=$values[1];
			}else if($values[0]=='tilebounds'){
				$tilebounds=$values[1];
			}else if($values[0]=='tileminzoom'){
				$tileminzoom=$values[1];
			}else if($values[0]=='tilemaxzoom'){
				$tilemaxzoom=$values[1];
			}else if($values[0]=='tilemethod'){
				$tilemethod=$values[1];
			}
		}
		
		//Translate parameters
		$erraddr = $this->_translate($erraddr, $lang);
		$txtaddr = $this->_translate($txtaddr, $lang);
		$txtaddr = str_replace(array("\r\n", "\r", "\n"), '', $txtaddr );
		$txt_get_dir = $this->_translate($txt_get_dir, $lang);
		$txt_from = $this->_translate($txt_from, $lang);
		$txt_to = $this->_translate($txt_to, $lang);
		$txt_diraddr = $this->_translate($txt_diraddr, $lang);
		$txt_dir = $this->_translate($txt_dir, $lang);
		$txtlightbox = $this->_translate($txtlightbox, $lang);
		$txt_driving = $this->_translate($txt_driving, $lang);
		$txt_avhighways = $this->_translate($txt_avhighways, $lang);
		$txt_walking = $this->_translate($txt_walking, $lang);
		$langanim = $this->_translate($this->langanim, $lang);
		$langanim = explode("|", $langanim);

		$this->_debug_log("clientgeotype: ".$clientgeotype);

		if($inline_coords == 0 && !empty($address))	{
			if ($clientgeotype=="local")
				$coord = "";
			else
				$coord = $this->get_geo($address);
				
			if ($coord=='') {
				$client_geo = 1;
			} else {
				list ($longitude, $latitude, $altitude) = explode(",", $coord);
				$inline_coords = 1;
				$geocoded = 1;
			}
		}

		if($inline_tocoords == 0 && !empty($toaddress))	{
			$tocoord = $this->get_geo($toaddress);
			if ($tocoord=='') {
				$client_togeo = 1;
			} else {
				list ($tolon, $tolat, $altitude) = explode(",", $tocoord);
				$inline_tocoords = 1;
			}
		}

		if (is_numeric($svwidth)) 
			$svwidth .= "px";
			
		if (is_numeric($svheight))
			$svheight.= "px";

		if (is_numeric($kmlsbwidth)) {
			$kmlsbwidthorig = $kmlsbwidth;
			$kmlsbwidth .= "px";
		} else 
			$kmlsbwidthorig = 0;
			
		$lbxwidthorig = $lbxwidth;
		
		if (is_numeric($lbxwidth))
			$lbxwidth .= "px";
		
		if (is_numeric($lbxheight))
			$lbxheight .= "px";
			
		if (is_numeric($width))
			$width .= "px";
			
		if (is_numeric($height))
			$height .= "px";

		if (!is_numeric($panomax))
			$panomax= "50";
			
		if ($msid!=''&&count($kml)==0) {
			$kml[0]=$this->protocol.$this->googlewebsite.'/maps/ms?';
			if ($lang!='')
				$kml[0] .= "hl=".$lang."&amp;";
			$kml[0].='ie='.$this->iso.'&amp;msa=0&amp;msid='.$msid.'&amp;output=kml';
			$this->_debug_log("- msid: ".$kml[0]);
		}
		
		if ($googlebar=='1'||$localsearch=='1') {
			$searchoption = array();

			switch ($searchlist) {
			case "suppress":
				$searchoption[] ="resultList : G_GOOGLEBAR_RESULT_LIST_SUPPRESS";
				break;
			
			case "inline":
				$searchoption[] ="resultList : G_GOOGLEBAR_RESULT_LIST_INLINE";
				break;

			case "div":
				$searchoption[] ="resultList : document.getElementById('searchresult".$mapnm."')";
				break;

			default:
				if(empty($searchlist))
					$searchoption[] ="resultList : G_GOOGLEBAR_RESULT_LIST_INLINE";
				else {
					$searchoption[] ="resultList : document.getElementById('".$searchlist."')";
					$extsearchresult= true;
				}
				break;
			}
			
			switch ($searchtarget) {
			case "_self":
				$searchoption[] ="linkTarget : G_GOOGLEBAR_LINK_TARGET_SELF";
				break;
			
			case "_blank":
				$searchoption[] ="linkTarget : G_GOOGLEBAR_LINK_TARGET_BLANK";
				break;

			case "_top":
				$searchoption[] ="linkTarget : G_GOOGLEBAR_LINK_TARGET_TOP";
				break;

			case "_parent":
				$searchoption[] ="linkTarget : G_GOOGLEBAR_LINK_TARGET_PARENT";
				break;

			default:
				$searchoption[] ="linkTarget : G_GOOGLEBAR_LINK_TARGET_BLANK";
				break;
			}
			
			if ($searchzoompan=="1")
				$searchoption[] ="suppressInitialResultSelection : false
								  , suppressZoomToBounds : false";
			else

				$searchoption[] ="suppressInitialResultSelection : true
								  , suppressZoomToBounds : true";
								  
			$searchoptions = implode(', ', $searchoption);
		} else 
			$searchoptions = "";

		if ($icon!='') {
			$code .= "\n<img src='".$icon."' style='display:none' alt='icon' />";
			if ($iconshadow!='')
				$code .= "\n<img src='".$iconshadow."' style='display:none' alt='icon shadow' />";
			if ($icontransparent!='')
				$code .= "\n<img src='".$icontransparent."' style='display:none' alt='icon transparent' />";
		} 
		
		if ($sv!='none'&&$animdir=='0') {
			$code .= "\n<img src='".$this->base."/media/plugin_googlemap2/site/StreetViewControl/images/images/man_arrow-0.png' style='display:none' alt='streetview icon' />";
			$code .= "\n<img src='".$this->base."/media/plugin_googlemap2/site/StreetViewControl/images/images/man_arrow-1.png' style='display:none' alt='streetview icon' />";
			$code .= "\n<img src='".$this->base."/media/plugin_googlemap2/site/StreetViewControl/images/images/man_arrow-2.png' style='display:none' alt='streetview icon' />";
			$code .= "\n<img src='".$this->base."/media/plugin_googlemap2/site/StreetViewControl/images/images/man_arrow-3.png' style='display:none' alt='streetview icon' />";
			$code .= "\n<img src='".$this->base."/media/plugin_googlemap2/site/StreetViewControl/images/images/man_arrow-4.png' style='display:none' alt='streetview icon' />";
			$code .= "\n<img src='".$this->base."/media/plugin_googlemap2/site/StreetViewControl/images/images/man_arrow-5.png' style='display:none' alt='streetview icon' />";
			$code .= "\n<img src='".$this->base."/media/plugin_googlemap2/site/StreetViewControl/images/images/man_arrow-6.png' style='display:none' alt='streetview icon' />";
			$code .= "\n<img src='".$this->base."/media/plugin_googlemap2/site/StreetViewControl/images/images/man_arrow-7.png' style='display:none' alt='streetview icon' />";
			$code .= "\n<img src='".$this->base."/media/plugin_googlemap2/site/StreetViewControl/images/images/man_arrow-8.png' style='display:none' alt='streetview icon' />";
			$code .= "\n<img src='".$this->base."/media/plugin_googlemap2/site/StreetViewControl/images/images/man_arrow-9.png' style='display:none' alt='streetview icon' />";
			$code .= "\n<img src='".$this->base."/media/plugin_googlemap2/site/StreetViewControl/images/images/man_arrow-10.png' style='display:none' alt='streetview icon' />";
			$code .= "\n<img src='".$this->base."/media/plugin_googlemap2/site/StreetViewControl/images/images/man_arrow-11.png' style='display:none' alt='streetview icon' />";
			$code .= "\n<img src='".$this->base."/media/plugin_googlemap2/site/StreetViewControl/images/images/man_arrow-12.png' style='display:none' alt='streetview icon' />";
			$code .= "\n<img src='".$this->base."/media/plugin_googlemap2/site/StreetViewControl/images/images/man_arrow-13.png' style='display:none' alt='streetview icon' />";
			$code .= "\n<img src='".$this->base."/media/plugin_googlemap2/site/StreetViewControl/images/images/man_arrow-14.png' style='display:none' alt='streetview icon' />";
			$code .= "\n<img src='".$this->base."/media/plugin_googlemap2/site/StreetViewControl/images/images/man_arrow-15.png' style='display:none' alt='streetview icon' />";
		}
		// Generate the map position prior to any Google Scripts so that these can parse the code
		$code.= "<!-- fail nicely if the browser has no Javascript -->
				<noscript><blockquote class='warning'><p>".$this->no_javascript."</p></blockquote></noscript>";			

		if ($align!='none')
			$code.="<div id='mapbody".$mapnm."' style=\"display: none; text-align:".$align."\">";
		else
			$code.="<div id='mapbody".$mapnm."' style=\"display: none;\">";

		if ($lightbox=='1') {
			$lboptions = array();
			if (!empty($lbxzoom))
				$lboptions[] = "zoom : ".$lbxzoom;
			if (!empty($lbxcenterlat)&&!empty($lbxcenterlon))
				$lboptions[] = "mapcenter : \"".$lbxcenterlat." ".$lbxcenterlon."\"";

			$lbxwidthorig = (is_numeric($lbxwidthorig)?(($kmlsidebar=="left"||$kmlsidebar=="right")?$lbxwidthorig+$kmlsbwidthorig+5:$lbxwidthorig)."px":$lbxwidthorig);
			$lbname = (($gotoaddr=='1'||(($kmlrenderer=="google"&&count($kmlsb)!=0)||($kmlrenderer=="geoxml"&&(count($kml)!=0||count($kmlsb)!=0))&&($kmlsidebar=="left"||$kmlsidebar=="right"))||$animdir!='0'||$sv=='top'||$sv=='bottom'||$searchlist=='div'||$dir=='5')?"lightbox":"googlemap");
			
			if ($show==1) {
				$code.="<a href='javascript:void(0)' onclick='javascript:MOOdalBox.open(\"".$lbname.$mapnm."\", \"".$lbxcaption."\", \"".$lbxwidthorig." ".$lbxheight."\", map".$mapnm.", {".implode(",",$lboptions)."});return false;' class='lightboxlink'>".html_entity_decode($txtlightbox)."</a>";
				$code .= "<div id='lightbox".$mapnm."'>";
			} else {
				$lbcode.="<a href='javascript:void(0)' onclick='javascript:MOOdalBox.open(\"".$lbname.$mapnm."\", \"".$lbxcaption."\", \"".$lbxwidthorig." ".$lbxheight."\", map".$mapnm.", {".implode(",",$lboptions)."});return false;' class='lightboxlink'>".html_entity_decode($txtlightbox)."</a>";
				$code .= "<div id='lightbox".$mapnm."' style='display:none'>";
			}
		}

		if ($gotoaddr=='1')	{
			$code.="<form name=\"gotoaddress".$mapnm."\" class=\"gotoaddress\" onSubmit=\"javascript:gotoAddress".$mapnm."();return false;\">";
			$code.="	<input id=\"txtAddress".$mapnm."\" name=\"txtAddress".$mapnm."\" type=\"text\" size=\"25\" value=\"\">";
			$code.="	<input name=\"goto\" type=\"button\" class=\"button\" onClick=\"gotoAddress".$mapnm."();return false;\" value=\"Goto\">";
			$code.="</form>";
		}
		
		if ($formaddress==1&&$animdir==0) {
			$code.="<form id='directionform".$mapnm."' action='".$this->protocol.$this->googlewebsite."/maps' method='get' target='_blank' onsubmit='DirectionMarkersubmit".$mapnm."(this);return false;' class='mapdirform'>";
			$code.="<br />".$txt_dir;
			$code.="<br />".$txt_from."<input type='text' class='inputbox' size='20' name='saddr' id='saddr' value='".$address."' />";
			$code.="<br />".$txt_to."<input type='text' class='inputbox' size='20' name='daddr' id='daddr' value='".$toaddress."'/>";

			if ($txt_driving!=''||$dirtype=="D")
				$code.="<br/><input ".(($txt_driving=='')?"type='hidden' ":"type='radio' ")."class='radio' name='dirflg' value='' ".(($dirtype=="D")?"checked='checked'":"")." />".$txt_driving.(($txt_driving!='')?"&nbsp;":"");
			if ($txt_avhighways!=''||$dirtype=="1")
				$code.="<input ".(($txt_avhighways=='')?"type='hidden' ":"type='radio' ")."class='radio' name='dirflg' value='h' ".(($avoidhighways=='1')?"checked='checked'":"")." />".$txt_avhighways.(($txt_avhighways!='')?"&nbsp;":"");
			if ($txt_walking!=''||$dirtype=="W")
				$code.="<input ".(($txt_walking=='')?"type='hidden' ":"type='radio' ")."class='radio' name='dirflg' value='w' ".(($dirtype=="W")?"checked='checked'":"")." />".$txt_walking.(($txt_walking!='')?"&nbsp;":"");
			$code.="<input value='".$txt_get_dir."' class='button' type='submit' style='margin-top: 2px;'>";
			
			if ($dir=='2')
				$code.= "<input type='hidden' name='pw' value='2'/>";

			if ($lang!='') 
				$code.= "<input type='hidden' name='hl' value='".$lang."'/>";
			$code.="</form>";
		}
		
		if ((($kmlrenderer=="google"&&count($kmlsb)!=0)||($kmlrenderer=="geoxml"&&(count($kml)!=0||count($kmlsb)!=0)))&&($kmlsidebar=="left"||$kmlsidebar=="right"))
			$code.="<table style=\"width:100%;border-spacing:0px;\">
					<tr>";

		if ((($kmlrenderer=="google"&&count($kmlsb)!=0)||($kmlrenderer=="geoxml"&&(count($kml)!=0||count($kmlsb)!=0)))&&$kmlsidebar=="left")
			$code.="<td style=\"width:".$kmlsbwidth.";height:".$height.";vertical-align:top;\"><div id=\"kmlsidebar".$mapnm."\" class=\"kmlsidebar\" style=\"align:left;width:".$kmlsbwidth.";height:".$height.";overflow:auto;\"></div></td>";

		if ((($kmlrenderer=="google"&&count($kmlsb)!=0)||($kmlrenderer=="geoxml"&&(count($kml)!=0||count($kmlsb)!=0)))&&($kmlsidebar=="left"||$kmlsidebar=="right"))
			$code.="<td>";
			
		if ($sv=='top'||($animdir!='0'&&$animdir!='3')) {
			$code.="<div id='svpanel".$mapnm."' class='svPanel' style='width:".$svwidth."; height:".$svheight."'><div id='svpanorama".$mapnm."' class='streetview' style='width:".$svwidth."; height:".$svheight.(($kmlsidebar=="right")?"float:left;":"").";'></div>";

			if ($animdir!='0') {
				$code.="<div id='status".$mapnm."' class='status' style='top: -".floor($svheight/2)."px'><b>Loading</b></div><div id='instruction".$mapnm."' class='instruction'></div></div><div id='progressBorder".$mapnm."' class='progressBorder'><div id='progressBar".$mapnm."' class='progressBar'></div></div>";
				$code.= "<div class='animforms'>";
				$code.= "<div class='animbuttonforms'><input type='button' value='Drive' id='stopgo".$mapnm."'  onclick='route".$mapnm.".startDriving()'  disabled='disabled' /></div>";

				if ($formspeed==1)
					$code.= "<div class='animformspeed'>
								<div class='animlabel'>".((array_key_exists(16, $langanim))?$langanim[16]:"Drive")."</div>
								<select id='speed".$mapnm."' onchange='route".$mapnm.".setSpeed()'>
									<option value='0'>".((array_key_exists(17, $langanim))?$langanim[17]:"Fast")."</option>
									<option value='1' selected='selected'>".((array_key_exists(18, $langanim))?$langanim[18]:"Normal")."</option>
									<option value='2'>".((array_key_exists(19, $langanim))?$langanim[19]:"Slow")."</option>
								</select>
							</div>";

				if ($formdirtype==1)
					$code.= "<div class='animformdirtype'>
								<input ".(($txt_driving=='')?"type='hidden' ":"type='radio' ")."class='radio' name='dirflg".$mapnm."' value='' ".(($dirtype=="D")?"checked='checked'":"")." />".$txt_driving.(($txt_driving!='')?"&nbsp;":"")."<br />
								<input ".(($txt_avhighways=='')?"type='hidden' ":"type='radio' ")."class='radio' name='dirflg".$mapnm."' value='h' ".(($avoidhighways=='1')?"checked='checked'":"")." />".$txt_avhighways.(($txt_avhighways!='')?"&nbsp;":"")."<br />
								<input ".(($txt_walking=='')?"type='hidden' ":"type='radio' ")."class='radio' name='dirflg".$mapnm."' value='w' ".(($dirtype=="W")?"checked='checked'":"")." />".$txt_walking.(($txt_walking!='')?"&nbsp;":"")."<br />
							</div>";

				if ($formaddress==1)
					$code.= "<div class='animformaddress'>
								".(($txt_from=='')?"":"<div class='animlabel'>".$txt_from."</div>")."
								<div class='animinput'><input id='from".$mapnm."' ".(($txt_from=='')?"type='hidden' ":"")." size='30' value='".$address."'/></div>
								<div style='clear: both;'></div>
								".(($txt_to=='')?"":"<div class='animlabel'>".$txt_to."</div>")."
								<div class='animinput'><input id='to".$mapnm."' ".(($txt_to=='')?"type='hidden' ":"")." size='30' value='".$toaddress."'/></div>
							</div>
							<div class='animbuttons'>
								<input type='button' value='".((array_key_exists(15, $langanim))?$langanim[15]:"Route")."' class='animroute' onclick='route".$mapnm.".generateRoute()' />
							</div>
							";
			}
			$code.="<div style=\"clear: both;\"></div>";
			$code.="</div>";
		}

		if (($animdir=='2'||$animdir=='3')&&$showdir!='0') {
			$code.="<table style=\"width:".$width.";\"><tr>";
			$code.="<td style='width:50%;'><div id=\"googlemap".$mapnm."\" ".((!empty($mapclass))?"class=\"".$mapclass."\"" :"class=\"map\"")." style=\"" . ($align != 'none' ? ($align == 'center' || $align == 'left' ? 'margin-right: auto; ' : '') . ($align == 'center' || $align == 'right' ? 'margin-left: auto; ' : '') : '') . "width:100%; height:".$height.";".(($show==0&&$lightbox==0)?"display:none;":"").(($kmlsidebar=="right"||$animdir=='2')?"float:left;":"")."\"></div></td>";
			$code.= "<td style='width:50%;'><div id=\"dirsidebar".$mapnm."\" class='directions' style='float:left;width:100%;height: ".$height.";overflow:auto; '></div></td>";				
			$code.="</tr></table>";
		} else {
			$code.="<div id=\"googlemap".$mapnm."\" ".((!empty($mapclass))?"class=\"".$mapclass."\"" :"class=\"map\"")." style=\"" . ($align != 'none' ? ($align == 'center' || $align == 'left' ? 'margin-right: auto; ' : '') . ($align == 'center' || $align == 'right' ? 'margin-left: auto; ' : '') : '') . "width:".$width."; height:".$height.";".(($show==0&&$lightbox==0)?"display:none;":"").(($kmlsidebar=="right"||$animdir=='2')?"float:left;":"")."\"></div>";
		}
					
		if ($sv=='bottom'||$animdir=="3") {
			if ($animdir=='3') {
				$code.="<div id='progressBorder".$mapnm."' class='progressBorder'><div id='progressBar".$mapnm."' class='progressBar'></div></div>";
				$code.= "<div class='animforms'>";
				$code.= "<div class='animbuttonforms'><input type='button' value='Drive' id='stopgo".$mapnm."'  onclick='route".$mapnm.".startDriving()'  disabled='disabled' /></div>";

				if ($formspeed==1)
					$code.= "<div class='animformspeed'>
								<div class='animlabel'>".((array_key_exists(16, $langanim))?$langanim[16]:"Drive")."</div>
								<select id='speed".$mapnm."' onchange='route".$mapnm.".setSpeed()'>
									<option value='0'>".((array_key_exists(17, $langanim))?$langanim[17]:"Fast")."</option>
									<option value='1' selected='selected'>".((array_key_exists(18, $langanim))?$langanim[18]:"Normal")."</option>
									<option value='2'>".((array_key_exists(19, $langanim))?$langanim[19]:"Slow")."</option>
								</select>
							</div>";

				if ($formdirtype==1)
					$code.= "<div class='animformdirtype'>
								<input ".(($txt_driving=='')?"type='hidden' ":"type='radio' ")."class='radio' name='dirflg".$mapnm."' value='' ".(($dirtype=="D")?"checked='checked'":"")." />".$txt_driving.(($txt_driving!='')?"&nbsp;":"")."<br />
								<input ".(($txt_avhighways=='')?"type='hidden' ":"type='radio' ")."class='radio' name='dirflg".$mapnm."' value='h' ".(($avoidhighways=='1')?"checked='checked'":"")." />".$txt_avhighways.(($txt_avhighways!='')?"&nbsp;":"")."<br />
								<input ".(($txt_walking=='')?"type='hidden' ":"type='radio' ")."class='radio' name='dirflg".$mapnm."' value='w' ".(($dirtype=="W")?"checked='checked'":"")." />".$txt_walking.(($txt_walking!='')?"&nbsp;":"")."<br />
							</div>";

				if ($formaddress==1)
					$code.= "<div class='animformaddress'>
								".(($txt_from=='')?"":"<div class='animlabel'>".$txt_from."</div>")."
								<div class='animinput'><input id='from".$mapnm."' ".(($txt_from=='')?"type='hidden' ":"")." size='30' value='".$address."'/></div>
								<div style='clear: both;'></div>
								".(($txt_to=='')?"":"<div class='animlabel'>".$txt_to."</div>")."
								<div class='animinput'><input id='to".$mapnm."' ".(($txt_to=='')?"type='hidden' ":"")." size='30' value='".$toaddress."'/></div>
							</div>
							<div class='animbuttons'>
								<input type='button' value='".((array_key_exists(15, $langanim))?$langanim[15]:"Route")."' class='animroute' onclick='route".$mapnm.".generateRoute()' />
							</div>
							";
			}
			$code.="<div style=\"clear: both;\"></div>";
			$code.="</div>";
			$code.="<div id='svpanel".$mapnm."' class='svPanel' style='width:".$svwidth."; height:".$svheight."'><div id='svpanorama".$mapnm."' class='streetview' style='width:".$svwidth."; height:".$svheight.(($kmlsidebar=="right")?"float:left;":"").";'></div>";
			if ($animdir!='0')
				$code.="<div id='status".$mapnm."' class='status' style='top: -".floor($svheight/2)."px'><b>Loading</b></div><div id='instruction".$mapnm."' class='instruction'></div></div>";
		}

		if ((($kmlrenderer=="google"&&count($kmlsb)!=0)||($kmlrenderer=="geoxml"&&(count($kml)!=0||count($kmlsb)!=0)))&&($kmlsidebar=="left"||$kmlsidebar=="right"))
			$code.="</td>";
		
		if ((($kmlrenderer=="google"&&count($kmlsb)!=0)||($kmlrenderer=="geoxml"&&(count($kml)!=0||count($kmlsb)!=0)))&&$kmlsidebar=="right")
			$code.="<td style=\"width:".$kmlsbwidth.";height:".$height.";vertical-align:top;\"><div id=\"kmlsidebar".$mapnm."\"  class=\"kmlsidebar\" style=\"align:left;width:".$kmlsbwidth.";height:".$height.";overflow:auto;\"></div></td>";
			
		if ((($kmlrenderer=="google"&&count($kmlsb)!=0)||($kmlrenderer=="geoxml"&&(count($kml)!=0||count($kmlsb)!=0)))&&($kmlsidebar=="left"||$kmlsidebar=="right"))
			$code.="</tr>
					</table>";

		if ($searchlist=='div')
			$code.="<div id=\"searchresult".$mapnm."\"></div>";

		if ($kmlsidebar=="left"||$kmlsidebar=="right")
			$code.="<div style=\"clear: both;\"></div>";
		
		if (((!empty($tolat)&&!empty($tolon))||!empty($address)||($dir=='5'))&&($animdir!='2'||($animdir=='2'&&$showdir=='0')))
			$code.= "<div id=\"dirsidebar".$mapnm."\" class='directions' ".(($showdir=='0')?"style='display:none'":"")."></div>";

		if ($lightbox=='1')
			$code .= "</div>";

		if ($align!='none')
			$code.="</div>";

		// Only add the scripts and css once
		if($this->first_google) {
			$url = $this->protocol.$this->googlewebsite."/maps?file=api&amp;v=".$this->google_API_version."&amp;oe=".$this->iso;				
			if ($lang!='') 
				$url .= "&amp;hl=".$lang;

			$url .= "&amp;key=".$this->googlekey;
			$url .= "&amp;sensor=false";
			$url .= "&amp;indexing=".(($this->googleindexing)?"true":"false");
			
			$this->_addscript($url, $text);
			$this->first_google=false;
		}

		if (($kmllightbox=="1"||$lightbox=="1"||$effect!="none"||$dir=="3"||$dir=="4"||strpos($description, "MOOdalBox"))&&$this->first_mootools) {
			JHTML::_('behavior.mootools');
			$this->first_mootools = false;
		}

		if (($kmllightbox=="1"||$lightbox=="1"||$dir=="3"||$dir=="4"||strpos($description, "MOOdalBox"))&&$this->first_modalbox)	{
			if (substr($this->jversion,0,3)=='1.5')
				$this->_addscript($this->base."/media/plugin_googlemap2/site/moodalbox/js/modalbox1.2hack.js", $text);
			else
				$this->_addscript($this->base."/media/plugin_googlemap2/site/moodalbox/js/moodalbox1.3hack.js", $text);
			
			$this->_addstylesheet($this->base."/media/plugin_googlemap2/site/moodalbox/css/moodalbox.css", $text);
			$this->first_modalbox = false;
		}

		if (($localsearch=="1"||$client_geo==1)&&$this->first_localsearch) {
			$this->_addscript($this->protocol."www.google.com/uds/api?file=uds.js&amp;v=1.0&amp;key=".$this->googlekey, $text);
			$this->_addscript($this->protocol."www.google.com/uds/solutions/localsearch/gmlocalsearch.js".((!empty($adsense))?"?adsense=".$adsense:"").((!empty($channel)&&!empty($adsense))?"&amp;channel=".$channel:""), $text);
			$style = "@import url('".$this->protocol."www.google.com/uds/css/gsearch.css');\n@import url('".$this->protocol."www.google.com/uds/solutions/localsearch/gmlocalsearch.css');";
			$this->_addstyledeclaration($style, $text);
			$this->first_localsearch = false;
		}
		
		if ($this->first_kmlelabel&&(($kmlpolylabel!=""&&$kmlpolylabelclass!="")||($kmlmarkerlabel!=""&&$kmlmarkerlabelclass!=""))) {
			$this->_addscript($this->base."/media/plugin_googlemap2/site/elabel/elabel.js", $text);
			$this->first_kmlelabel = false;
		}
		
		if (($kmlrenderer=='geoxml'||count($kmlsb)!=0)&&$this->first_kmlrenderer) {
			$this->_addscript($this->base."/media/plugin_googlemap2/site/geoxml/geoxml.js", $text);
			$this->first_kmlrenderer = false;
		}
		
		if ($zoomType=='3D-largeSV'&&$this->first_svcontrol) {
			$this->_addscript($this->base."/media/plugin_googlemap2/site/StreetViewControl/StreetViewControl.js", $text);
			$this->first_svcontrol = false;
		}

		if ($animdir!='0'&&$this->first_animdir) {
			$this->_addscript($this->base."/media/plugin_googlemap2/site/directions/directions.js", $text);
			$this->_addstylesheet($this->base."/media/plugin_googlemap2/site/directions/directions.css", $text);
			$this->first_animdir = false;
		}
		
		if ($kmlrenderer=='arcgis'&&$this->first_arcgis) {
			$this->_addscript($this->protocol."serverapi.arcgisonline.com/jsapi/gmaps/?v=1.4", $text);
			$this->first_arcgis = false;
		}

		if ($panotype!='none'&&$this->first_panoramiolayer) {
			$this->_addscript($this->base."/media/plugin_googlemap2/site/panoramiolayer/panoramiolayer.js", $text);
			$this->first_panoramiolayer = false;
		}

		$code.="<script type='text/javascript'>//<![CDATA[\n";
		if ($this->debug_plugin=="1")
			$code.="function VersionControl(opt_no_style){
					  this.noStyle = opt_no_style;
					};
					VersionControl.prototype = new GControl();
					VersionControl.prototype.initialize = function(map) {
					  var display = document.createElement('div');
					  map.getContainer().appendChild(display);
					  display.innerHTML = '2.'+G_API_VERSION;
					  display.className = 'api-version-display';
					  if(!this.noStyle){
						display.style.fontFamily = 'Arial, sans-serif';
						display.style.fontSize = '11px';
					  }
					  this.htmlElement = display;
					  return display;
					}
					VersionControl.prototype.getDefaultPosition = function() {
					  return new GControlPosition(G_ANCHOR_BOTTOM_LEFT, new GSize(3, 38));
					}
				";

		// Globale map variable linked to the div
		$code.="var tst".$mapnm."=document.getElementById('googlemap".$mapnm."');
		var tstint".$mapnm.";
		var map".$mapnm.";
		var mySlidemap".$mapnm.";
		var overviewmap".$mapnm.";
		var overmap".$mapnm.";
		var xml".$mapnm.";
		var imageovl".$mapnm.";
		var directions".$mapnm.";
		";
		
		if ($this->proxy=="1") {
			if (substr($this->jversion,0,3)=="1.5")
				$code .= "\nvar proxy = '".$this->base."/plugins/system/plugin_googlemap2_proxy.php?';";
			else
				$code .= "\nvar proxy = '".$this->base."/plugins/system/plugin_googlemap2/plugin_googlemap2_proxy.php?';";
		}

		if ($traffic=='1') 
			$code.="\nvar trafficInfo".$mapnm.";";
		if ($localsearch=='1') 
			$code.="\nvar localsearch".$mapnm.";";
		if ($adsmanager=='1') 
			$code.="\nvar adsmanager".$mapnm.";";
		if ($kmlrenderer=='geoxml'||count($kmlsb)!=0) {
			$code.="\nvar exml".$mapnm.";";
			$code.="\ntop.publishdirectory = '".$this->base."/media/plugin_googlemap2/site/geoxml/';";
		}
		if (count($lookat)>0||count($camera)>0||$tilelayer!=''||$mapType=='earth')
			$code.="\nvar geplugin".$mapnm.";";
		if ($panotype!='none')
			$code.="\nvar panoLayer".$mapnm.";";

		if ($icon!='') {
			$code.="\nmarkericon".$mapnm." = new GIcon(G_DEFAULT_ICON);";
			$code.="\nmarkericon".$mapnm.".image = '".$icon."';";
			if ($iconwidth!=''&&$iconheight!='')
				$code.="\nmarkericon".$mapnm.".iconSize = new GSize(".$iconwidth.", ".$iconheight.");";
			if ($iconshadow !='') {
				$code.="\nmarkericon".$mapnm.".shadow = '".$iconshadow."';";

				if ($iconshadowwidth!=''&&$iconshadowheight!='') 
					$code.="\nmarkericon".$mapnm.".shadowSize = new GSize(".$iconshadowwidth.", ".$iconshadowheight.");";
				if ($iconshadowanchorx!=''&&$iconshadowanchory!='')
					$code.="\nmarkericon".$mapnm.".infoShadowAnchor = new GPoint(".$iconshadowanchorx.", ".$iconshadowanchory.");";
			}
			if ($iconanchorx!=''&&$iconanchory!='')
				$code.="\nmarkericon".$mapnm.".iconAnchor = new GPoint(".$iconanchorx.", ".$iconanchory.");";
			if ($iconinfoanchorx!=''&&$iconinfoanchory!='')
				$code.="\nmarkericon".$mapnm.".infoWindowAnchor = new GPoint(".$iconinfoanchorx.", ".$iconinfoanchory.");";
			if ($icontransparent!='') 			
				$code.="\nmarkericon".$mapnm.".transparent = '".$icontransparent."';";
			if ($iconimagemap!='')
				$code.="\nmarkericon".$mapnm.".imageMap = [".$iconimagemap."];";
		}
		
		if ($sv!='none'||$animdir!='0') {
			$code.="\nvar svclient".$mapnm.";
					var svmarker".$mapnm.";
					var svlastpoint".$mapnm.";
					var svpanorama".$mapnm.";
					";
		}

		if ($animdir!='0')				
			$code.="\nvar route".$mapnm.";
					";
		
		if ($sv!='none'&&$animdir=='0') {
			$code.="\nvar guyIcon".$mapnm." = new GIcon(G_DEFAULT_ICON);
					guyIcon".$mapnm.".image = '".$this->base."/media/plugin_googlemap2/site/StreetViewControl/images/man_arrow-0.png';
					guyIcon".$mapnm.".transparent = '".$this->base."/media/plugin_googlemap2/site/StreetViewControl/images/man-pick.png';
					guyIcon".$mapnm.".imageMap = [26,13, 30,14, 32,28, 27,28, 28,36, 18,35, 18,27, 16,26, 16,20, 16,14, 19,13, 22,8];
					guyIcon".$mapnm.".iconSize = new GSize(49, 52);
					guyIcon".$mapnm.".iconAnchor = new GPoint(25, 35);
					guyIcon".$mapnm.".infoWindowAnchor = new GPoint(25, 5);
					";
		}
		if ($tilelayer!="") {
			$code.="\nvar tilelayer".$mapnm.";
					var mercator".$mapnm.";
					";
		}

		if ( array_key_exists('HTTP_USER_AGENT',$_SERVER) && strpos(" ".$_SERVER['HTTP_USER_AGENT'], 'Opera') ) {
			$code.="var _mSvgForced = true;
					var _mSvgEnabled = true; ";
		}

		if($zoom_wheel=='1') {
			$code.="function CancelEvent".$mapnm."(event) { 
						var e = event; 
						if (typeof e.preventDefault == 'function') e.preventDefault(); 
							if (typeof e.stopPropagation == 'function') e.stopPropagation(); 

						if (window.event) { 
							window.event.cancelBubble = true; // for IE 
							window.event.returnValue = false; // for IE 
						} 
					}
				";
		}
		
		$code.="\nfunction resetposition".$mapnm."() {
			map".$mapnm.".returnToSavedPosition();
		}";

		if ($gotoaddr=='1') {
			$code.="function gotoAddress".$mapnm."() {
						var address = document.getElementById('txtAddress".$mapnm."').value;

						if (address.length > 0) {
							var geocoder = new GClientGeocoder();
							geocoder.setViewport(map".$mapnm.".getBounds());

							geocoder.getLatLng(address,
							function(point) {
								if (!point) {
									var erraddr = '{$erraddr}';
									erraddr = erraddr.replace(/##/, address);
								  alert(erraddr);
								} else {
								  var txtaddr = '{$txtaddr}';
								  txtaddr = txtaddr.replace(/##/, address);
								  map".$mapnm.".setCenter(point".(($gotoaddrzoom!=0)?",".$gotoaddrzoom:"").");
								  map".$mapnm.".openInfoWindowHtml(point,txtaddr);
								  setTimeout('map".$mapnm.".closeInfoWindow();', 5000);
								}
							  });
						  }
						  return false;
						  
					}";
		}
		
		if (($dir!='0')||((!empty($tolat)&&!empty($tolon))||!empty($toaddress))&&$animdir=='0') {
			$code .="function handleErrors".$mapnm."(){
						var dirsidebar".$mapnm." = document.getElementById('dirsidebar".$mapnm."');
						var newelem = document.createElement('p');
						if (directions".$mapnm.".getStatus().code == G_GEO_UNKNOWN_ADDRESS)
							newelem.innerHTML = 'No corresponding geographic location could be found for one of the specified addresses. This may be due to the fact that the address is relatively new, or it may be incorrect.<br />Error code: ' + directions".$mapnm.".getStatus().code;
						else if (directions".$mapnm.".getStatus().code == G_GEO_SERVER_ERROR)
							newelem.innerHTML = 'A geocoding or directions request could not be successfully processed, yet the exact reason for the failure is not known.<br />Error code: ' + directions".$mapnm.".getStatus().code;
						else if (directions".$mapnm.".getStatus().code == G_GEO_MISSING_QUERY)
							 newelem.innerHTML = 'The HTTP q parameter was either missing or had no value. For geocoder requests, this means that an empty address was specified as input. For directions requests, this means that no query was specified in the input.<br />Error code: ' + directions".$mapnm.".getStatus().code;
						//   else if (directions".$mapnm.".getStatus().code == G_UNAVAILABLE_ADDRESS)  <--- Doc bug... this is either not defined, or Doc is wrong
						//     newelem.innerHTML = 'The geocode for the given address or the route for the given directions query cannot be returned due to legal or contractual reasons.<br />Error code: ' + directions".$mapnm.".getStatus().code;
						   else if (directions".$mapnm.".getStatus().code == G_GEO_BAD_KEY)
							 newelem.innerHTML = 'The given key is either invalid or does not match the domain for which it was given.<br />Error code: ' + directions".$mapnm.".getStatus().code;
						
						   else if (directions".$mapnm.".getStatus().code == G_GEO_BAD_REQUEST)
							 newelem.innerHTML = 'A directions request could not be successfully parsed.<br />Error code: ' + directions".$mapnm.".getStatus().code;
						   else newelem.innerHTML = 'An unknown error occurred.';
						dirsidebar".$mapnm.".appendChild(newelem); 
					}
						";
			}
			
		if ($dir!='0'&&$animdir=='0') {
			$code.="\nDirectionMarkersubmit".$mapnm." = function( formObj ){
						if(formObj.dir&&formObj.dir[1].checked ){
							tmp = formObj.daddr.value;
							formObj.daddr.value = formObj.saddr.value;
							formObj.saddr.value = tmp;
						}";
			if ($dir=='1')
				$code.="\nformObj.submit();";
			elseif ($dir=='2')
				$code.="\nformObj.submit();";
			elseif ($dir=='3')
				$code.="\nfor (var i=0; i < formObj.dirflg.length; i++) {
						   if (formObj.dirflg[i].checked) {
							  var dirflg= formObj.dirflg[i].value;
							  break;
						   }
						}
						MOOdalBox.open('".$this->protocol.$this->googlewebsite."/maps?dir=to&dirflg='+dirflg+'&saddr='+formObj.saddr.value+'&hl=en&daddr='+formObj.daddr.value+'".(($lang!='')?"&amp;hl=".$lang:"")."&pw=2', '".$lbxcaption."', '".$lbxwidth." ".$lbxheight."', null, 16);";
			elseif ($dir=='5') 
					$code .= "\nfor (var i=0; i < formObj.dirflg.length; i++) {
								   if (formObj.dirflg[i].checked) {
									  var dirflg= formObj.dirflg[i].value;
									  break;
								   }
								}
								var dirsidebar".$mapnm." = document.getElementById('dirsidebar".$mapnm."');
								if (directions".$mapnm.") {
									directions".$mapnm.".clear();
									if ( dirsidebar".$mapnm.".hasChildNodes() )
										{
											while ( dirsidebar".$mapnm.".childNodes.length >= 1 )
											{
												dirsidebar".$mapnm.".removeChild( dirsidebar".$mapnm.".firstChild );       
											} 
										}
								} else {
									directions".$mapnm." = new GDirections(map".$mapnm.", dirsidebar".$mapnm.");
									GEvent.addListener(directions".$mapnm.", 'error', handleErrors".$mapnm.");
								}
								options = Array();
								if (dirflg=='w')
									options.travelMode = G_TRAVEL_MODE_WALKING;
								if (dirflg=='h')
									options.avoidHighways = true;
								directions".$mapnm.".load('from: '+formObj.saddr.value+' to: '+formObj.daddr.value, options);
							";
			else
				$code.="\nfor (var i=0; i < formObj.dirflg.length; i++) {
						   if (formObj.dirflg[i].checked) {
							  var dirflg= formObj.dirflg[i].value;
							  break;
						   }
						}
						MOOdalBox.open('".$this->protocol.$this->googlewebsite."/maps?dir=to&dirflg='+dirflg+'&saddr='+formObj.saddr.value+'&hl=en&daddr='+formObj.daddr.value+'".(($lang!='')?"&amp;hl=".$lang:"")."', '".$lbxcaption."', '".$lbxwidth." ".$lbxheight."', null, 16);";
				
			$code.="\nif(formObj.dir&&formObj.dir[1].checked )
						setTimeout('DirectionRevert".$mapnm."()',100);
					};";
			
			$code.="\nDirectionRevert".$mapnm." = function(){
						formObj = document.getElementById('directionform".$mapnm."');
						tmp = formObj.daddr.value;
						formObj.daddr.value = formObj.saddr.value;
						formObj.saddr.value = tmp;
					};";
		}
		
		// Function for overview
		if(!$overview==0) {
			$code.="\nfunction checkOverview".$mapnm."() {
						for (var i in overviewmap".$mapnm.") {
							if (overviewmap".$mapnm."[i].setMapType) {
								overmap".$mapnm." = overviewmap".$mapnm."[i];
								break;
							}
						}						
						if (overmap".$mapnm.") {
					";
						  
			if($overview==2)

			{
				$code.="\n		overviewmap".$mapnm.".hide(true);";
			}

			switch ($mapType) {
			case "satellite":
			
				$code.="\n		overmap".$mapnm.".setMapType(G_SATELLITE_MAP);";
				break;
			
			case "hybrid":
				$code.="\n		overmap".$mapnm.".setMapType(G_HYBRID_MAP);";
				break;

			case "terrain":
				$code.="\n		overmap".$mapnm.".setMapType(G_PHYSICAL_MAP);";
				break;
			
			case "earth":
				break;

			default:
				$code.="\n		overmap".$mapnm.".setMapType(G_NORMAL_MAP);";
				break;
			}
			
			if ($ovzoom!="") {
				$code.="\n		setTimeout('overmap".$mapnm.".setCenter(map".$mapnm.".getCenter(), map".$mapnm.".getZoom()+".$ovzoom.")', 100);";
				$code.="\n		GEvent.addListener(map".$mapnm.",'move',function() {
var c = Math.min(Math.max(0, map".$mapnm.".getZoom()+".$ovzoom."), 19);
overmap".$mapnm.".setCenter(map".$mapnm.".getCenter(), c);
});";
				$code.="\n		GEvent.addListener(map".$mapnm.",'moveend',function() {
var c = Math.min(Math.max(0, map".$mapnm.".getZoom()+".$ovzoom."), 19);
overmap".$mapnm.".setCenter(map".$mapnm.".getCenter(), c);

});";
			}
			$code.= "\n	} else {
						  setTimeout('checkOverview".$mapnm."()',100);
						}
					  }";
		}
		
		$code.="\nfunction initearth".$mapnm."(geplugin) {
			if (!geplugin".$mapnm.") {
					geplugin".$mapnm." = geplugin;";

		// Add layers
		if ($earthborders=="1")
			$code.="\n	geplugin".$mapnm.".getLayerRoot().enableLayerById(geplugin".$mapnm.".LAYER_BORDERS, true);";
		if ($earthbuildings=="1")
			$code.="\n	geplugin".$mapnm.".getLayerRoot().enableLayerById(geplugin".$mapnm.".LAYER_BUILDINGS, true);";
		else
			$code.="\n	geplugin".$mapnm.".getLayerRoot().enableLayerById(geplugin".$mapnm.".LAYER_BUILDINGS, false);";
		if ($earthroads=="1")
			$code.="\n	geplugin".$mapnm.".getLayerRoot().enableLayerById(geplugin".$mapnm.".LAYER_ROADS, true);";
		if ($earthterrain=="1")
			$code.="\n	geplugin".$mapnm.".getLayerRoot().enableLayerById(geplugin".$mapnm.".LAYER_TERRAIN, true);";
		else
			$code.="\n	geplugin".$mapnm.".getLayerRoot().enableLayerById(geplugin".$mapnm.".LAYER_TERRAIN, false);";
			
		if ($tilelayer) {
			$code.="\n	var url = '".$tilelayer."';
			var newurl = url+'/doc.kml';
			var link = geplugin".$mapnm.".createLink('');
			link.setHref(newurl);
			var networkLink = geplugin".$mapnm.".createNetworkLink('');
			networkLink.set(link, false, false);
			geplugin".$mapnm.".getFeatures().appendChild(networkLink);";
		}
		
		if (count($lookat)>0||count($camera)>0)
			$code.="\n	setTimeout('setearth".$mapnm."()', ".$earthtimeout.");";
			
		$code.="\n}
				}";
				
		if (count($lookat)>0||count($camera)>0) {
			$la = false;
			$cam = false;
			$code.="\nfunction setearth".$mapnm."() {
						var lookat = geplugin".$mapnm.".getView().copyAsLookAt(geplugin".$mapnm.".ALTITUDE_RELATIVE_TO_GROUND);
						var camera = geplugin".$mapnm.".getView().copyAsCamera(geplugin".$mapnm.".ALTITUDE_RELATIVE_TO_GROUND);";
			
			if (count($lookat)>0) {
				$values = explode(',', $lookat[0]);
				if (count($values)>0&&$values[0]!='') { // Latitude
					$code.="\nlookat.setLatitude(".$values[0].");";
					$la = true;
				}
				if (count($values)>1&&$values[1]!='') { // Longitude
					$code.="\nlookat.setLongitude(".$values[1].");";
					$la = true;
				}
				if (count($values)>2&&$values[2]!='') { // Range
					$code.="\nlookat.setRange(".$values[2].");";
					$la = true;
				}
				if (count($values)>3&&$values[3]!='') { // tilt
					$code.="\nlookat.setTilt(".$values[3].");";
					$la = true;
				}
				if (count($values)>4&&$values[4]!='') { // setHeading
					$code.="\nlookat.setHeading(".$values[4].");";
					$la = true;
				}
				if (count($values)>5&&$values[5]!='') { // altitude
					$code.="\nlookat.setAltitude(".$values[5].");";
					$la = true;
				}
				if (count($values)>6&&$values[6]!='') {// flyspeed
					if ($values[6]=='teleport')
						$code.="\ngeplugin".$mapnm.".getOptions().setFlyToSpeed(geplugin".$mapnm.".SPEED_TELEPORT);";
					else
						$code.="\ngeplugin".$mapnm.".getOptions().setFlyToSpeed(".$values[6].");";
				}
			}
			
			if (count($camera)>0) {
				$values = explode(',', $camera[0]);
				if (count($values)>0&&$values[0]!='') { // Latitude
					$code.="\ncamera.setLatitude(".$values[0].");";
					$cam = true;
				}
				if (count($values)>1&&$values[1]!='') { // Longitude
					$code.="\ncamera.setLongitude(".$values[1].");";
					$cam = true;
				}
				if (count($values)>2&&$values[2]!='') { // tilt
					$code.="\ncamera.setTilt(".$values[2].");";
					$cam = true;
				}
				if (count($values)>3&&$values[3]!='') { // heading
					$code.="\ncamera.setHeading(".$values[3].");";
					$cam = true;
				}
				if (count($values)>4&&$values[4]!='') { // altitude
					$code.="\ncamera.setAltitude(".$values[4].");";
					$cam = true;
				}
				if (count($values)>5&&$values[5]!='') { // roll
					$code.="\ncamera.setRoll(".$values[5].");";
					$cam = true;
				}
				if (count($values)>6&&$values[6]!='') {// flyspeed
					if ($values[6]=='teleport')
						$code.="\ngeplugin".$mapnm.".getOptions().setFlyToSpeed(geplugin".$mapnm.".SPEED_TELEPORT);";
					else
						$code.="\ngeplugin".$mapnm.".getOptions().setFlyToSpeed(".$values[6].");";
				}
			}
					
			if ($la)
				$code.="\n	geplugin".$mapnm.".getView().setAbstractView(lookat);";
			if ($cam)
				$code.="\n	geplugin".$mapnm.".getView().setAbstractView(camera);";
				
			$code.="\n}";
		}

		if ($kmlrenderer=='arcgis') {
			$code .="\nfunction dynmapcallback".$mapnm."(mapservicelayer) {
						  map".$mapnm.".addOverlay(mapservicelayer);
							}";	
		}
		
		if ($kmlrenderer=='google') {
			$code .= "\nfunction savePositionKML".$mapnm."() {
							ok = true;
							for (x=0;x<xml".$mapnm.".length;x++) {
								if (!xml".$mapnm."[x].hasLoaded())
									ok = false;
							}
							if (ok)
								map".$mapnm.".savePosition();
							else
								setTimeout('savePositionKML".$mapnm."()',100);
						}
					";
		}
		
			
		// Functions to watch if the map has changed
		$code.="\nfunction checkMap".$mapnm."()
		{
			if (tst".$mapnm.") {
			";
			
		if ($show!=0)
			$code.="\n			if (tst".$mapnm.".offsetWidth != tst".$mapnm.".getAttribute(\"oldValue\"))
					{
						tst".$mapnm.".setAttribute(\"oldValue\",tst".$mapnm.".offsetWidth);
						if (tst".$mapnm.".offsetWidth > 0) {
					";

		$code.="\n				if (tst".$mapnm.".getAttribute(\"refreshMap\")==0)
							clearInterval(tstint".$mapnm.");";
		if ($effect !='none') 
			$code .="\n					mySlidemap".$mapnm." = new Fx.Slide('googlemap".$mapnm."',{duration: 1500, mode: '".$effect."'});
							mySlidemap".$mapnm.".hide();
							mySlidemap".$mapnm.".slideIn();";

		$code .="\n					getMap".$mapnm."();
							tst".$mapnm.".setAttribute(\"refreshMap\", 1);";
		if ($show!=0)
			$code .="\n				} 
					}";
		$code .="\n	}
		}
		";

		if ($sv!="none"&&$animdir=='0') {
			$code .="function onYawChange".$mapnm."(newYaw) {
						var GUY_NUM_ICONS = 16;
						var GUY_ANGULAR_RES = 360/GUY_NUM_ICONS;
						if (newYaw < 0) {
							newYaw += 360;
						}
						var guyImageNum = Math.round(newYaw/GUY_ANGULAR_RES) % GUY_NUM_ICONS;
						var guyImageUrl = '".$this->base."/media/plugin_googlemap2/site/StreetViewControl/images/man_arrow-' + guyImageNum + '.png';
						svmarker".$mapnm.".setImage(guyImageUrl);
					}

					function onNewLocation".$mapnm."(point) {
						// Get the original x + y coordinates
						svmarker".$mapnm.".setLatLng(point.latlng);
						map".$mapnm.".panTo(point.latlng);
						svlastpoint".$mapnm." = point.latlng;
					}

					function onDragEnd".$mapnm."() {
						var latlng = svmarker".$mapnm.".getLatLng();
						if (svpanorama".$mapnm.") {
							svclient".$mapnm.".getNearestPanorama(latlng, svonResponse".$mapnm.");
						}
					}

					function svonResponse".$mapnm."(response) {
						if (response.code != 200) {
							svmarker".$mapnm.".setLatLng(svlastpoint".$mapnm.");
							map".$mapnm.".setCenter(svlastpoint".$mapnm.");
						} else {
							var latlng = new GLatLng(response.Location.lat, response.Location.lng);
							svmarker".$mapnm.".setLatLng(latlng);
							svlastpoint".$mapnm." = latlng;
							svpanorama".$mapnm.".setLocationAndPOV(latlng, null);
						}
					}
					";
		}

		// Function for displaying the map and marker
		$code.="\nfunction getMap".$mapnm."(){";
	
		if ($show!=0)
			$code.="\n	if (tst".$mapnm.".offsetWidth > 0) {";
		
		$code.="\n	map".$mapnm." = new GMap2(document.getElementById('googlemap".$mapnm."')".(($googlebar=='1'&&!empty($searchoptions))?", { googleBarOptions: {".$searchoptions." } }":"").");
				map".$mapnm.".getContainer().style.overflow='hidden';
				";
		
		if ($sv!="none"||$animdir!='0')
			$code.="svclient".$mapnm." = new GStreetviewClient();";
			
		if($keyboard=='1'&&$controltype=='user')
		{
			$code.="new GKeyboardHandler(map".$mapnm.");
			";
		} 
		if($dragging=="0")
			$code.="map".$mapnm.".disableDragging();";
	
		if ($showterrainmaptype=="1")
			$code.="map".$mapnm.".addMapType(G_PHYSICAL_MAP);";
		if ($showearthmaptype=="1")
			$code.="map".$mapnm.".addMapType(G_SATELLITE_3D_MAP);";
	
		if(!$overview==0)
		{
			$code.="overviewmap".$mapnm." = new GOverviewMapControl();";

			$code.="map".$mapnm.".addControl(overviewmap".$mapnm.", new GControlPosition(G_ANCHOR_BOTTOM_RIGHT));";
			$code.="setTimeout('checkOverview".$mapnm."()',100);";
	
		} elseif (!$overview==0) {
			$code.="overviewmap".$mapnm." = new GOverviewMapControl();";
			$code.="map".$mapnm.".addControl(overviewmap".$mapnm.", new GControlPosition(G_ANCHOR_BOTTOM_RIGHT));";
			
			if($overview==2)
			{
				$code.="overviewmap".$mapnm.".hide(true);";
			}
		}
	
		if($navlabel == 1)
			$code.="map".$mapnm.".addControl(new GNavLabelControl(), new GControlPosition(G_ANCHOR_TOP_RIGHT, new GSize(7, 30)));";
	
		if($client_geo == 1) {
			if ($clientgeotype=="local") {
				$code.="\nvar localSearch = new GlocalSearch();";
				$replace = array("\n", "\r", "&lt;br/&gt;", "&lt;br /&gt;", "&lt;br&gt;");
				$addr = str_replace($replace, '', $address);
	
				$code.="\nvar address = \"".$addr."\";";
				$code.="\nlocalSearch.setSearchCompleteCallback(null,	function() {
						if (localSearch.results[0]) {
							var resultLat = localSearch.results[0].lat;
							var resultLng = localSearch.results[0].lng;
							var point = new GLatLng(resultLat,resultLng);
						} else 
						";
				if ($latitude !=''&&$longitude!='')
					$code.="var point = new GLatLng( $latitude, $longitude);";
				else
					$code.="var point = new GLatLng( $deflatitude, $deflongitude);";
			} else {
				$code.="var geocoder = new GClientGeocoder();";
				$replace = array("\n", "\r", "&lt;br/&gt;", "&lt;br /&gt;", "&lt;br&gt;");
				$addr = str_replace($replace, '', $address);
	
				$code.="var address = \"".$addr."\";";
				$code.="geocoder.getLatLng(address, function(point) {
							if (!point)";
							
				if ($latitude !=''&&$longitude!='')
					$code.="var point = new GLatLng( $latitude, $longitude);";
				else
					$code.="var point = new GLatLng( $deflatitude, $deflongitude);";
			}
		} else { 
			if ($latitude !=''&&$longitude!='')
				$code.="\nvar point = new GLatLng( $latitude, $longitude);";
			else
				$code.="\nvar point = new GLatLng( $deflatitude, $deflongitude);";
		}
		if (!empty($centerlat)&&!empty($centerlon))
			$code.="\nvar centerpoint = new GLatLng( $centerlat, $centerlon);";
		else
			$code.="\nvar centerpoint = point;";
	
		if ($inline_coords == 0 && count($kml)>0)
			$code.="map".$mapnm.".setCenter(new GLatLng(0, 0), 0);
			";					
		else
			$code.="map".$mapnm.".setCenter(centerpoint, ".$zoom.");
			";					
			
		if ($controltype=='user') {
			switch ($zoomType) {
				case "Large":
					$code.="map".$mapnm.".addControl(new GLargeMapControl());";
					break;
				case "Small":
					$code.="map".$mapnm.".addControl(new GSmallMapControl());";
					break;
				case "3D-large":
					$code.="map".$mapnm.".addControl(new GLargeMapControl3D());";
					if ($rotation)
						$code.="map".$mapnm.".enableRotation();";
					break;
				case "3D-largeSV":
					$code.="map".$mapnm.".addControl(new StreetViewControl());";
					if ($rotation)
						$code.="map".$mapnm.".enableRotation();";
					break;
				case "3D-small":
					$code.="map".$mapnm.".addControl(new GSmallZoomControl3D());";
					if ($rotation)
						$code.="map".$mapnm.".enableRotation();";
					break;
				default:
					break;
			}
			
			if($showmaptype!='0')
			{
				$code.="map".$mapnm.".addControl(new GMapTypeControl());";
			} 
	
			if ($showscale==1)
				$code.="map".$mapnm.".addControl(new GScaleControl());";
		} else {
			$code.="map".$mapnm.".setUIToDefault();";
			if ($rotation)
				$code.="map".$mapnm.".enableRotation();";
		}
			
		if (count($kml)>0) {
			if ($kmlrenderer=="google") {
				$code .= "xml".$mapnm." = [];";
				foreach ($kml as $idx => $val) {
					$code .= "var kmlurl = '".$kml[$idx]."';";
					$code .= "kmlurl = kmlurl.replace(/&amp;/g, String.fromCharCode(38));";
					$code .= "\nxml".$mapnm."[".$idx."] = new GGeoXml(kmlurl);";
					$code .= "\nmap".$mapnm.".addOverlay(xml".$mapnm."[".$idx."]);";
				}
				if ($inline_coords==0) {
					
					$code .= "\nGEvent.addListener(xml".$mapnm."[0], 'load', function() {
								if (xml".$mapnm."[0].loadedCorrectly()) {";
					$code .= "\nxml".$mapnm."[0].gotoDefaultViewport(map".$mapnm.");";
					if ($corzoom!='0')
						$code .= "\nmap".$mapnm.".setZoom(map".$mapnm.".getZoom()+".$corzoom.");";
					$code .= "\nsavePositionKML".$mapnm."();"; 
					$code .= "\n}
							});";
				}
				if (count($kmlsb)!=0) {
					$kmlrenderer = 'geoxml';
					$kml=$kmlsb;
				}
			}
			
			if ($kmlrenderer=="arcgis") {
				$code .= "var xml = [];";
				foreach ($kml as $idx => $val) {
					$code .= "var kmlurl = '".$kml[$idx]."';";
					$code .= "\nkmlurl = kmlurl.replace(/&amp;/g, String.fromCharCode(38));";
					$code .= "\nxml[".$idx."] = new esri.arcgis.gmaps.DynamicMapServiceLayer(kmlurl, null, 0.75, dynmapcallback".$mapnm.");";
				}
			}
			
			if ($kmlrenderer=="geoxml") {
				$code .= "\nvar kml".$mapnm." = [];";
				foreach ($kml as $idx => $val) {
					$code .= "\nvar kmlurl = '".$kml[$idx]."';";
					$code .= "\nkmlurl = escape(kmlurl.replace(/&amp;/g, String.fromCharCode(38)));";
					$code .= "\nkml".$mapnm.".push(kmlurl);";
				}
				$xmloptions = array();
				if ($kmlsidebar=="left"||$kmlsidebar=="right") {
					$xmloptions[] = "sidebarid: 'kmlsidebar".$mapnm."'";
				} else {
					if ($kmlsidebar!="none")
						$xmloptions[] = "sidebarid: '".$kmlsidebar."'";
				}
				if ($kmlmessshow=='1')
					$xmloptions[] = "messshow: true";
				
				if ($inline_coords==1)
					$xmloptions[] = "nozoom: true";
	
				if ($dir!='0') {
					$xmloptions[] = "directions: true";
				}
				if ($kmlfoldersopen!='0') {
					$xmloptions[] = "allfoldersopen: true";
				}
				if ($kmlopenmethod!='0') {
					$xmloptions[] = "iwmethod: '".$kmlopenmethod."'";
				}
				
				if ($kmlsbsort=='asc') {
					$xmloptions[] = "sortbyname: 'asc'";
				}elseif ($kmlsbsort=='desc') {
					$xmloptions[] = "sortbyname: 'desc'";
				} else 	
					$xmloptions[] = "sortbyname: 'none'";
	
				if ($kmlclickablemarkers!='1') {
					$xmloptions[] = "clickablemarkers: false";
				}
				if ($kmlopendivmarkers!='') {
					$xmloptions[] = "opendivmarkers: '".$kmlopendivmarkers."'";
				}
				if ($kmlcontentlinkmarkers!='0') {
					$xmloptions[] = "contentlinkmarkers: true";
				}
				if ($kmllinkablemarkers!='0') {
					$xmloptions[] = "linkablemarkers: true";
				}
				if ($kmllinktarget!='') {
					$xmloptions[] = "linktarget: '".$kmllinktarget."'";
				}
				if ($kmllinkmethod!='') {
					$xmloptions[] = "linkmethod: '".$kmllinkmethod."'";
				}
				if (($kmlpolylabel!=""&&$kmlpolylabelclass!="")) {
					$xmloptions[] = "polylabelopacity: '".$kmlpolylabel."'";
					$xmloptions[] = "polylabelclass: '".$kmlpolylabelclass."'";
				}
				if (($kmlmarkerlabel!=""&&$kmlmarkerlabelclass!="")) {
					$xmloptions[] = "pointlabelopacity: '".$kmlmarkerlabel."'";
					$xmloptions[] = "pointlabelclass: '".$kmlmarkerlabelclass."'";
				}
				if ($icon!='')
					$xmloptions[] ="baseicon : markericon".$mapnm;
	
				if ($maxcluster!=''||$gridsize!=''||$minmarkerscluster!=''||$maxlinesinfocluster!=''||$clusterinfowindow!=''||$clusterzoom!=''||$clustermarkerzoom!=''||$icon!='') {
					$clusteroptions = array();
					if ($maxcluster!='')
						$clusteroptions[] ="maxVisibleMarkers : ".$maxcluster;
					if ($gridsize!='')
						$clusteroptions[] ="gridSize : ".$gridsize;
					if ($minmarkerscluster!='')
						$clusteroptions[] ="minMarkersPerCluster : ".$minmarkerscluster;
					if ($maxlinesinfocluster!='')
						$clusteroptions[] ="maxLinesPerInfoBox : ".$maxlinesinfocluster;
					if ($clusterinfowindow!='')
						$clusteroptions[] ="ClusterInfoWindow : '".$clusterinfowindow."'" ;
					if ($clusterzoom!='')
						$clusteroptions[] ="ClusterZoom : '".$clusterzoom."'" ;
					if ($clustermarkerzoom!='')
						$clusteroptions[] ="ClusterMarkerZoom : ".$clustermarkerzoom;
					if ($icon!='')
						$clusteroptions[] ="Icon : markericon".$mapnm;
	
					$xmloptions[] = "clustering : {".implode(",",$clusteroptions)."}";
				}
				
				$xmloptions[] = "titlestyle: ' '";
					
				$code .= "\nexml".$mapnm." = new GeoXml(\"exml".$mapnm."\", map".$mapnm.", kml".$mapnm.", {".implode(",",$xmloptions)."});";
				$code .= "\nexml".$mapnm.".parse(); ";
				if ($inline_coords==0&&$corzoom!='0')
					$code .= "\nsetTimeout('map".$mapnm.".setZoom(map".$mapnm.".getZoom()+".$corzoom.")', 750);";
			}
		}
	
		if ($traffic=='1') {
			$code .= "\ntrafficInfo".$mapnm." = new GTrafficOverlay();";
			$code .= "\nmap".$mapnm.".addOverlay(trafficInfo".$mapnm.");";
		}
	
		if ($panoramio!="none") {
			$code .= "\nmap".$mapnm.".addOverlay(new GLayer('com.panoramio.".$panoramio."'));";
		}
		if ($panotype!="none") {
			$code .= "\n  var options = {
							order: '".$panoorder."',
							set: '".$panotype."', 
							to: '".$panomax."' };
						panoLayer".$mapnm." = new PanoramioLayer(map".$mapnm.", options);
						panoLayer".$mapnm.".enable();";
		}
		
		if ($youtube!="none") {
			$code .= "\nmap".$mapnm.".addOverlay(new GLayer('com.youtube.".$youtube."'));";
		}
	
		if ($wiki!="none") {
			$code .= "\nmap".$mapnm.".addOverlay(new GLayer('org.wikipedia.".$wiki."'));";
		}
		
		if (count($layer)>0) {
			foreach ($layer as $lay) {
				$code .= "\nmap".$mapnm.".addOverlay(new GLayer('".$lay."'));";
			}
		}
		
		if ($localsearch=='1') {
			$code .= "localsearch".$mapnm." = new google.maps.LocalSearch(".((!empty($searchoptions))?"{ ".$searchoptions." }":"").");";
			$code .= "map".$mapnm.".addControl(localsearch".$mapnm.", new GControlPosition(G_ANCHOR_BOTTOM_RIGHT, new GSize(10,20)));";
			if (!empty($searchtext))
				$code .= "localsearch".$mapnm.".execute('".$searchtext."');";
		}
		
		if ($googlebar=='1') {
			$code .= "map".$mapnm.".enableGoogleBar();";
		}
	
		if ($adsmanager=='1') {
			$code .= "adsmanager".$mapnm." = new GAdsManager(map".$mapnm.", ".((!empty($adsense))?"'".$adsense."'":"''").", { style: 'adunit', maxAdsOnMap: ".$maxads.((!empty($searchtext))?", keywords: '".$searchtext."'":"").((!empty($channel)&&!empty($adsense))?", channel: '".$channel."'":"").(($localsearch=='1')?", position: new GControlPosition(G_ANCHOR_BOTTOM_LEFT, new GSize(20,20))":"")."}); ";
			$code .= "adsmanager".$mapnm.".enable();";
		}
	
		if ($this->debug_plugin=="1")
			$code.="map".$mapnm.".addControl(new VersionControl());";
	
		if (((!empty($tolat)&&!empty($tolon))||!empty($toaddress))&&$animdir=='0') {
			// Route
			$xmloptions = array();
			if ($dirtype=='W')
				$xmloptions[] = "travelMode : G_TRAVEL_MODE_WALKING";
			else
				$xmloptions[] = "travelMode : G_TRAVEL_MODE_DRIVING";
			
			if ($avoidhighways=='1')
				$xmloptions[] = "avoidHighways : true";
			else
				$xmloptions[] = "avoidHighways : false";
			
			$code .= "var dirsidebar".$mapnm." = document.getElementById('dirsidebar".$mapnm."');";
			$code .= "if (directions".$mapnm.") {
							directions".$mapnm.".clear();
							if ( dirsidebar".$mapnm.".hasChildNodes() )
							{
								while ( dirsidebar".$mapnm.".childNodes.length >= 1 )
								{
									dirsidebar".$mapnm.".removeChild( dirsidebar".$mapnm.".firstChild );
								} 
							}
					} else {
							directions".$mapnm." = new GDirections(map".$mapnm.", dirsidebar".$mapnm.");
							GEvent.addListener(directions".$mapnm.", 'error', handleErrors".$mapnm.");
						}
				";
				
			if (is_array($waypoints)&&count($waypoints)>0) {
				if ($address!="")
					array_unshift($waypoints, $address);
				else if ($lat !=""&&$lon!="")
					array_unshift($waypoints, $lat.", ".$lon);
				
				if ($toaddress!="")
					array_push($waypoints, $toaddress);
				else if ($tolat!=""&&$tolon!="")
					array_push($waypoints, $tolat.", ".$tolon);
				
				$wpstring="";
				foreach ($waypoints as $wp) {
					if ($wpstring!="")
						$wpstring.= ", ";
					$wpstring .= "'".$wp."'";
				}
				$code.="\ndirections".$mapnm.".loadFromWaypoints([".$wpstring."], {".implode(",",$xmloptions)."});";
			} else
				$code.="\ndirections".$mapnm.".load('from: ".(($address!="")?$address:(($latitude!='')?$latitude:$deflatitude).", ".(($longitude!='')?$longitude:$deflongitude))." to: ".(($toaddress!="")?$toaddress:$tolat.", ".$tolon)."', {".implode(",",$xmloptions)."});";
		}
		
		switch (strtolower($mapType)) {
		case "satellite":
			$code.="\nmap".$mapnm.".setMapType(G_SATELLITE_MAP);";
			break;
		
		case "hybrid":
			$code.="\nmap".$mapnm.".setMapType(G_HYBRID_MAP);";
			break;
	
		case "terrain":
			$code.="\nmap".$mapnm.".setMapType(G_PHYSICAL_MAP);";
			break;
	
		case "earth":
			$code.="\nmap".$mapnm.".setMapType(G_SATELLITE_3D_MAP);";
			$code.="\nmap".$mapnm.".getEarthInstance(initearth".$mapnm.");";
			break;
		
		default:
			$code.="\nmap".$mapnm.".setMapType(G_NORMAL_MAP);";
			break;
		}
		
		$code .="\nvar mt = map".$mapnm.".getMapTypes();
		for (var i=0; i<mt.length; i++) {
			mt[i].getMinimumResolution = function() {return ".$minzoom.";};
			mt[i].getMaximumResolution = function() {return ".$maxzoom.";};
		}";
	
		if($zoom_new=='1'&&$controltype=='user')
		{
			$code.="
			map".$mapnm.".enableContinuousZoom();
			map".$mapnm.".enableDoubleClickZoom();
			";
		} else {
			$code.="
			map".$mapnm.".disableContinuousZoom();
			map".$mapnm.".disableDoubleClickZoom();
			";
		}
	
		if($zoom_wheel=='1'&&$controltype=='user')
		{
			$code.="map".$mapnm.".enableScrollWheelZoom();
			";
		} 
	
		if (($inline_coords == 0 && count($kml)==0) // No inline coordinates and no kml => standard configuration
			||($latitude !=''&&$longitude!=''&&!($geocoded==1&&$toaddress!=''&&$description==''))) { // Inline coordinates and text is not empty
			$options = '';
			
			if ($tooltip!='') 
				$options .= (($options!='')?', ':'')."title:\"".$tooltip."\"";
			if ($icon!='')
				$options .= (($options!='')?', ':'')."icon:markericon".$mapnm;
			
			$code.="var marker".$mapnm." = new GMarker(point".(($options!='')?', {'.$options.'}':'').");";
			
			$code.="map".$mapnm.".addOverlay(marker".$mapnm.");
			";
	
			if ($description!=''||$dir!='0') {
				// convert $description to maybe tabs?
				// Check <tab> tag
				$reg='/(<tab\s*?(title=\'(.*?)\')?>)(.*?)(<\/tab>)/si';
				$c=preg_match_all($reg,$description,$m);
	
				// if <tab> then make array of $description
				if ($c>0) {
					$description= array();
					for ($z=0;$z<$c;$z++) {
						// transform attribute title to title of tab
						$description[$z]->title = htmlspecialchars_decode($m[3][$z], ENT_NOQUOTES);
						$description[$z]->text = htmlspecialchars_decode($m[4][$z], ENT_NOQUOTES);
					}
				}
				if ($dir!='0') {
					$dirform="<form id='directionform".$mapnm."' action='".$this->protocol.$this->googlewebsite."/maps' method='get' target='_blank' onsubmit='DirectionMarkersubmit".$mapnm."(this);return false;' class='mapdirform'>";

						
					$dirform.="<br />".$txt_dir."<input ".(($txt_to=='')?"type='hidden' ":"type='radio' ")." ".(($dirdef=='0')?"checked='checked'":"")." name='dir' value='to'>".(($txt_to!='')?$txt_to."&nbsp;":"")."<input ".(($txt_from=='')?"type='hidden' ":"type='radio' ").(($dirdef=='1')?"checked='checked'":"")." name='dir' value='from'>".(($txt_from!='')?$txt_from:"");
					$dirform.="<br />".$txt_diraddr."<input type='text' class='inputbox' size='20' name='saddr' id='saddr' value='' /><br />";
	
					if ($txt_driving!=''||$dirtype=="D")
	
						$dirform.="<input ".(($txt_driving=='')?"type='hidden' ":"type='radio' ")."class='radio' name='dirflg' value='' ".(($dirtype=="D")?"checked='checked'":"")." />".$txt_driving.(($txt_driving!='')?"&nbsp;":"");
					if ($txt_avhighways!=''||$dirtype=="1")
						$dirform.="<input ".(($txt_avhighways=='')?"type='hidden' ":"type='radio' ")."class='radio' name='dirflg' value='h' ".(($avoidhighways=='1')?"checked='checked'":"")." />".$txt_avhighways.(($txt_avhighways!='')?"&nbsp;":"");
					if ($txt_walking!=''||$dirtype=="W")
						$dirform.="<input ".(($txt_walking=='')?"type='hidden' ":"type='radio' ")."class='radio' name='dirflg' value='w' ".(($dirtype=="W")?"checked='checked'":"")." />".$txt_walking.(($txt_walking!='')?"&nbsp;":"");
					if ($txt_driving!=''||$txt_avhighways!=''||$txt_walking!='')
						$dirform.="<br />";	
					$dirform.="<input value='".$txt_get_dir."' class='button' type='submit' style='margin-top: 2px;'>";
					
					if ($dir=='2')
						$dirform.= "<input type='hidden' name='pw' value='2'/>";
	
					if ($lang!='') 
						$dirform.= "<input type='hidden' name='hl' value='".$lang."'/>";
	
					if (!empty($address))
						$dirform.="<input type='hidden' name='daddr' value='".$address." (".(($latitude!='')?$latitude:$deflatitude).", ".(($longitude!='')?$longitude:$deflongitude).")'/></form>";
					else
						$dirform.="<input type='hidden' name='daddr' value='".(($latitude!='')?$latitude:$deflatitude).", ".(($longitude!='')?$longitude:$deflongitude)."'/></form>";
					
					// Add form before div or at the end of the html.
					if (is_array($description)) {
						$description[$z+1]->title = $txt_dir;
						$description[$z+1]->text = htmlspecialchars_decode($dirform, ENT_NOQUOTES);
					} else {
						$pat="/&lt;\/div&gt;$/";
						if (preg_match($pat, $description))
							$description = preg_replace($pat, $dirform."</div>", $description);
						else {
							$pat="/<\/div>$/";
							if (preg_match($pat, $description))
								$description = preg_replace($pat, $dirform."</div>", $description);
							else
								$description.=$dirform;
						}
					}
				}
				
				if (!is_array($description))
					$description = htmlspecialchars_decode($description, ENT_NOQUOTES);
	
				// If marker 
				if ($marker==1) {
					if (is_array($description)) {
						$code .= "marker".$mapnm.".openInfoWindowTabsHtml([";
						$first = true;
						foreach ($description as $tab) {
							if ($first) 
								$first = false;
							else 
								$code.=",  ";
								
							$code.= "new GInfoWindowTab(\"".$tab->title."\", \"".$tab->text."\")";
						}
						
						$code .= "]);";  
						
					} else
						$code.="marker".$mapnm.".openInfoWindowHtml(\"".$description."\");"; 
				}
				
				$code.="GEvent.addListener(marker".$mapnm.", 'click', function() {
						marker".$mapnm;
				if (is_array($description)) {
					$code .=".openInfoWindowTabsHtml([";
					$first = true;
					foreach ($description as $tab) {
						if ($first) 
							$first = false;
						else 
							$code.=",  ";
							
						$code.= "new GInfoWindowTab(\"".$tab->title."\", \"".$tab->text."\")";
					}
					
					$code .= "]);";  
					
				} else
					$code.=".openInfoWindowHtml(\"".$description."\");";
					
				$code.="});
				";
			}
		}
		
		if ($imageurl!='') {
			$code .= "imageovl".$mapnm." = new GScreenOverlay('$imageurl',
									new GScreenPoint($imagex, $imagey, '$imagexyunits', '$imagexyunits'),  // screenXY
									new GScreenPoint($imageanchorx, $imageanchory, '$imageanchorunits', '$imageanchorunits'),  // overlayXY
									new GScreenSize($imagewidth, $imageheight)  // size on screen
								);
						map".$mapnm.".addOverlay(imageovl".$mapnm.");
				";
		}
		if ($animdir=='0'&&($sv=='top'||$sv=='bottom'||($sv!='none'&&$sv!='top'&&$sv!='bottom'))) {
			if ($sv!='none'&&$sv!='top'&&$sv!='bottom')
				$code.="\nvar panobj = document.getElementById('".$sv."');
						";
			else
				$code.="\nvar panobj = document.getElementById('svpanorama".$mapnm."');
						";
			$svopt = "";
			if ($svyaw!='0')
				$svopt .= "yaw:".$svyaw;
			if ($svpitch!='0')
				$svopt .= (($svopt=="")?"":", ")."pitch:".$svpitch;
			if ($svzoom!='')
				$svopt .= (($svopt=="")?"":", ")."zoom:".$svzoom;
				
			$code.="\nsvpanorama".$mapnm." = new GStreetviewPanorama(panobj);
					svlastpoint".$mapnm." = map".$mapnm.".getCenter();
					svpanorama".$mapnm.".setLocationAndPOV(svlastpoint".$mapnm.", ".(($svopt!='')?"{".$svopt."}":'null').");
					svmarker".$mapnm." = new GMarker(svlastpoint".$mapnm.", {icon: guyIcon".$mapnm." , draggable: true});
					map".$mapnm.".addOverlay(svmarker".$mapnm.");
					GEvent.addListener(svmarker".$mapnm.", 'dragend', onDragEnd".$mapnm.");
					GEvent.addListener(svpanorama".$mapnm.", 'initialized', onNewLocation".$mapnm.");
					GEvent.addListener(svpanorama".$mapnm.", 'yawchanged', onYawChange".$mapnm."); 
					";
		}
	
		if ($animdir!="0") {
			$xmloptions = array();
			$xmloptions[] = "preserveViewport: false";
			$xmloptions[] = "getSteps: true";
			
			if ($dirtype=='W')
				$xmloptions[] = "travelMode : G_TRAVEL_MODE_WALKING";
			else
				$xmloptions[] = "travelMode : G_TRAVEL_MODE_DRIVING";
			
			if ($avoidhighways=='1')
				$xmloptions[] = "avoidHighways : true";
			else
				$xmloptions[] = "avoidHighways : false";
				
			$opts = array();
			if ($animspeed!=1)
				$opts[] = "Speed : ".$animspeed;
			if ($animautostart!=0)
				$opts[] = "AutoStart : true";
			if ($animunit!='')
				$opts[] = "Unit : '".$animunit."'";
	//					$opts[] = "zoomlevel : ".$zoom;
			if ($dirtype=='W')
				$opts[] = "travelMode : G_TRAVEL_MODE_WALKING";
			else
				$opts[] = "travelMode : G_TRAVEL_MODE_DRIVING";
			
			if ($avoidhighways=='1')
				$opts[] = "avoidHighways : true";
			else
				$opts[] = "avoidHighways : false";
	
			$code.="\nvar panobj = document.getElementById('svpanorama".$mapnm."');
					svpanorama".$mapnm." = new GStreetviewPanorama(panobj);
					directions".$mapnm." = new GDirections(map".$mapnm.");
					";
	
			$lang = "";
			foreach ($langanim as $al) {
				$lang.=(($lang=='')?"":",")."'".$al."'";
			}
			
			$code.="\nopts = {".implode(",",$opts)."};
					lang = [".$lang."];
					";
			$code .="\nroute".$mapnm." = new Directionsobj('route".$mapnm."', map".$mapnm.", '".$mapnm."', svpanorama".$mapnm.", svclient".$mapnm.", directions".$mapnm.", centerpoint, opts, lang);";
			
			if (is_array($waypoints)&&count($waypoints)>0) {
				if ($address!="")
					array_unshift($waypoints, $address);
				if ($toaddress!="")
					array_push($waypoints, $toaddress);
				$wpstring="";
				foreach ($waypoints as $wp) {
					if ($wpstring!="")
						$wpstring.= ", ";
					$wpstring .= "'".$wp."'";
				}
				$code.="\ndirections".$mapnm.".loadFromWaypoints([".$wpstring."], {".implode(",",$xmloptions)."});";
			} else
				$code.="\ndirections".$mapnm.".load('from: ".$address." to: ".$toaddress."', {".implode(",",$xmloptions)."});";
		}
		
		if ($tilelayer!="") {
			$tilebounds=explode(",", $tilebounds);
			if (count($tilebounds)==4) {
				$code .="\ntilelayer".$mapnm." = new GTileLayer(GCopyrightCollection(''), ".$tileminzoom.", ".$tilemaxzoom.");";
				
				if ($tilemethod=='maptiler') {
					$code .="\nmercator".$mapnm." = new GMercatorProjection(".($tilemaxzoom+1).");
					tilelayer".$mapnm.".getTileUrl = function(tile,zoom) {
						if ((zoom < ".$tileminzoom.") || (zoom > ".$tilemaxzoom.")) {
							return '".$tilelayer."/none.png';
						} 
						var ymax = 1 << zoom;
						var y = ymax - tile.y -1;
						var tileBounds = new GLatLngBounds(
							mercator".$mapnm.".fromPixelToLatLng( new GPoint( (tile.x)*256, (tile.y+1)*256 ) , zoom ),
							mercator".$mapnm.".fromPixelToLatLng( new GPoint( (tile.x+1)*256, (tile.y)*256 ) , zoom )
						);
						if (tileBounds".$mapnm.".intersects(tileBounds)) {
							return '".$tilelayer."/'+zoom+'/'+tile.x+'/'+y+'.png';
						} else {
							return '".$tilelayer."/none.png';
						}
					}
					tilelayer".$mapnm.".isPng = function() { return false;};
					tilelayer".$mapnm.".getOpacity = function() { return ".$tileopacity."; }
					tileBounds".$mapnm." = new GLatLngBounds(new GLatLng(".$tilebounds[0].", ".$tilebounds[1]."), new GLatLng(".$tilebounds[2].", ".$tilebounds[3]."));";
				} else						
					$code .="\ntilelayer".$mapnm.".tileUrlTemplate = '".$tilelayer."/{Z}/{X}/{Y}.png';";
	;
				
				$code .="\nvar overlay".$mapnm." = new GTileLayerOverlay( tilelayer".$mapnm.", {zPriority:0 } );
				map".$mapnm.".addOverlay(overlay".$mapnm.");";
				$code.="\nGEvent.addListener(map".$mapnm.", 'maptypechanged', function() {
							if (map".$mapnm.".getCurrentMapType() == G_SATELLITE_3D_MAP)
								map".$mapnm.".getEarthInstance(initearth".$mapnm.");
						 });
						";
			}
		}
		
		if($zoom_wheel=='1')
		{
			$code.="GEvent.addDomListener(tst".$mapnm.", 'DOMMouseScroll', CancelEvent".$mapnm.");
					GEvent.addDomListener(tst".$mapnm.", 'mousewheel', CancelEvent".$mapnm.");
				";
		}
	
		/* remove link in google logo. Do not use
		$code.= "\nvar func".$mapnm." = function () {";
		$code.= "\n	var test_div = document.getElementById('googlemap".$mapnm."');";
		$code.= "\n	var test_obj = test_div.childNodes[1];";
		$code.= "\n	test_obj = test_obj.getElementsByTagName('a');";
		$code.= "\n	if (test_obj&&test_obj.length>0)";
		$code.= "\n		test_obj[0].href = '".$this->protocol.$this->googlewebsite."';";
		$code.= "\n};";
		$code.= "\nsetTimeout(func".$mapnm.", 1500);";
		*/
		
		/* remove copyright, terms and mapdata. Do not use 					
		$code.= "test_div = document.getElementById('googlemap".$mapnm."');";
		$code.= "test_obj = test_div.childNodes[1].style.display='none';";
		$code.= "test_obj = test_div.childNodes[2].style.display='none';";
		*/
	
		if($client_geo == 1) {
			if ($clientgeotype=="local")
				$code.="	});
					localSearch.execute(address);";
			else
				$code.="		       
							  });";
		}
	
		// End of script voor showing the map 
		if ($show!=0)
			$code.="\n	}";
			
		$code.="\n}
		//]]></script>
		";
		
		// Call the Maps through timeout to render in IE also
		// Set an event for watching the changing of the map so it can refresh itself
		$code.= "<script type=\"text/javascript\">//<![CDATA[
				if (GBrowserIsCompatible()) {
					obj = document.getElementById('mapbody".$mapnm."');
					obj.style.display = 'block';
					window.onunload=function(){window.onunload;GUnload()};
					tst".$mapnm.".setAttribute(\"oldValue\",0);
					tst".$mapnm.".setAttribute(\"refreshMap\",0);
					";
		
		if ($this->loadmootools=='1') {
		$code.= "if (window.MooTools==null)
					tstint".$mapnm."=setInterval(\"checkMap".$mapnm."()\",".$this->timeinterval.");
				else
					window.addEvent('domready', function() {
							tstint".$mapnm."=setInterval('checkMap".$mapnm."()', ".$this->timeinterval.");
						});
				";
		} else {
			$code.= "tstint".$mapnm."=setInterval(\"checkMap".$mapnm."()\",".$this->timeinterval.");
					";
		}
		
		$code.= "}
		//]]></script>
		";
	
		// Clean up variables except generated code and memory variables
		//unset();
		
		// Get memory before adding code to text
		$endmem = round($this->_memory_get_usage()/1024);
		$diffmem = $endmem-$startmem;
		$this->_debug_log("Memory Usage End: " . $endmem . " KB (".$diffmem." KB)");

		// Add code to text
		$code = "\n<!-- Plugin Google Maps version 2.13a by Mike Reumer ".(($this->debug_text!='')?$this->debug_text."\n":"")."-->".$code;

		
		// Clean up debug text for next _process
		$this->debug_text = '';
		
		// Depending of show place the code at end of page or on the {mosmap} position		
		if ($show==0) {
			$offset = strpos($text, $match);
			$text = preg_replace($this->regex, $lbcode, $text, 1);
			// If pagebreak add code before pagebreak
			preg_match($this->pagebreak, $text, $m, PREG_OFFSET_CAPTURE, $offset);
			if (count($m)>0)
				$offsetpagebreak = $m[0][1];
			else
				$offsetpagebreak = 0;
			if ($offsetpagebreak!=0) 
				$text = substr($text, 0, $offsetpagebreak).$code.substr($text, $offsetpagebreak);
			else
				$text .= $code;
		} else
			$text = preg_replace($this->regex, $code, $text, 1);

		// Clean up generated variables
		unset($startmem, $endmem, $diffmem, $show, $offset, $lbcode, $m, $offsetpagebreak, $code);
		
		return true;
	}

	function get_geo($address)
	{
		$this->_debug_log("get_geo(".$address.")");
	
		$coords = '';
		$getpage='';
		$replace = array("\n", "\r", "&lt;br/&gt;", "&lt;br /&gt;", "&lt;br&gt;", "<br>", "<br />", "<br/>");
		$address = str_replace($replace, '', $address);

		// Convert address to utf-8 encoding
		if (function_exists('mb_detect_encoding')) {
			$enc = mb_detect_encoding($address);
			if (!empty($enc))
				$address = mb_convert_encoding($address, "utf-8", $enc);
			else
				$address = mb_convert_encoding($address, "utf-8");
		}

		$this->_debug_log("Address: ".$address);
		
		$uri = $this->protocol.$this->googlewebsite."/maps/geo?q=".urlencode($address)."&output=xml&key=".$this->googlekey;
		$this->_debug_log("get_geo(".$uri.")");
		
		$ok = false;
		if (ini_get('allow_url_fopen')) { 
			if (file_exists($uri)) {
				$getpage = file_get_contents($uri);
				$ok = true;
			}
		} 
		
		if (!$ok) { 
			$this->_debug_log("URI couldn't be opened probably ALLOW_URL_FOPEN off");
			if (function_exists('curl_init')) {
				$this->_debug_log("curl_init does exists");
				$ch = curl_init();
				$timeout = 5; // set to zero for no timeout
				curl_setopt ($ch, CURLOPT_URL, $uri);
				curl_setopt ($ch, CURLOPT_RETURNTRANSFER, 1);
				curl_setopt ($ch, CURLOPT_CONNECTTIMEOUT, $timeout);
				$getpage = curl_exec($ch);
				curl_close($ch);
			} else
				$this->_debug_log("curl_init doesn't exists");
		}

		$this->_debug_log("Returned page: ".$getpage);
		if (function_exists('mb_detect_encoding')) {
			$enc = mb_detect_encoding($getpage);
			if (!empty($enc))
				$getpage = mb_convert_encoding($getpage, "utf-8", $enc);
		}

		if ($getpage <>'') {
			$expr = '/xmlns/';
			$getpage = preg_replace($expr, 'id', $getpage);
			$xml = new SimpleXMLElement($getpage);
			foreach($xml->xpath('//coordinates') as $coordinates) {
				$coords = $coordinates;
				break;
			}
			if ($coords=='') {
				$this->_debug_log("Coordinates: null");
			} else
				$this->_debug_log("Coordinates: ".join(", ", explode(",", $coords)));
		} else
			$this->_debug_log("get_geo totally wrong end!");
	
		// Clean up variables
		unset($coord, $getpage, $replace, $enc, $uri, $ok, $ch, $timeout, $expr, $xml, $coordinates);
		
		return $coords;
	}
	
	function _debug_log($text)
	{
		if ($this->debug_plugin =='1')
			$this->debug_text .= "\n// ".$text." (".round($this->_memory_get_usage()/1024)." KB)";
	
		return;
	}
	
	function _get_index($string)
	{
		if ($this->brackets=='{') {
			$string = preg_replace("/^(.*?)\[/", '', $string);
			$string = preg_replace("/\](.*?)$/", '', $string);
			
		} else {
			$string = preg_replace("/^.*\(/", '', $string);
			$string = preg_replace("/\).*$/", '', $string);
		}		
		return $string;
	}
	
    function _memory_get_usage()
    {
		if ( function_exists( 'memory_get_usage' ) )
			return memory_get_usage(); 
		else
			return 0;
    }

	function _get_API_key () {
		$url = trim($this->urlsetting);
		$replace = array('http://', 'https://');
		$url = str_replace($replace, '', $url);
		$this->_debug_log("url: ".$url);
		$key = '';
		$multikey = trim($this->params->get( 'Google_Multi_API_key', '' ));
		if ($multikey!='') {
			$this->_debug_log("multikey: ".$multikey);
			$replace = array("\n", "\r", "<br/>", "<br />", "<br>");
			$sites = preg_split("/[\n\r]+/", $multikey);
			foreach($sites as $site)
			{
				$values = explode(";",$site, 2);
				if (count($values)>1) {
					$values[0] = trim(str_replace($replace, '', $values[0]));
					$values[1] = str_replace($replace, '', $values[1]);
					$this->_debug_log("values[0]: ".$values[0]);
					$this->_debug_log("values[1]: ".$values[1]);
					if ($url==$values[0])
					{
						$key = trim($values[1]);
						break;
					}
				}
			}
		}
		if ($key=='')
			$key = trim($this->params->get( 'Google_API_key', '' ));

		// Clean up variables
		unset($url, $replace, $multikey, $sites, $site, $values);
		$this->_debug_log("key: ".$key);
		return $key;
	}
	
	function _randomkeys($length)
	{
		$key = "";
		$pattern = "1234567890abcdefghijklmnopqrstuvwxyz";
		for($i=0;$i<$length;$i++)
		{
			$key .= $pattern{rand(0,35)};
		}
		
		// Clean up variables
		unset($i, $pattern);
		return $key;
	}

	function _translate($orgtext, $lang) {
		$langtexts = preg_split("/[\n\r]+/", $orgtext);
		$text = "";

		if (is_array($langtexts)) {
			$replace = array("\n", "\r", "<br/>", "<br />", "<br>");
			$firsttext = "";
			foreach($langtexts as $langtext)
			{
				$values = explode(";",$langtext, 2);
				if (count($values)>1) {
					$values[0] = trim(str_replace($replace, '', $values[0]));
					if ($firsttext == "")
						$firsttext = $values[1];
						
					if (trim($lang)==$values[0])
					{
						$text = $values[1];
						break;
					}
				}
			}
			// Not found
			if ($text=="")
				$text = $firsttext;
		}	
		
		if ($text=="")
			$text = $orgtext;
	
		$text = htmlspecialchars_decode($text, ENT_NOQUOTES);
	
		// Clean up variables
		unset($langtexts, $replace, $langtext, $values);
		return $text;
	}
	
	function _getlang() {
		$this->_debug_log("langtype: ".$this->langtype);

		if ($this->langtype == 'site') {
			$lang = $this->lang->getTag();
			$this->_debug_log("Joomla lang: ".$lang);
			// Chinese and portugal use full iso code to indicate language
			if (!($lang=='zh'||$lang=='pt')) {
				$locale_parts = explode('-', $this->lang->getTag());
				$lang = $locale_parts[0];
			}
		} else if ($this->langtype == 'config') {
			$lang = $this->params->get( 'lang', '' );
			$this->_debug_log("config lang: ".$lang);
		} else if ($this->langtype == 'joomfish') {
			global $iso_client_lang; // This is a global of Joomfish!
			$lang = $iso_client_lang;
			$this->_debug_log("Joomfish lang: ".$lang);
		} else {
			$lang = '';
		} 
		
		// Clean up variables
		unset($locale_parts);
		$this->_debug_log("lang: ".$lang);
		return $lang;
	}
	
	function _remove_html_tags($text) {
		$reg[] = "/<span[^>]*?>/si";
		$repl[] = '';
		$reg[] = "/<\/span>/si";
		$repl[] = '';
		$text = preg_replace( $reg, $repl, $text );
		
		// Clean up variables
		unset($reg, $repl);
		return $text;
	}
	
	function _addscript($url, &$text) {
		// The method depends on event type. onAfterRender is complex and others are simple based on framework
		if ($this->event!='onAfterRender')
			$this->document->addScript($url);
		else {
			// Get header
			$reg = "/(<HEAD[^>]*>)(.*?)(<\/HEAD>)(.*)/si";
			$count = preg_match_all($reg,$text,$html);	
			if ($count>0) {
				$head=$html[2][0];
			} else {
				$head='';
			}
			// clean browser if statements
			$reg = "/<!--\[if(.*?)<!\[endif\]-->/si";
			$head = preg_replace($reg, '', $head);

			// define scripts regex
			$reg = '/<script.*src=[\'\"](.*?)[\'\"][^>]*[^<]*(<\/script>)?/i';
			$found = false;
			
			$count = preg_match_all($reg,$head,$scripts,PREG_OFFSET_CAPTURE | PREG_PATTERN_ORDER);	

			if ($count>0)
				foreach ($scripts[1] as $script) {
					if ($script[0]==$url) {
						$found = true;
						break;
					}
				}
				
			if (!$found) {
				$script = "<script type='text/javascript' src='".$url."'></script>\n";
				if ($count==0) {
					// No scripts then just add it before </head>
					$pos = strpos($text, "</head>");
					$text = substr($text,0, $pos-1).$script.substr($text,$pos);
				} else {
					//add script after the last script
					// position last script and add length
					$pos = strpos($text, trim($scripts[0][$count-1][0]))+strlen(trim($scripts[0][$count-1][0]));
					$text = substr($text,0, $pos+1).$script.substr($text,$pos+2);
				}
			}
			
			// Clean up variables
			unset($reg, $count, $head, $found, $scripts, $script, $pos);
		}
	}
	
	function _addstylesheet($url, &$text) {
		// The method depends on event type. onAfterRender is complex and others are simple based on framework
		if ($this->event!='onAfterRender')
			$this->document->addStyleSheet($url);
		else {
			// Get header
			$reg = "/(<HEAD[^>]*>)(.*?)(<\/HEAD>)(.*)/si";
			$count = preg_match_all($reg,$text,$html);	
			if ($count>0) {
				$head=$html[2][0];
			} else {
				$head='';
			}
			
			// clean browser if statements
			$reg = "/<!--\[if(.*?)<!\[endif\]-->/si";
			$head = preg_replace($reg, '', $head);

			// define scripts regex
			$reg = '/<link.*href=[\'\"](.*?)[\'\"][^>]*[^<]*(<\/link>)?/i';
			$found = false;
			
			$count = preg_match_all($reg,$head,$styles,PREG_OFFSET_CAPTURE | PREG_PATTERN_ORDER);	
			if ($count>0)
				foreach ($styles[1] as $style) {
					if ($style[0]==$url) {
						$found = true;
						break;
					}
				}
				
			if (!$found) {
				$style = "<link href='".$url."' rel='stylesheet' type='text/css' />\n";
				if ($count==0) {
					// No styles then just add it before </head>
					$pos = strpos($text, "</head>");
					$text = substr($text,0, $pos-1).$style.substr($text,$pos);
				} else {
					//add style after the last style
					// position last style and add length
					$pos = strpos($text, trim($styles[0][$count-1][0]))+strlen(trim($styles[0][$count-1][0]));
					$text = substr($text,0, $pos+1).$style.substr($text,$pos+2);
				}
			}
			
			// Clean up variables
			unset($reg, $count, $head, $found, $styles, $style, $pos);
		}
	}
	function _addstyledeclaration($source, &$text) {
		// The method depends on event type. onAfterRender is complex and others are simple based on framework
		if ($this->event!='onAfterRender')
			$this->document->addStyleDeclaration($source);
		else {
			// Get header
			$reg = "/(<HEAD[^>]*>)(.*?)(<\/HEAD>)(.*)/si";
			$count = preg_match_all($reg,$text,$html);	
			if ($count>0) {
				$head=$html[2][0];
			} else {
				$head='';
			}
			
			// clean browser if statements
			$reg = "/<!--\[if(.*?)<!\[endif\]-->/si";
			$head = preg_replace($reg, '', $head);

			// define scripts regex
			$reg = '/<style[^>]*>(.*?)<\/style>/si';
			$found = false;
			
			$count = preg_match_all($reg,$head,$styles,PREG_OFFSET_CAPTURE | PREG_PATTERN_ORDER);	
			if ($count>0)
				foreach ($styles[1] as $style) {
					if ($style[0]==$source) {
						$found = true;
						break;
					}
				}
				
			if (!$found) {
				$source = "<style type='text/css'>\n".$source."\n</style>\n";
				if ($count==0) {
					// No styles then just add it before </head>
					$pos = strpos($text, "</head>");
					$text = substr($text,0, $pos-1).$source.substr($text,$pos);
				} else {
					//add style after the last style
					// position last style and add length
					$pos = strpos($text, trim($styles[0][$count-1][0]))+strlen(trim($styles[0][$count-1][0]));
					$text = substr($text,0, $pos+1).$source.substr($text,$pos+2);
				}
			}
			
			// Clean up variables
			unset($reg, $count, $head, $found, $styles, $style, $pos);
		}
	}
	
	function _upgrade_plugin() {
		if ($this->params->get( 'publ', '' )=='') {
			if (substr($this->jversion,0,3)=="1.5") {
				$database  =& JFactory::getDBO();
				$query = "SELECT params FROM #__plugins AS b WHERE b.element='plugin_googlemap2' AND b.folder='content'";
				$database->setQuery($query);
				if (!$database->query())
					JError::raiseWarning(1, 'plgSystemPlugin_googlemap2::install_params: '.JText::_('SQL Error')." ".$database->stderr(true));
				
				$params = $database->loadResult();
				$savparams = $database->getEscaped($params);
				if ($params!="") {
					$query = "UPDATE #__plugins AS a SET a.params = '{$savparams}' WHERE a.element='plugin_googlemap2' AND a.folder='system'";
					$database->setQuery($query);
					if (!$database->query())
						JError::raiseWarning(1, 'plgSystemPlugin_googlemap2::install_params: '.JText::_('SQL Error')." ".$database->stderr(true));
					$this->params = new JParameter( $params );
				}
				
				// Clean up variables
				unset($database, $query, $params, $savparams, $plugin);
			}
		}		
	}
}

?>