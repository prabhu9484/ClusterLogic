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

class AriDocsViewerGoogleModel extends AriDocsViewerIframeModel
{
	function processContent($params, $content)
	{
		$url = trim($params['url']);
		if (empty($url))
			return JText::_('ADV_EMPTY_URL');
			
		if (!AriUtils::isRemoteResource($url))
			$url = JURI::root() . $url;

		$params['url'] = sprintf('http://docs.google.com/viewer?url=%1$s&embedded=true',
			htmlentities(urlencode($url), ENT_QUOTES));

		return parent::processContent($params, $content);
	}
}
?>