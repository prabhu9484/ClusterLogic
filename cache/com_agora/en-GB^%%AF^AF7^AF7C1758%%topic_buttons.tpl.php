<?php /* Smarty version 2.6.20, created on 2010-03-24 16:41:07
         compiled from misc/topic_buttons.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'url', 'misc/topic_buttons.tpl', 12, false),)), $this); ?>
<div class="ag_button">
	<?php if (isset ( $this->_tpl_vars['ag_groups'] )): ?>
		<div class="ag_groups"><?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "tools/ag_groups.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?></div>
	<?php elseif ($this->_tpl_vars['agora_config']['o_quickjump'] == '1'): ?>
		<div class="ag_qjump"><?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "tools/qjump.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?></div>
	<?php endif; ?>

	<?php if ($this->_tpl_vars['post_poll'] || $this->_tpl_vars['post_topic']): ?>
	<span class="ag_floatright">
	<?php if ($this->_tpl_vars['post_topic']): ?>
		<span class="ag_newTopic ag_bttn_r">
			<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'post','page' => 'topic','action' => 'select_forum'), $this);?>
" title="New Topic">New Topic</a>
		</span>
	<?php endif; ?>
	<?php if ($this->_tpl_vars['post_poll']): ?>
		<span class="ag_newPoll ag_bttn_r">
			<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'poll','page' => 'select','action' => 'select_forum'), $this);?>
" title="New Poll">New Poll</a>
		</span>
	<?php endif; ?>
	</span>
	<?php endif; ?>
</div>