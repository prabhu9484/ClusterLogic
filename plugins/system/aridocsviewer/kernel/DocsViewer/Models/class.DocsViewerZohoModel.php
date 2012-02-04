<?php
/*
 * ARI Docs Viewer
 *
 * @package		ARI Docs Viewer
 * @version		1.0.0
 * @author		ARI Soft
 * @copyright	Copyright (c) 2010 www.ari-soft.com. All rights reserved
 * @license		GNU/GPL (http://www.gnu.org/copyleft/gpl.html)
 * 
 */

defined('ARI_FRAMEWORK_LOADED') or die('Direct Access to this location is not allowed.');

AriKernel::import('DocsViewer.Models.DocsViewerIframeModel');

class AriDocsViewerZohoModel extends AriDocsViewerIframeModel
{
	function processContent($params, $content)
	{
		$url = trim($params['url']);
		if (empty($url))
			return JText::_('ADV_EMPTY_URL');

		if (!AriUtils::isRemoteResource($url))
			$url = JURI::root() . $url;
		
		$embed = (bool)AriUtils::getParam($params, 'embed', false);
		$cache = (bool)AriUtils::getParam($params, 'cache', true);

		$params['url'] = sprintf('http://viewer.zoho.com/api/urlview.do?url=%1$s&amp;embed=%2$s&amp;cache=%3$s',
			htmlentities(urlencode($url), ENT_QUOTES),
			$embed ? 'true' : 'false',
			$cache ? 'true' : 'false');

		return parent::processContent($params, $content);
	}
}
?>