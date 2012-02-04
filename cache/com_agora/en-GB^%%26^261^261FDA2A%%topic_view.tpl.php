<?php /* Smarty version 2.6.20, created on 2010-03-24 17:07:19
         compiled from tools/topic_view.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'url', 'tools/topic_view.tpl', 19, false),)), $this); ?>
<ul id="ag_f_menu">
	<li class="ag_node">
		<a href="javascript:void(0);" class="ag_f_menu_title">Topic Tools</a>
		<ul>
						<?php if (! $this->_tpl_vars['agora_user']['is_guest']): ?>
			<li class="ag_li">
				<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'index','action' => 'mark_read'), $this);?>
" class="icon_show_new">Mark Topics Read</a>
			</li>
			<?php endif; ?>
		</ul>
	</li>
</ul>