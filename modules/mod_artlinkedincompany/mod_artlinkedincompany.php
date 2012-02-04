<?php
/**
* @module		Art LinkedIn Company
* @copyright	Copyright (C) 2009 artetics.com
* @license		GPL
*/

defined('_JEXEC') or die('Restricted access');

$type = $params->get('type', 'popup');
$border = $params->get('border', 'no');
$linkText = $params->get('linkText', '');
$company = $params->get('company', '');
$moduleId = 'artLinkedInCompany' . $module->id;

if ($company) {
  $document = &JFactory::getDocument();
  $document->addScript('http://www.linkedin.com/companyInsider?script&useBorder=' . $border);
  echo '<span id="' . $moduleId . '">' . $linkText . '</span>';
  if ($type == 'popup') {
    echo '<script type="text/javascript">new LinkedIn.CompanyInsiderPopup("' . $moduleId . '","' . $company . '");</script>';
  } else {
    echo '<script type="text/javascript">new LinkedIn.CompanyInsiderBox("' . $moduleId . '","' . $company . '");</script>';
  }
} else {
  echo "LinkedIn company name is not specified";
}
?>