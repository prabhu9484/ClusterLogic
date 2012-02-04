<?php /* Smarty version 2.6.20, created on 2010-03-24 16:43:17
         compiled from users/list.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'count', 'users/list.tpl', 23, false),array('modifier', 'agora_date', 'users/list.tpl', 44, false),array('function', 'url', 'users/list.tpl', 42, false),)), $this); ?>
<?php echo $this->_tpl_vars['html']->toolbar->title('Users'); ?>

<?php echo $this->_tpl_vars['html']->toolbar->editList(); ?>



<form name="adminForm" method="POST">
	<input type="hidden" name="checked" value="0"/>
	<input type="hidden" name="agora_task" value="users"/>
	<input type="hidden" name="task" value="filter"/>
	<input type="hidden" name="option" value="com_agora"/>
	<input type="hidden" name="boxchecked" value="0"/>

	<input type="hidden" name="filter_order" value=""/>
	<input type="hidden" name="filter_order_Dir" value=""/>

	Username&nbsp;<input type="text" name="filter[username]" value="<?php echo $this->_tpl_vars['filter']['username']; ?>
"/>
	E-Mail&nbsp;<input type="text" name="filter[email]" value="<?php echo $this->_tpl_vars['filter']['email']; ?>
"/>
	Strict match&nbsp;<input type="checkbox" name="filter_strict" value="1" <?php if ($this->_tpl_vars['filter_strict']): ?>checked="checked"<?php endif; ?>/>
	<input type="submit" value="Filter"/>

	<table class="adminlist">
		<thead>
			<th width="20">
				<input type="checkbox" name="toggle" value="" onclick="checkAll(<?php echo count($this->_tpl_vars['users']); ?>
);" />
			</th>
			<th width="20">ID</th>
			<th><?php echo $this->_tpl_vars['html']->jhtml('grid.sort','Name','username',($this->_tpl_vars['sort_dir']),($this->_tpl_vars['sort_field']),'sort'); ?>
</th>
			<th><?php echo $this->_tpl_vars['html']->jhtml('grid.sort','Email','email',($this->_tpl_vars['sort_dir']),($this->_tpl_vars['sort_field']),'sort'); ?>
</th>
			<th><?php echo $this->_tpl_vars['html']->jhtml('grid.sort','Registered','registered',($this->_tpl_vars['sort_dir']),($this->_tpl_vars['sort_field']),'sort'); ?>
</th>
			<th><?php echo $this->_tpl_vars['html']->jhtml('grid.sort','Last visit','last_visit',($this->_tpl_vars['sort_dir']),($this->_tpl_vars['sort_field']),'sort'); ?>
</th>
			<th><?php echo $this->_tpl_vars['html']->jhtml('grid.sort','posts','num_posts',($this->_tpl_vars['sort_dir']),($this->_tpl_vars['sort_field']),'sort'); ?>
</th>
			<th>Num groups</th>
			<th>Banned</th>
		</thead>
		<tfoot>
			<tr><td colspan="9"><?php echo $this->_tpl_vars['pagination']->getListFooter(); ?>
</td></tr>
		</tfoot>
		<tbody>
			<?php $_from = $this->_tpl_vars['users']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['num'] => $this->_tpl_vars['user']):
?>
			<tr>
				<td><?php echo $this->_tpl_vars['html']->jhtml('grid.id',$this->_tpl_vars['num'],$this->_tpl_vars['user']['id']); ?>
</td>
				<td><?php echo $this->_tpl_vars['user']['id']; ?>
</td>
				<td><a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'users','action' => 'edit','user_id' => $this->_tpl_vars['user']['id']), $this);?>
"><?php echo $this->_tpl_vars['user']['username']; ?>
</a></td>
				<td><a href="mailto:<?php echo $this->_tpl_vars['user']['email']; ?>
"><?php echo $this->_tpl_vars['user']['email']; ?>
</a></td>
				<td><?php echo ((is_array($_tmp=$this->_tpl_vars['user']['registered'])) ? $this->_run_mod_handler('agora_date', true, $_tmp) : $this->_plugins['modifier']['agora_date'][0][0]->agoraDate($_tmp)); ?>
</td>
				<td><?php echo ((is_array($_tmp=$this->_tpl_vars['user']['last_visit'])) ? $this->_run_mod_handler('agora_date', true, $_tmp) : $this->_plugins['modifier']['agora_date'][0][0]->agoraDate($_tmp)); ?>
</td>
				<td><?php echo $this->_tpl_vars['user']['num_posts']; ?>
</td>
				<td><?php echo $this->_tpl_vars['user']['num_groups']; ?>
</td>
				<td><?php echo $this->_tpl_vars['html']->form->toggle($this->_tpl_vars['num'],$this->_tpl_vars['user']['banned'],'Ban user','Unban user','ban','unban'); ?>
</td>
			</tr>
			<?php endforeach; else: ?>
			<tr><td colspan="9">No users found</td></tr>
			<?php endif; unset($_from); ?>
		</tbody>
	</table>
</form>