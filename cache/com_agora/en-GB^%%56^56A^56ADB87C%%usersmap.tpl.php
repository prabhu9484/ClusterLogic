<?php /* Smarty version 2.6.20, created on 2010-03-24 17:09:57
         compiled from options/usersmap.tpl */ ?>
<?php echo $this->_tpl_vars['html']->toolbar->title('Options - User Map'); ?>

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

		<?php echo $this->_tpl_vars['html']->form->param('page','usersmap'); ?>

		<fieldset>
			<legend>User Map</legend>
			<table class="admintable">
				<tbody>
					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'User map','var' => 'o_usermap','desc' => 'UserMap_2'), $this);?>

                    <?php echo $this->_reg_objects['adminform'][0]->text(array('var' => 'o_um_key','caption' => 'API key','desc' => 'API key_1','size' => 50), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->text(array('var' => 'o_um_default_zoom','caption' => 'zoom level','desc' => 'zoom level_1','size' => 2), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->text(array('var' => 'o_um_default_lat','caption' => 'Default latitude','desc' => 'center latitude','size' => 25), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->text(array('var' => 'o_um_default_lng','caption' => 'Default longitude','desc' => 'center longitude','size' => 25), $this);?>

				</tbody>
			</table>
		</fieldset>
	</form>
</div>