<?php /* Smarty version 2.6.20, created on 2010-03-24 16:43:41
         compiled from groups/list.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'count', 'groups/list.tpl', 17, false),array('function', 'url', 'groups/list.tpl', 30, false),)), $this); ?>
<?php echo $this->_tpl_vars['html']->toolbar->title('Groups'); ?>


<?php echo $this->_tpl_vars['html']->toolbar->deleteList(); ?>

<?php echo $this->_tpl_vars['html']->toolbar->editList(); ?>

<?php echo $this->_tpl_vars['html']->toolbar->addNewX('add'); ?>


<form name="adminForm" method="POST">
	<input type="hidden" name="checked" value="0"/>
	<input type="hidden" name="agora_task" value="groups"/>
	<input type="hidden" name="task" value=""/>
	<input type="hidden" name="option" value="com_agora"/>
	<input type="hidden" name="boxchecked" value="0"/>

	<table class="adminlist">
		<thead>
			<th width="20">
				<input type="checkbox" name="toggle" value="" onclick="checkAll(<?php echo count($this->_tpl_vars['groups']); ?>
);" />
			</th>
			<th width="20">ID</th>
			<th>Name</th>
		</thead>
		<tfoot>
			<tr><td colspan="3"><?php echo $this->_tpl_vars['pagination']->getListFooter(); ?>
</td></tr>
		</tfoot>
		<tbody>
			<?php $_from = $this->_tpl_vars['groups']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['num'] => $this->_tpl_vars['group']):
?>
			<tr>
				<td><?php echo $this->_tpl_vars['html']->jhtml('grid.id',$this->_tpl_vars['num'],$this->_tpl_vars['group']['id']); ?>
</td>
				<td><?php echo $this->_tpl_vars['group']['id']; ?>
</td>
				<td><a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'groups','action' => 'edit','group_id' => $this->_tpl_vars['group']['id']), $this);?>
"><?php echo $this->_tpl_vars['html']->form->treename($this->_tpl_vars['group']); ?>
</a></td>
			</tr>
			<?php endforeach; else: ?>
			<tr><td colspan="5">No Groups defined</td></tr>
			<?php endif; unset($_from); ?>
		</tbody>
	</table>
</form>