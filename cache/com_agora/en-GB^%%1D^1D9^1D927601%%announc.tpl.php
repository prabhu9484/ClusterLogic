<?php /* Smarty version 2.6.20, created on 2010-03-24 17:51:58
         compiled from options/announc.tpl */ ?>
<?php echo $this->_tpl_vars['html']->toolbar->title('Options - Announcement'); ?>

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

		<?php echo $this->_tpl_vars['html']->form->param('page','announc'); ?>

		<fieldset>
			<legend>Announcement</legend>
			<table class="admintable">
				<tbody>
					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'Display_announc','var' => 'o_announcement','desc' => 'Display_announc_2'), $this);?>

					<tr>
						<?php echo $this->_reg_objects['adminform'][0]->editor(array('var' => 'o_announcement_message','caption' => 'Announc_mes','desc' => 'Announc_mes_2'), $this);?>

					</tr>

				</tbody>
			</table>
		</fieldset>
	</form>
</div>