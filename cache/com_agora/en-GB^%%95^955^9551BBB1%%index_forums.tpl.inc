<?php /* Smarty version 2.6.20, created on 2010-03-24 16:41:07
         compiled from index_forums.tpl */

$this->_cache_serials['/var/www/joomla2/cache/com_agora/en-GB^%%95^955^9551BBB1%%index_forums.tpl.inc'] = 'b93f9cdf55a8898872c23b704a3045a0';

?><?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'feed', 'index_forums.tpl', 2, false),array('function', 'url', 'index_forums.tpl', 63, false),array('function', 'loadModule', 'index_forums.tpl', 112, false),array('block', 'moduleExists', 'index_forums.tpl', 109, false),)), $this); ?>
<?php
function _smarty_tplfunc_b93f9cdf55a8898872c23b704a3045a0_0(&$_smarty)
{
$_smarty->_tag_stack[] = array('moduleExists', array('name' => 'agora_main')); $_block_repeat=true;$_smarty->_plugins['block']['moduleExists'][0][0]->moduleExists($_smarty->_tag_stack[count($_smarty->_tag_stack)-1][1], null, $_smarty, $_block_repeat);while ($_block_repeat) { ob_start(); ?>
<?php if ($_smarty->_foreach['category_loop']['iteration'] == 1): ?>
<div class="ag_adsense">
	<?php echo $_smarty->_plugins['function']['loadModule'][0][0]->loadModule(array('name' => 'agora_main'), $_smarty);?>

</div>
<div class="ag_clearer"></div>
<?php endif; ?>
<?php $_block_content = ob_get_contents(); ob_end_clean(); $_block_repeat=false;echo $_smarty->_plugins['block']['moduleExists'][0][0]->moduleExists($_smarty->_tag_stack[count($_smarty->_tag_stack)-1][1], $_block_content, $_smarty, $_block_repeat); }  array_pop($_smarty->_tag_stack); 
}



?>
