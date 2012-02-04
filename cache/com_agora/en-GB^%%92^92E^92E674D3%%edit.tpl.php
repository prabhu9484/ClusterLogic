<?php /* Smarty version 2.6.20, created on 2010-03-24 16:43:46
         compiled from groups/edit.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'url', 'groups/edit.tpl', 49, false),array('modifier', 'implode', 'groups/edit.tpl', 51, false),array('modifier', 'truncate', 'groups/edit.tpl', 57, false),)), $this); ?>
<?php echo $this->_tpl_vars['html']->toolbar->title('Group'); ?>

<?php echo $this->_tpl_vars['html']->toolbar->save('save'); ?>

<?php echo $this->_tpl_vars['html']->toolbar->cancel(); ?>


<form name="adminForm" method="POST">
	<?php echo $this->_tpl_vars['html']->form->param('option','com_agora'); ?>

	<?php echo $this->_tpl_vars['html']->form->param('agora_task','groups'); ?>

	<?php echo $this->_tpl_vars['html']->form->param('task','groups'); ?>


	<?php echo $this->_tpl_vars['html']->form->param('form[group_id]',$this->_tpl_vars['group']['id']); ?>


	<div class="col width-55">
		<fieldset>
			<legend>Group Settings</legend>

			<table class="admintable">
				<tbody>
					<?php echo $this->_reg_objects['adminform'][0]->text(array('var' => 'name','caption' => 'Group name','value' => $this->_tpl_vars['group']['name']), $this);?>

					<tr>
						<td class="key">Parent group</td>
						<td>
							<select name="form[parent_id]" size="5" style="width: 200px">
								<option value="0" <?php if ($this->_tpl_vars['group']['parent_id'] == 0): ?>selected="selected"<?php endif; ?>>Top</option>
								<?php $_from = $this->_tpl_vars['groups']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['list_group']):
?>
								<option value="<?php echo $this->_tpl_vars['list_group']['id']; ?>
" <?php if ($this->_tpl_vars['group']['parent_id'] == $this->_tpl_vars['list_group']['id']): ?>selected="selected"<?php endif; ?>><?php echo $this->_tpl_vars['html']->form->treename($this->_tpl_vars['list_group'],0); ?>
</option>
								<?php endforeach; endif; unset($_from); ?>
							</select>
						</td>
					</tr>
				</tbody>
			</table>
		</fieldset>
	</div>
	<div>
		<fieldset>
			<legend>Default permissions</legend>
			<table class="adminlist">
				<thead>
					<th width="20%">Role</th>
					<th>Access Levels</th>
				</thead>
				<tbody>
					<?php $_from = $this->_tpl_vars['permissions']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['role'] => $this->_tpl_vars['role_permissions']):
?>
					<tr>
						<td>
							<?php echo $this->_tpl_vars['roles'][$this->_tpl_vars['role']]; ?>

						</td>
						<td>
							<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'groups','action' => 'edit_permissions','type' => 'clean','group_id' => $this->_tpl_vars['group']['id'],'role_id' => $this->_tpl_vars['role']), $this);?>
"
								class="modal hasTip"
								title="Forum permissions for '<?php echo $this->_tpl_vars['group']['name']; ?>
'/<?php echo $this->_tpl_vars['role']; ?>
::<?php echo implode($this->_tpl_vars['role_permissions'], '<br/>'); ?>
"
								rel="<?php echo '{handler: \'iframe\', size: {x: 500, y: 400}}'; ?>
"
							>
							<?php if (empty ( $this->_tpl_vars['role_permissions'] )): ?>
								<i>No access</i>
							<?php else: ?>
								<?php echo ((is_array($_tmp=implode($this->_tpl_vars['role_permissions'], ', '))) ? $this->_run_mod_handler('truncate', true, $_tmp, 50) : smarty_modifier_truncate($_tmp, 50)); ?>

							<?php endif; ?>
							</a>
						</td>
					</tr>
					<?php endforeach; endif; unset($_from); ?>
				</tbody>
			</table>
		</fieldset>
	</div>
</form>