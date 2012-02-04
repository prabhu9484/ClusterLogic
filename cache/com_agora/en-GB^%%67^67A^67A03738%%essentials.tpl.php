<?php /* Smarty version 2.6.20, created on 2010-03-24 16:55:51
         compiled from options/essentials.tpl */ ?>
<?php echo $this->_tpl_vars['html']->toolbar->title('Options - Essentials'); ?>

<?php echo $this->_tpl_vars['html']->toolbar->save(); ?>

<?php echo $this->_tpl_vars['html']->toolbar->cancel(); ?>


<div style="float:left; width: 10%;">
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'options/links.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
</div>

<div>
	<form name="adminForm" method="POST">
		<?php echo $this->_tpl_vars['html']->form->param('option','com_agora'); ?>

		<?php echo $this->_tpl_vars['html']->form->param('agora_task','options'); ?>

		<?php echo $this->_tpl_vars['html']->form->param('task','options'); ?>

		<?php echo $this->_tpl_vars['html']->form->param('page','essentials'); ?>

		<fieldset>
			<legend>Essentials</legend>
			<table class="admintable">
				<tbody>
											
					<?php echo $this->_reg_objects['adminform'][0]->text(array('var' => 'o_board_title','caption' => 'Board title','desc' => 'bulletin board','size' => 50,'maxlength' => 255), $this);?>

					
					
					<?php echo $this->_reg_objects['adminform'][0]->select(array('var' => 'o_default_style','values' => $this->_tpl_vars['styles'],'selected' => $this->_tpl_vars['agora_config']['o_default_style'],'caption' => 'Default style','desc' => 'Default style2','maxlength' => 255), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'main_menu','var' => 'o_main_menu','desc' => 'main_menu_2'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->text(array('var' => 'o_time_format','caption' => 'Time format','desc' => 'time formatting','size' => 25,'maxlength' => 25), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->text(array('var' => 'o_date_format','caption' => 'Date format','desc' => 'date formatting','size' => 25,'maxlength' => 25), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->text(array('var' => 'o_timeout_visit','caption' => 'Visit timeout','desc' => 'Visit timeout_2','size' => 5,'maxlength' => 5), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->text(array('var' => 'o_merge_timeout','caption' => 'Merge time','desc' => 'Timeofmerge','size' => 5,'maxlength' => 5), $this);?>

				</tbody>
			</table>
		</fieldset>
	</form>
</div>