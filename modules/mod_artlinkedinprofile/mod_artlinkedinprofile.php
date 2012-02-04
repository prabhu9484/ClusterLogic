<?php
/**
* @module		Art LinkedIn Profile
* @copyright	Copyright (C) 2009 artetics.com
* @license		GPL
*/

defined('_JEXEC') or die('Restricted access');

$type = $params->get('type', 'popup');
$linkText = $params->get('linkText', '');
$profile = $params->get('profile', '');

if ($profile) {
  $document = &JFactory::getDocument();
  $document->addScript('http://www.linkedin.com/js/public-profile/widget-os.js');
  if ($type == 'popup') {
    echo '<a class="linkedin-profileinsider-popup" href="http://www.linkedin.com/in/' . $profile . '">' . $linkText . '</a>';
  } else {
    echo '<a class="linkedin-profileinsider-inline" href="http://www.linkedin.com/in/' . $profile . '">' . $linkText . '</a>';
  }
} else {
  echo "LinkedIn profile is not specified";
}
?>