<?php /* Smarty version 2.6.20, created on 2010-03-24 17:07:19
         compiled from include/bcrumbs.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'url', 'include/bcrumbs.tpl', 4, false),array('modifier', 'truncate', 'include/bcrumbs.tpl', 11, false),)), $this); ?>
<?php if (count ( $this->_tpl_vars['breadcrumbs'] ) > 0): ?>
<ul>
	<li>
		<span class="ag_good_link"><a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array(), $this);?>
">Index</a></span>
	</li>
	<?php $_from = $this->_tpl_vars['breadcrumbs']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['crumb']):
?>
	<li>&raquo;
		<?php if (! empty ( $this->_tpl_vars['crumb']['url'] )): ?>
		<span class="ag_good_link"><a href="<?php echo $this->_tpl_vars['crumb']['url']; ?>
"><?php echo $this->_tpl_vars['crumb']['caption']; ?>
</a></span>
		<?php else: ?>
		<?php echo ((is_array($_tmp=$this->_tpl_vars['crumb']['caption'])) ? $this->_run_mod_handler('truncate', true, $_tmp, 40, '...') : smarty_modifier_truncate($_tmp, 40, '...')); ?>

		<?php endif; ?>
	</li>
	<?php endforeach; endif; unset($_from); ?>
</ul>
<?php endif; ?>