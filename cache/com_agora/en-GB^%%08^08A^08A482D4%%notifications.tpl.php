<?php /* Smarty version 2.6.20, created on 2010-03-24 17:53:15
         compiled from options/notifications.tpl */ ?>
<?php echo $this->_tpl_vars['html']->toolbar->title('Options - Notifications'); ?>

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

		<?php echo $this->_tpl_vars['html']->form->param('page','notifications'); ?>

		<fieldset id="ag_fieldset" >
			<legend>Email Notifications</legend>
			<table class="admintable" style="margin-left:8px;">
				<tbody>
					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'New type of notify','var' => 'o_subscrb_emails_type','desc' => 'New type of notify_2'), $this);?>
			
					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'AutoSubscribe all admins to all forums','var' => 'o_subscrb_auto_alladmins','desc' => 'AutoSubscribe all admins to all forums_2'), $this);?>

					<?php echo $this->_reg_objects['adminform'][0]->radio(array('caption' => 'AutoSubscribe moderators to moderated forums','var' => 'o_subscrb_auto_moderators','desc' => 'AutoSubscribe moderators to moderated forums_2'), $this);?>

				</tbody>
			</table>
			<table class="admintable">
				<tbody>
					<tr>
					<td>
					<?php echo $this->_reg_objects['adminform'][0]->etext(array('var' => 'o_pm_subject','caption' => 'PMSubject','desc' => 'PMSubject_2','size' => 120,'maxlength' => 255), $this);?>

					</td>
					<td width="25%">&nbsp;</td>
					</tr>
					<tr>
						<td>
					<?php echo $this->_reg_objects['adminform'][0]->editor(array('var' => 'o_pm_messg','caption' => 'PMMessage','desc' => 'PMMessage_2'), $this);?>

						</td>
						<td align="left" valign="top" bgcolor="#f6f6f6" style="border-left:1px #e9e9e9 solid;border-bottom:1px #e9e9e9 solid;">
							<p>Tag: [agora] (Agora Forum tag...)</p>
							<p>Tag: [agoraprofile] (Profile tag...)</p>
							<p>Tag: [site] (Site URL tag...)</p>
							<p>Tag: [sitename] (Site name tag...)</p>
							<p>Tag: [title] (Title tag...)</p>
							<p>Tag: [fullname] (Full name tag...)</p>
							<p>Tag: [username] (Username tag...)</p>
							<p>Tag: [useremail] (User email tag...)</p>
							<p>Tag: [message] (Message tag..)</p>

					  </td>
					</tr>
				</tbody>
		</table>
		<p>&nbsp;</p>
			<table class="admintable">
				<tbody>
					<tr>
						<td>
					<?php echo $this->_reg_objects['adminform'][0]->etext(array('var' => 'o_subscr_subject','caption' => 'SubsctSubject','desc' => 'SubsctSubject_2','size' => 120,'maxlength' => 255), $this);?>

						</td>
						<td width="25%">&nbsp;</td>
					</tr>
					<tr>
						<td>
					<?php echo $this->_reg_objects['adminform'][0]->editor(array('var' => 'o_subscr_messg','caption' => 'SubsctMessage','desc' => 'SubsctMessage_2'), $this);?>

						</td>
						<td align="left" valign="top" bgcolor="#f6f6f6" style="border-left:1px #e9e9e9 solid;border-bottom:1px #e9e9e9 solid;">
							<p>Tag: [unsubscribe] (Unsubscribe tag...)</p>
							<p>Tag: [agora] (Agora Forum tag...)</p>
							<p>Tag: [agoraprofile] (Profile tag...)</p>
							<p>Tag: [site] (Site URL tag...)</p>
							<p>Tag: [sitename] (Site name tag...)</p>
							<p>Tag: [title] (Title tag...)</p>
							<p>Tag: [username] (Username tag...)</p>
							<p>Tag: [useremail] (User email tag...)</p>
							<p>Tag: [message] (Message tag..)</p>
							<p>Tag: [forum] (Forum tag...)</p>
							<p>Tag: [topic] (Topic tag...)</p>
							<p>Tag: [post] (post)</p>
							<p>Tag: [poster] (Poster tag...)</p>
					  </td>
					</tr>
				</tbody>
		</table>
	  </fieldset>
	</form>
</div>