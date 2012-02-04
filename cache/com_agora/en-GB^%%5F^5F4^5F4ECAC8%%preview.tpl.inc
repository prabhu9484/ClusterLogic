<?php /* Smarty version 2.6.20, created on 2010-03-24 18:02:38
         compiled from profile/preview.tpl */

$this->_cache_serials['/var/www/joomla2/cache/com_agora/en-GB^%%5F^5F4^5F4ECAC8%%preview.tpl.inc'] = 'dc1024dce12227747584a779542860ac';

?><?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'script', 'profile/preview.tpl', 27, false),array('function', 'url', 'profile/preview.tpl', 49, false),array('modifier', 'escape', 'profile/preview.tpl', 86, false),array('modifier', 'agora_date', 'profile/preview.tpl', 154, false),)), $this); ?>
<?php
function _smarty_tplfunc_dc1024dce12227747584a779542860ac_0(&$_smarty)
{
echo $_smarty->_plugins['function']['script'][0][0]->agoraScript(array('src' => "http://maps.google.com/maps?file=api&amp;v=1&amp;key=".($_smarty->_tpl_vars['agora_config']['o_um_key'])), $_smarty);
}


function _smarty_tplfunc_dc1024dce12227747584a779542860ac_1(&$_smarty)
{
echo $_smarty->_plugins['function']['script'][0][0]->agoraScript(array('src' => "js/gmap_profile.js"), $_smarty);
}



?>
