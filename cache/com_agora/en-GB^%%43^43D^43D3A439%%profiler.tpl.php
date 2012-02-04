<?php /* Smarty version 2.6.20, created on 2010-03-24 17:53:01
         compiled from options/profiler.tpl */ ?>
<?php echo $this->_tpl_vars['html']->toolbar->title('Options - Profile'); ?>

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

	<?php echo $this->_tpl_vars['html']->form->param('page','profiler'); ?>

	<fieldset>
	  <legend>Profile</legend>
	    <table class="admintable">
		  <tbody>
		    <?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'title','var' => 'o_prof_title','desc' => 'prof_title_2'), $this);?>

			<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'location','var' => 'o_prof_location','desc' => 'prof_location_2'), $this);?>

			<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'website','var' => 'o_prof_website','desc' => 'prof_website_2'), $this);?>

			<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'gender','var' => 'o_prof_gender','desc' => 'prof_gender_2'), $this);?>

			<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'birthday','var' => 'o_prof_dob','desc' => 'prof_dob_2'), $this);?>

			<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'interests','var' => 'o_prof_interests','desc' => 'prof_interests_2'), $this);?>

			<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'aboutme','var' => 'o_prof_about','desc' => 'about_2'), $this);?>

			<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'sig_smilies','var' => 'o_smilies_sig','desc' => 'Convert smilies small'), $this);?>

			<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'messaging','var' => 'o_prof_messaging','desc' => 'prof_messaging_2'), $this);?>

			<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'gallery','var' => 'o_prof_gallery','desc' => 'prof_gallery_2'), $this);?>

			<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'Attachments','var' => 'o_prof_attach','desc' => 'prof_attach_2'), $this);?>

			<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'signature','var' => 'o_prof_sig','desc' => 'sig_2'), $this);?>

			<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'sig_bbcode','var' => 'p_sig_bbcode','desc' => 'sig_bbcode_2'), $this);?>

			<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'sig_img','var' => 'p_sig_img_tag','desc' => 'sig_img_2'), $this);?>

			<?php echo $this->_reg_objects['adminform'][0]->text(array('caption' => 'sig_legnth','var' => 'p_sig_length','desc' => 'sig_legnth_2','size' => 25,'maxlength' => 25), $this);?>

			<?php echo $this->_reg_objects['adminform'][0]->text(array('caption' => 'sig_lines','var' => 'p_sig_lines','desc' => 'sig_lines_2','size' => 25,'maxlength' => 25), $this);?>

			<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'sig_caps','var' => 'p_sig_all_caps','desc' => 'sig_caps_2'), $this);?>

		  </tbody>
		</table>
	</fieldset>
  </form>
</div>