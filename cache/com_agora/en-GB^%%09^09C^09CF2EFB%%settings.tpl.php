<?php /* Smarty version 2.6.20, created on 2010-03-24 17:51:45
         compiled from options/settings.tpl */ ?>
<?php echo $this->_tpl_vars['html']->toolbar->title('Options - Settings'); ?>

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

		<?php echo $this->_tpl_vars['html']->form->param('page','settings'); ?>

		<fieldset>
			<legend>Settings</legend>
			<table class="admintable">
				<tbody>
					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'Show Full Names','var' => 'o_fullnames_enabled','desc' => 'Show Full Names_2'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'RSS','var' => 'o_rss_enabled','desc' => 'RSS_2'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'jQuery','var' => 'o_include_jquery','desc' => 'jQuery_2'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'Subscrip','var' => 'o_subscriptions','desc' => 'Subscrip_2'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'AutoSubscrip','var' => 'o_auto_subscriptions','desc' => 'AutoSubscrip_2'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'guestCaptcha','var' => 'o_guest_post_captchabox','desc' => 'guestCaptcha_2'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'guestUserList','var' => 'o_guest_userlist','desc' => 'guestUserList_2'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'Censor','var' => 'o_censoring','desc' => 'Censor_2'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'User ranks','var' => 'o_ranks','desc' => 'User ranks_2'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'Search all','var' => 'o_search_all_forums','desc' => 'Search all_2'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->text(array('caption' => 'PollOpt','var' => 'poll_max_fields','desc' => 'NumFields_1','size' => 4), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'Enable PMS','var' => 'o_pms_enabled','desc' => 'Enable PMS description'), $this);?>

			    	<?php echo $this->_reg_objects['adminform'][0]->text(array('caption' => 'topics per page','var' => 'o_disp_topics_default','desc' => 'POSTS_DEFAULT_2','size' => 50,'maxlength' => 255), $this);?>

				    <?php echo $this->_reg_objects['adminform'][0]->text(array('caption' => 'posts per page','var' => 'o_disp_posts_default','desc' => 'POSTS_DEFAULT','size' => 50,'maxlength' => 255), $this);?>

				    <?php echo $this->_reg_objects['adminform'][0]->text(array('caption' => 'PMs per page','var' => 'o_pms_mess_per_page','desc' => 'PMs per page description','size' => 50,'maxlength' => 255), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'allow_attach','var' => 'o_allow_attach','desc' => 'allow_attach_2'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->text(array('caption' => 'Allowed files','var' => 'o_uploadile_laws','desc' => 'Allowed files_2','size' => 50), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'Make thumbs','var' => 'o_uploadile_thumb','desc' => 'Make thumbs_2'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->text(array('caption' => 'Thumb size','var' => 'o_uploadile_thumb_size','desc' => 'Thumb size_2','size' => 4), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->text(array('caption' => 'Member maximum file size','var' => 'o_uploadile_maxsize_member','desc' => 'Member maximum file size_2','size' => 15), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->text(array('caption' => 'Member limit','var' => 'o_uploadile_limit_member','desc' => 'Member limit_2','size' => 15), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->text(array('caption' => 'Moderator maximum file size','var' => 'o_uploadile_maxsize_modo','desc' => 'Moderator maximum file size_2','size' => 15), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->text(array('caption' => 'Moderator limit','var' => 'o_uploadile_limit_modo','desc' => 'Moderator limit_2','size' => 15), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'Cron type','var' => 'o_rss_cron_builtin','desc' => 'Use builtin cron'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->text(array('caption' => 'Cron interval','var' => 'o_rss_cron_interval','desc' => 'Builtin cron interval','size' => 7), $this);?>

				</tbody>
			</table>
		</fieldset>
	</form>
</div>