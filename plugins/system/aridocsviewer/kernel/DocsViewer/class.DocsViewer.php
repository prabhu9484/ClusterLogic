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

AriKernel::import('Utils.Utils');
jimport('joomla.filter.filterinput');

class AriDocsViewerHelper
{
	function getModel($model, $prefix = 'DocsViewer')
	{
		$modelInstance = null;
		$model = ucfirst(JFilterInput::clean($model, 'WORD'));
		if (empty($model))
		{
			return $modelInstance;
		}
		else
		{
			$modelName = $prefix . $model . 'Model';
			$modelPath = dirname(__FILE__) . DS . 'Models' . DS . 'class.' . $modelName . '.php';

			if (!@file_exists($modelPath))
			{
				return $modelInstance;
			}
			else
			{
				AriKernel::import('DocsViewer.Models.' . $modelName);

				$modelClass = 'Ari' . $modelName;
				$modelInstance = new $modelClass();
			}
		}
		
		return $modelInstance;
	}
}
?>