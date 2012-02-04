<?php /* Smarty version 2.6.20, created on 2010-03-24 16:56:17
         compiled from forums/list.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'url', 'forums/list.tpl', 39, false),array('modifier', 'truncate', 'forums/list.tpl', 74, false),array('modifier', 'escape', 'forums/list.tpl', 74, false),)), $this); ?>
<?php echo $this->_tpl_vars['html']->toolbar->title('Forums'); ?>

<?php echo $this->_tpl_vars['html']->toolbar->deleteList(); ?>

<?php echo $this->_tpl_vars['html']->toolbar->editList(); ?>

<?php if (( count ( $this->_tpl_vars['forums'] ) > 0 )): ?>
	<?php echo $this->_tpl_vars['html']->toolbar->addNewX('add_forum','ADD FORUM'); ?>

<?php endif; ?>

<?php echo $this->_tpl_vars['html']->toolbar->addNewX('add_category','ADD CATEGORY'); ?>



<form name="adminForm" method="POST">
	<input type="hidden" name="agora_task" value="forums"/>
	<input type="hidden" name="task" value=""/>
	<input type="hidden" name="option" value="com_agora"/>
	<input type="hidden" name="checked" value="0"/>
	<input type="hidden" name="boxchecked" value="0"/>
	
	<table class="adminlist">
		<thead>
			<th width="20">
				<input type="checkbox" name="toggle" value="" onclick="checkAll(<?php echo $this->_tpl_vars['forum_category_count']; ?>
);" />
			</th>
			<th width="20">ID</th>
			<th width="30%">Name</th>
			<th width="30%">Description</th>
			<th>Enabled</th>
			<th width="100px" nowrap="nowrap"><?php echo $this->_tpl_vars['html']->jhtml('grid.order',null); ?>
Order</th>
		</thead>
		<tfoot>
			<tr><td colspan="5"><?php echo $this->_tpl_vars['pagination']->getListFooter(); ?>
</td></tr>
		</tfoot>
		<tbody>
			<?php $_from = $this->_tpl_vars['forums']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['category'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['category']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['category']):
        $this->_foreach['category']['iteration']++;
?>
						<?php if ($this->_tpl_vars['category']['cat_id'] != 0): ?>
			<tr class="row1">
				<td><?php echo $this->_tpl_vars['html']->jhtml('grid.id',$this->_tpl_vars['category']['list_number'],$this->_tpl_vars['category']['list_id']); ?>
</td>
				<td><strong><?php echo $this->_tpl_vars['category']['cat_id']; ?>
</strong></td>
				<td><strong><a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'forums','action' => 'edit_category','category_id' => $this->_tpl_vars['category']['cat_id']), $this);?>
"><?php echo $this->_tpl_vars['category']['cat_name']; ?>
</a></strong></td>
				<td>&nbsp;</td>
				<td><?php echo $this->_tpl_vars['html']->form->toggle($this->_tpl_vars['category']['list_number'],$this->_tpl_vars['category']['enable'],'Enable','Disable','cat_enable','cat_disable'); ?>
</td>
				<td class="order">
					<span>
					<?php if (! ($this->_foreach['category']['iteration'] <= 1)): ?>
						<?php echo $this->_tpl_vars['pagination']->orderUpIcon($this->_tpl_vars['category']['list_number']); ?>

					<?php else: ?>
						&nbsp;
					<?php endif; ?>
					</span>

					<span>
					<?php if (! ($this->_foreach['category']['iteration'] == $this->_foreach['category']['total'])): ?>
						<?php echo $this->_tpl_vars['pagination']->orderDownIcon($this->_tpl_vars['category']['list_number'],10000); ?>

					<?php else: ?>
						&nbsp;
					<?php endif; ?>
					</span>
					<input type="text" name="order[category][<?php echo $this->_tpl_vars['category']['cat_id']; ?>
]" size="3" value="<?php echo $this->_tpl_vars['category']['disp_position']; ?>
" class="text_area" style="text-align: center" />
				</td>
			</tr>
			<?php endif; ?>
				<?php $_from = $this->_tpl_vars['category']['forums']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['forum'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['forum']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['forum_num'] => $this->_tpl_vars['forum']):
        $this->_foreach['forum']['iteration']++;
?>
				<tr class="row0">
					<td><?php echo $this->_tpl_vars['html']->jhtml('grid.id',$this->_tpl_vars['forum']['list_number'],$this->_tpl_vars['forum']['list_id']); ?>
</td>
					<td><?php echo $this->_tpl_vars['forum']['id']; ?>
</td>
					<td><a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'forums','action' => 'edit_forum','forum_id' => $this->_tpl_vars['forum']['id']), $this);?>
">
							<?php unset($this->_sections['forum_level']);
$this->_sections['forum_level']['name'] = 'forum_level';
$this->_sections['forum_level']['loop'] = is_array($_loop=$this->_tpl_vars['forum']['level']+1) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['forum_level']['show'] = true;
$this->_sections['forum_level']['max'] = $this->_sections['forum_level']['loop'];
$this->_sections['forum_level']['step'] = 1;
$this->_sections['forum_level']['start'] = $this->_sections['forum_level']['step'] > 0 ? 0 : $this->_sections['forum_level']['loop']-1;
if ($this->_sections['forum_level']['show']) {
    $this->_sections['forum_level']['total'] = $this->_sections['forum_level']['loop'];
    if ($this->_sections['forum_level']['total'] == 0)
        $this->_sections['forum_level']['show'] = false;
} else
    $this->_sections['forum_level']['total'] = 0;
if ($this->_sections['forum_level']['show']):

            for ($this->_sections['forum_level']['index'] = $this->_sections['forum_level']['start'], $this->_sections['forum_level']['iteration'] = 1;
                 $this->_sections['forum_level']['iteration'] <= $this->_sections['forum_level']['total'];
                 $this->_sections['forum_level']['index'] += $this->_sections['forum_level']['step'], $this->_sections['forum_level']['iteration']++):
$this->_sections['forum_level']['rownum'] = $this->_sections['forum_level']['iteration'];
$this->_sections['forum_level']['index_prev'] = $this->_sections['forum_level']['index'] - $this->_sections['forum_level']['step'];
$this->_sections['forum_level']['index_next'] = $this->_sections['forum_level']['index'] + $this->_sections['forum_level']['step'];
$this->_sections['forum_level']['first']      = ($this->_sections['forum_level']['iteration'] == 1);
$this->_sections['forum_level']['last']       = ($this->_sections['forum_level']['iteration'] == $this->_sections['forum_level']['total']);
?>
							.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<?php endfor; endif; ?>
							<sup>|_</sup>&nbsp;
							<?php echo $this->_tpl_vars['forum']['forum_name']; ?>

						</a>
					</td>
					<td><?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['forum']['forum_desc'])) ? $this->_run_mod_handler('truncate', true, $_tmp, 50) : smarty_modifier_truncate($_tmp, 50)))) ? $this->_run_mod_handler('escape', true, $_tmp) : AString::escape($_tmp)); ?>
</td>
					<td><?php echo $this->_tpl_vars['html']->form->toggle($this->_tpl_vars['forum']['list_number'],$this->_tpl_vars['forum']['enable'],'Enable','Disable','forum_enable','forum_disable'); ?>
</td>
					<td class="order">
						<span><?php echo $this->_tpl_vars['pagination']->orderUpIcon($this->_tpl_vars['forum']['list_number'],$this->_tpl_vars['forum']['not_first'],'orderup','Move Up'); ?>
</span>
						<span><?php echo $this->_tpl_vars['pagination']->orderDownIcon($this->_tpl_vars['forum']['list_number'],10000,$this->_tpl_vars['forum']['not_last'],'orderdown','Move Down'); ?>
</span>
						<input type="text" name="order[forum][<?php echo $this->_tpl_vars['forum']['id']; ?>
]" size="3" value="<?php echo $this->_tpl_vars['forum']['disp_position']; ?>
" class="text_area" style="text-align: center" />
					</td>
				</tr>
				<?php endforeach; endif; unset($_from); ?>
			<?php endforeach; else: ?>
			<tr><td colspan="6">You have no forums nor categories</td></tr>
			<?php endif; unset($_from); ?>
		</tbody>
	</table>
</form>
  