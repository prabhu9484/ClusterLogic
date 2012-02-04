<?php /* Smarty version 2.6.20, created on 2010-03-24 17:53:09
         compiled from options/integration.tpl */ ?>
<?php echo $this->_tpl_vars['html']->toolbar->title('Options - Integration'); ?>

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

		<?php echo $this->_tpl_vars['html']->form->param('page','integration'); ?>

		<fieldset>
			<legend>Integration</legend>
			<table class="admintable">
				<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'uddeim','var' => 'o_pms_uddeim','desc' => 'uddeim_1'), $this);?>

				<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'community_builder','var' => 'o_community_builder','desc' => 'community_builder_1'), $this);?>

				<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'JomSocial','var' => 'o_jomsocial','desc' => 'JomSocial_1'), $this);?>

				<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'Joomunity','var' => 'o_joomunity','desc' => 'Joomunity_1'), $this);?>

				<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'JSocialSuite','var' => 'o_joomsocialsuite','desc' => 'Joomsocialsuite_1'), $this);?>

			</table>
		</fieldset>
	</form>
</div>