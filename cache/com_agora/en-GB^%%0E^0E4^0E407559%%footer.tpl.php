<?php /* Smarty version 2.6.20, created on 2010-03-24 16:41:07
         compiled from footer.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'url', 'footer.tpl', 63, false),array('function', 'loadModule', 'footer.tpl', 174, false),array('modifier', 'count', 'footer.tpl', 83, false),)), $this); ?>
<!-- ========== BEGIN BOARD STATS ========== -->
<div class="ag_forum_separator"></div>

<?php if ($this->_tpl_vars['agora_config']['o_binfo'] == '1'): ?>
<div class="ag_rightend">
	<h2 class="ag_headerbar"><span class="ag_middle">Board Info</span></h2>
</div>

<div id="ag_boardstats">
	<div class="ag_outerwrap">
		<div class="ag_boardstats_column">
			<div class="ag_boardstats_container">
				<div class="ag_boardstats_wrap">
					<div class="ag_boardstats_col1">
						<!--  col1 -->
						<?php if ($this->_tpl_vars['agora_config']['o_bstats'] == '1'): ?>
						<div id="ag_brdinfo">
							<div class="ag_brdinfo_boardstats">
								<dl>
									<dt><strong>Board Stats:</strong></dt>
										<dd>&nbsp;</dd>
									<dt>Total Topics:</dt>
										<dd><?php echo $this->_tpl_vars['stats']['total_topics']; ?>
</dd>
									<dt>Total Polls:</dt>
										<dd><?php echo $this->_tpl_vars['stats']['total_polls']; ?>
</dd>
									<dt>Total Posts:</dt>
										<dd><?php echo $this->_tpl_vars['stats']['total_posts']; ?>
</dd>
									<dt><?php if ($this->_tpl_vars['stats']['posts_hour'] < 1): ?>
										<?php if ($this->_tpl_vars['stats']['posts_day'] < 1): ?>
										<?php if ($this->_tpl_vars['stats']['posts_week'] < 1): ?>
										Dormant:
										<?php else: ?>
										Posts this week:
										<?php endif; ?>
										<?php else: ?>
										Total Posts Today:
										<?php endif; ?>
										<?php else: ?>
										Average Posts Per Hour:
										<?php endif; ?></dt>
										<dd><?php if ($this->_tpl_vars['stats']['posts_hour'] < 1): ?>
											<?php if ($this->_tpl_vars['stats']['posts_day'] < 1): ?>
											<?php if ($this->_tpl_vars['stats']['posts_week'] < 1): ?>
											<?php else: ?>
												<?php echo $this->_tpl_vars['stats']['posts_week']; ?>

											<?php endif; ?>
											<?php else: ?>
												<?php echo $this->_tpl_vars['stats']['posts_day']; ?>

											<?php endif; ?>
											<?php else: ?>
												<?php echo $this->_tpl_vars['stats']['posts_hour']; ?>

											<?php endif; ?>
										</dd>
								</dl>
							</div>
							<div class="ag_brdinfo_users">
								<dl>
									<dt><strong>User Info:</strong></dt>
										<dd>&nbsp;</dd>
									<dt>Total Users:</dt>
										<dd><?php echo $this->_tpl_vars['stats']['total_users']; ?>
</dd>
									<dt>Newest User:</dt>
										<dd><a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'profile','user_id' => $this->_tpl_vars['stats']['last_user_id']), $this);?>
" title="<?php if ($this->_tpl_vars['agora_config']['o_fullnames_enabled']): ?><?php echo $this->_tpl_vars['stats']['last_user_fullname']; ?>
<?php else: ?><?php echo $this->_tpl_vars['stats']['last_user_name']; ?>
<?php endif; ?>"><?php if ($this->_tpl_vars['agora_config']['o_fullnames_enabled']): ?><?php echo $this->_tpl_vars['stats']['last_user_fullname']; ?>
<?php else: ?><?php echo $this->_tpl_vars['stats']['last_user_name']; ?>
<?php endif; ?></a></dd>
									<?php if ($this->_tpl_vars['agora_config']['o_user_guest'] == 1): ?>
									<dt>Members Online:</dt>
										<dd><?php echo $this->_tpl_vars['online_users']['user_count']; ?>
</dd>
									<dt>Guests Online:</dt>
										<dd><?php echo $this->_tpl_vars['online_users']['guest_count']; ?>
</dd>
									<?php endif; ?>
								</dl>
							</div>
						</div>
						<div class="ag_clearer"></div><br />
						<?php endif; ?>

						<?php if ($this->_tpl_vars['agora_config']['o_top_ten']): ?>
						<div id="ag_most_active">
							<dl>
								<dt><strong>Most Active Users:&nbsp;</strong></dt>
								<dd>
									<?php ob_start(); ?>1<?php $this->_smarty_vars['capture']['default'] = ob_get_contents();  $this->assign('count', ob_get_contents());ob_end_clean(); ?>
									<?php $_from = $this->_tpl_vars['top_users']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['user']):
?>
									<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'profile','user_id' => $this->_tpl_vars['user']['id']), $this);?>
" title="<?php if ($this->_tpl_vars['agora_config']['o_fullnames_enabled']): ?><?php echo $this->_tpl_vars['user']['name']; ?>
<?php else: ?><?php echo $this->_tpl_vars['user']['username']; ?>
<?php endif; ?>"><?php if ($this->_tpl_vars['agora_config']['o_fullnames_enabled']): ?><?php echo $this->_tpl_vars['user']['name']; ?>
<?php else: ?><?php echo $this->_tpl_vars['user']['username']; ?>
<?php endif; ?><?php if ($this->_tpl_vars['count']++ != count($this->_tpl_vars['top_users'])): ?>, <?php endif; ?></a>
									<?php endforeach; endif; unset($_from); ?>
								</dd>
							</dl>
						</div>
						<div class="ag_clearer"></div>
						<?php endif; ?>

						<?php if ($this->_tpl_vars['agora_config']['o_users_online'] == '1'): ?>
						<div id="ag_online">
							<dl>
								<dt><strong>Online:&nbsp;</strong></dt>
								<dd>
									<?php if ($this->_tpl_vars['online_users']['user_count'] < 1): ?>
										There are no members online
									<?php else: ?>
										<?php ob_start(); ?>1<?php $this->_smarty_vars['capture']['default'] = ob_get_contents();  $this->assign('count', ob_get_contents());ob_end_clean(); ?>
										<?php $_from = $this->_tpl_vars['online_users']['users']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['user']):
?>
										<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'profile','user_id' => $this->_tpl_vars['user']['id']), $this);?>
" title="<?php if ($this->_tpl_vars['agora_config']['o_fullnames_enabled']): ?><?php echo $this->_tpl_vars['user']['fullname']; ?>
<?php else: ?><?php echo $this->_tpl_vars['user']['name']; ?>
<?php endif; ?>"><?php if ($this->_tpl_vars['agora_config']['o_fullnames_enabled']): ?><?php echo $this->_tpl_vars['user']['fullname']; ?>
<?php else: ?><?php echo $this->_tpl_vars['user']['name']; ?>
<?php endif; ?><?php if ($this->_tpl_vars['count']++ != $this->_tpl_vars['online_users']['user_count']): ?>, <?php endif; ?></a>
										<?php endforeach; endif; unset($_from); ?>
									<?php endif; ?>
								</dd>
							</dl>
						</div>
						<div class="ag_clearer"></div>
						<?php endif; ?>
						<!--  /col1 -->
					</div>
				</div>
				<div class="ag_boardstats_col2">
					<!--  col2 -->
					<?php if ($this->_tpl_vars['agora_config']['o_quickjump_footer'] == '1'): ?>
					<div class="ag_qjump_footer">
						<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "tools/qjump_footer.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
					</div>
					<div class="ag_clearer"></div><br />
					<?php endif; ?>

					<?php if ($this->_tpl_vars['agora_config']['o_legend_enabled']): ?>
					<div class="ag_iconSetWrap">
						<p><strong>Forum Legend:</strong></p>
						<div class="ag_clearer"></div>
						<div class="ag_iconset">
							<dl>
								<dd><img src="<?php echo $this->_tpl_vars['root_url']; ?>
style/<?php echo $this->_tpl_vars['agora_config']['o_default_style']; ?>
/img/small/icon.png" alt="" title="Topic" />&nbsp;Topic
								</dd>
								<dd><img src="<?php echo $this->_tpl_vars['root_url']; ?>
style/<?php echo $this->_tpl_vars['agora_config']['o_default_style']; ?>
/img/small/icon_new.png" alt="" title="New" />&nbsp;New
								</dd>
								<dd><img src="<?php echo $this->_tpl_vars['root_url']; ?>
style/<?php echo $this->_tpl_vars['agora_config']['o_default_style']; ?>
/img/small/icon_locked.png" alt="" title="Locked" />&nbsp;Locked
								</dd>
							</dl>
							<div class="ag_clearer"></div>
						</div>
						<div class="ag_iconset">
							<dl>
								<dd><img src="<?php echo $this->_tpl_vars['root_url']; ?>
style/<?php echo $this->_tpl_vars['agora_config']['o_default_style']; ?>
/img/small/icon_sticky.png" alt="" title="Sticky" />&nbsp;Sticky</dd>
								<dd><img src="<?php echo $this->_tpl_vars['root_url']; ?>
style/<?php echo $this->_tpl_vars['agora_config']['o_default_style']; ?>
/img/small/icon_hot.png" alt="" title="Active" />&nbsp;Active</dd>
								<dd><img src="<?php echo $this->_tpl_vars['root_url']; ?>
style/<?php echo $this->_tpl_vars['agora_config']['o_default_style']; ?>
/img/small/icon_newhot.png" alt="" title="New/Active" />&nbsp;New/Active</dd>
							</dl>
							<div class="ag_clearer"></div>
						</div>
						<div class="ag_iconset">
							<dl>
								<dd><img src="<?php echo $this->_tpl_vars['root_url']; ?>
style/<?php echo $this->_tpl_vars['agora_config']['o_default_style']; ?>
/img/small/icon_newlocked.png" alt="" title="New/Locked" />&nbsp;New/Locked</dd>
								<dd><img src="<?php echo $this->_tpl_vars['root_url']; ?>
style/<?php echo $this->_tpl_vars['agora_config']['o_default_style']; ?>
/img/small/icon_newsticky.png" alt="" title="New Sticky" />&nbsp;New Sticky</dd>
								<dd><img src="<?php echo $this->_tpl_vars['root_url']; ?>
style/<?php echo $this->_tpl_vars['agora_config']['o_default_style']; ?>
/img/small/icon_lockedhot.png" alt="" title="Locked/Active" />&nbsp;Locked/Active</dd>
							</dl>
							<div class="ag_clearer"></div>
						</div>
						<div class="ag_iconset">
							<dl>
								<dd><img src="<?php echo $this->_tpl_vars['root_url']; ?>
style/<?php echo $this->_tpl_vars['agora_config']['o_default_style']; ?>
/img/small/icon_stickyhot.png" alt="" title="Active/Sticky" />&nbsp;Active/Sticky</dd>
								<dd><img src="<?php echo $this->_tpl_vars['root_url']; ?>
style/<?php echo $this->_tpl_vars['agora_config']['o_default_style']; ?>
/img/small/icon_stickylocked.png" alt="" title="Sticky/Locked" />&nbsp;Sticky/Locked</dd>
								<dd><img src="<?php echo $this->_tpl_vars['root_url']; ?>
style/<?php echo $this->_tpl_vars['agora_config']['o_default_style']; ?>
/img/small/icon_stickylockedhot.png" alt="" title="Sticky/Active/Locked" />&nbsp;Sticky/Active/Locked</dd>
							</dl>
							<div class="ag_clearer"></div>
						</div>
					</div>
					<div class="ag_clearer"></div>
					<?php endif; ?>
					<!--  /col2 -->
				</div>
			</div>
		</div>
	</div>
</div>

<div class="ag_forum_separator"></div>
<?php endif; ?>

<div class="ag_adsenseFooter">
	<?php echo $this->_plugins['function']['loadModule'][0][0]->loadModule(array('name' => 'agora_4'), $this);?>

</div>
<!-- ========== END BOARD STATS ========== -->
<!-- ========== BEGIN BOARD COPYRIGHT ========== -->
<div id="ag_footer">
	<p>Powered by
		<a href="http://www.jvitals.com" target="_blank" class="ag_good_link" rel="nofollow">Agora</a><?php if ($this->_tpl_vars['agora_config']['o_show_version'] == '1'): ?> <?php echo $this->_tpl_vars['current_version']; ?>

		<br /><?php endif; ?> &copy; Copyright 2007 - 2009 jVitals! All rights reserved.</p>
	</div>
	<div class="ag_clearer"></div>
</div>
<!-- ========== END BOARD COPYRIGHTS ========== -->
<!-- ========== END AGORA MAIN WRAPPERS ========== -->
</div>