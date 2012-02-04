<?php /* Smarty version 2.6.20, created on 2010-03-24 17:02:35
         compiled from forums/category.tpl */ ?>
<?php echo $this->_tpl_vars['html']->toolbar->title('Forums'); ?>

<?php echo $this->_tpl_vars['html']->toolbar->save('save_category'); ?>

<?php echo $this->_tpl_vars['html']->toolbar->cancel(); ?>


<form name="adminForm" method="POST">
	<?php echo $this->_tpl_vars['html']->form->param('option','com_agora'); ?>

	<?php echo $this->_tpl_vars['html']->form->param('agora_task','forums'); ?>

	<?php echo $this->_tpl_vars['html']->form->param('task','forums'); ?>


	<?php if (isset ( $this->_tpl_vars['category']['id'] ) && $this->_tpl_vars['category']['id'] > 0): ?>
		<?php echo $this->_tpl_vars['html']->form->param('form[category_id]',$this->_tpl_vars['category']['id']); ?>

	<?php endif; ?>

	<fieldset>
		<legend>Add/Edit Categories</legend>

		<table class="admintable">
			<tbody>
				<tr>
					<?php echo $this->_reg_objects['adminform'][0]->text(array('var' => 'cat_name','caption' => 'Category name','value' => $this->_tpl_vars['category']['cat_name']), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->select(array('style' => 'width: 200px;','size' => 10,'var' => 'disp_position','caption' => 'Order','desc' => 'Order_2','keys' => $this->_tpl_vars['ordering']), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->select(array('style' => 'width: 200px;','var' => 'icon_style_id','caption' => 'Style','desc' => 'Style_2','keys' => $this->_tpl_vars['styling'],'selected' => $this->_tpl_vars['category']['icon_style_id']), $this);?>

				</tr>
			</tbody>
		</table>
	</fieldset>
</form>