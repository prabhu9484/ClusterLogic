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

class AriDocsViewerArticleModel extends AriDocsViewerIframeModel
{
	function processContent($params, $content)
	{
		if (empty($params['id']))
			return JText::_('ADV_EMPTY_ARTICLEID');
	
		$id = intval($params['id'], 10);
		if ($id < 1)
			return sprintf(JText::_('ADV_INCORRECT_ARTICLEID'), $params['id']);
		
		$params['url'] = sprintf('%1$s/index.php?option=com_content&view=article&id=%2$d&tmpl=component',
			JURI::root(true),
			$id);

		return parent::processContent($params, $content);
	}
}
?>