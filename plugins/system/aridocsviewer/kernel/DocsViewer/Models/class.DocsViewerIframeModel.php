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

AriKernel::import('DocsViewer.Models.DocsViewerModel');

class AriDocsViewerIframeModel extends AriDocsViewerModel
{
	function processContent($params, $content)
	{
		$url = trim($params['url']);
		if (empty($url))
			return JText::_('ADV_EMPTY_URL');

		$showLoading = (bool)$params['loadingPane'];
		$loadingMessage = $showLoading ? AriUtils::getParam($params, 'loadingMessage') : null;
		$width = AriUtils::getParam($params, 'width', 500);
		$height = AriUtils::getParam($params, 'height', 350);

		return sprintf('<div class="adv-container %6$s %5$s">%4$s<iframe class="adv-frame" src="%1$s" width="%2$s" height="%3$s" frameBorder="0" allowTransparency="true"></iframe></div>',
			$url,
			$width,
			$height,
			$loadingMessage ? '<div class="adv-loading-message">' . $loadingMessage . '</div>' : '',
			AriUtils::getParam($params, 'class'),
			$showLoading ? 'adv-loading' : '');
	}
}
?>