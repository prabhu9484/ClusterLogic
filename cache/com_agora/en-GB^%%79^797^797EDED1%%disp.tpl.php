<?php /* Smarty version 2.6.20, created on 2010-03-24 17:51:39
         compiled from options/disp.tpl */ ?>
<?php echo $this->_tpl_vars['html']->toolbar->title('Options - Display'); ?>

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

		<?php echo $this->_tpl_vars['html']->form->param('page','disp'); ?>

		<fieldset>
			<legend>Display</legend>
			<table class="admintable">
				<tbody>
					<?php echo $this->_reg_objects['adminform'][0]->text(array('caption' => 'BBCodeVideoWidth','var' => 'o_bbcode_video_width','desc' => 'BBCodeVideoWidth_2'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->text(array('caption' => 'BBCodeVideoHeight','var' => 'o_bbcode_video_height','desc' => 'BBCodeVideoHeight_2'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'user_data_right','var' => 'o_userdata','desc' => 'user_data_2'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'Legend','var' => 'o_legend_enabled','desc' => 'Legend_2'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->select(array('caption' => 'Default View','var' => 'o_default_view','keys' => $this->_tpl_vars['defaultview'],'selected' => $this->_tpl_vars['agora_config']['o_default_view'],'desc' => 'Default view2','maxlength' => 255), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'Version number','var' => 'o_show_version','desc' => 'Show version'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'Quick post','var' => 'o_quickpost','desc' => 'Quick post_2'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'BBCode Quick post','var' => 'o_bbcode_quickpost','desc' => 'BBCode Quick post_2'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'boardstats','var' => 'o_bstats','desc' => 'boardstats_2'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'user_guest','var' => 'o_user_guest','desc' => 'user_guest_2'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'Usersonline','var' => 'o_users_online','desc' => 'Usersonline_2'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'boardinfo','var' => 'o_binfo','desc' => 'boardinfo_2'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'User info','var' => 'o_show_user_info','desc' => 'Show information user'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'Quickjump','var' => 'o_quickjump','desc' => 'Quickjump_2'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'QuickjumpFooter','var' => 'o_quickjump_footer','desc' => 'QuickjumpFooter_2'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'User post','var' => 'o_show_post_count','desc' => 'posts a user'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'Smilies','var' => 'o_smilies','desc' => 'Convert smilies'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'Makelinks','var' => 'o_make_links','desc' => 'Makelinks_2'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'Linkswindow','var' => 'o_new_window_link','desc' => 'Linkswindow_2'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'Most Active Control','var' => 'o_top_ten','desc' => 'topten'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->text(array('caption' => 'Most Active','var' => 'o_top_post_count','desc' => 'Most Active Desc','size' => 3,'maxlength' => 3), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'Social Bookmarks','var' => 'o_social_bookmarks','desc' => 'social bookmarks_2'), $this);?>

				</tbody>
			</table>
		</fieldset>
	</form>
</div>