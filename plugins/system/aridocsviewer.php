<?php
/*
 * ARI Docs Viewer Joomla! 1.5 plugin
 *
 * @package		ARI Docs Viewer
 * @version		1.0.0
 * @author		ARI Soft
 * @copyright	Copyright (c) 2009 www.ari-soft.com. All rights reserved
 * @license		GNU/GPL (http://www.gnu.org/copyleft/gpl.html)
 *   
*/

defined('_JEXEC') or die('Restricted access');

jimport('joomla.plugin.plugin');

require_once dirname(__FILE__) . DS . 'aridocsviewer' . DS . 'kernel' . DS . 'class.AriKernel.php';

AriKernel::import('Mambot.MambotBase');

class plgSystemAridocsviewer extends JPlugin
{
	var $_executed = false;

	function plgSystemAridocsviewer(&$subject, $config)
	{
		parent::__construct($subject, $config); 
	}
	
	function onAfterRender()
	{
		$this->prepareContent();
	}
	
	function prepareContent()
	{
		if ($this->_executed)
			return ;
			
		$this->_executed = true;
		$mainframe =& JFactory::getApplication();

		$doc =& JFactory::getDocument();
		$docType = $doc->getType();

		if ($mainframe->isAdmin() || $docType !== 'html') 
			return ;
		
		$content = JResponse::getBody();
		if (strpos($content, '{aridoc') === false)
			return ;

		$this->loadLanguage('', JPATH_ADMINISTRATOR);
		$uri = JURI::root(true) . '/plugins/system/' . (J1_6 ? 'aridocsviewer/' : '') . 'aridocsviewer/assets/';
		
		$assets = array();
		$assets[] = sprintf('<link rel="stylesheet" href="%1$sstyles.css" type="text/css" />', $uri);
		if ((bool)$this->params->get('loadJQuery', true))
		{
			$assets[] = '<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>';
			if ((bool)$this->params->get('callNC', true))
				$assets[] = '<script type="text/javascript">jQuery.noConflict();</script>';
		}
		$assets[] = sprintf('<script type="text/javascript" src="%1$saridocsviewer.js"></script>', $uri);

		$plugin = new AriDocsViewerContentPlugin();
		$plugin->processContent(true, $content, $this->params);
		
		JResponse::setBody(
			preg_replace('/<\/head\s*>/i', join('', $assets) . '$0', $content, 1)
		);
	}
}

class AriDocsViewerContentPlugin extends AriMambotBase
{
	function AriDocsViewerContentPlugin()
	{
		parent::__construct('aridoc', 'system');
	}

	function replaceCallback($attrs, $content)
	{
		AriKernel::import('DocsViewer.DocsViewer');

		$params = $this->getParams($attrs, $content);
		$engine = AriUtils::getParam($attrs, 'engine', $this->_processParams->get('engine', 'iframe'));
		$model = AriDocsViewerHelper::getModel($engine);

		return $model->processContent($params, $content);
	}
	
	function getParams($attrs, $content)
	{
		if (!is_array($attrs))
			$attrs = array();

		$params = $this->_processParams->toArray();
		foreach ($params as $key => $value)
		{
			if (strpos($key, 'opt_') !== 0)
				continue ;
				
			$cleanKey = substr($key, 4);
			if (!isset($attrs[$cleanKey]))
				$attrs[$cleanKey] = $value;
		}

		if (!isset($attrs['url']))
			$attrs['url'] = $content;

		return $attrs;
	}
}
?>