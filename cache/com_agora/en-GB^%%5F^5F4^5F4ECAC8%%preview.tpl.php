<?php /* Smarty version 2.6.20, created on 2010-03-24 18:02:38
         compiled from profile/preview.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'script', 'profile/preview.tpl', 27, false),array('function', 'url', 'profile/preview.tpl', 49, false),array('modifier', 'escape', 'profile/preview.tpl', 86, false),array('modifier', 'agora_date', 'profile/preview.tpl', 154, false),)), $this); ?>
<?php $this->_cache_serials['/var/www/joomla2/cache/com_agora/en-GB^%%5F^5F4^5F4ECAC8%%preview.tpl.inc'] = 'dc1024dce12227747584a779542860ac'; ?><div class="ag_postwrap">
	<div class="ag_rightend">
		<h2 class="ag_headerbar"><span class="ag_middle">Preview</span></h2>
	</div>

	<div class="ag_outerwrap">
		<fieldset>
			<legend class="ag_color">Personal</legend>
			<div class="ag_infldsetprofile">
				<dl>
					<dt>Username:</dt>
					<dd><?php if ($this->_tpl_vars['agora_config']['o_fullnames_enabled']): ?><?php echo $this->_tpl_vars['user']['name']; ?>
<?php else: ?><?php echo $this->_tpl_vars['user']['username']; ?>
<?php endif; ?></dd>

					<?php if ($this->_tpl_vars['agora_config']['o_prof_title'] == '1'): ?>
					<dt>Title:</dt>
					<dd><?php if (empty ( $this->_tpl_vars['user']['title'] )): ?>&nbsp;<?php else: ?><?php echo $this->_tpl_vars['user']['title']; ?>
<?php endif; ?></dd>
					<?php endif; ?>

					<?php if ($this->_tpl_vars['agora_config']['o_prof_location'] == '1'): ?>
					<dt>Location:</dt>
					<dd><?php if (empty ( $this->_tpl_vars['user']['location'] )): ?>Unknown<?php else: ?><?php echo $this->_tpl_vars['user']['location']; ?>
<?php endif; ?></dd>
					<?php endif; ?>

					<?php if ($this->_tpl_vars['agora_config']['o_usermap']): ?>
					<?php if (! empty ( $this->_tpl_vars['user']['latitude'] ) && ! empty ( $this->_tpl_vars['user']['longitude'] )): ?>
					<dt class="map">
						<?php if ($this->caching && !$this->_cache_including): echo '{nocache:dc1024dce12227747584a779542860ac#0}'; endif;echo $this->_plugins['function']['script'][0][0]->agoraScript(array('src' => "http://maps.google.com/maps?file=api&amp;v=1&amp;key=".($this->_tpl_vars['agora_config']['o_um_key'])), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:dc1024dce12227747584a779542860ac#0}'; endif;?>

						<?php if ($this->caching && !$this->_cache_including): echo '{nocache:dc1024dce12227747584a779542860ac#1}'; endif;echo $this->_plugins['function']['script'][0][0]->agoraScript(array('src' => "js/gmap_profile.js"), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:dc1024dce12227747584a779542860ac#1}'; endif;?>

						<div id="map" style="width: 400px; height: 300px; "></div>
						<script type="text/javascript">
						//<![CDATA[
						window.addEvent('domready',function(e) {
						gMapProfilePreview(<?php echo $this->_tpl_vars['user']['longitude']; ?>
,<?php echo $this->_tpl_vars['user']['latitude']; ?>
,<?php echo $this->_tpl_vars['agora_config']['o_um_default_zoom']; ?>
);
						});
						//]]>
						</script>
					</dt>
					<dd class="map"></dd>
					<?php endif; ?>
					<?php endif; ?>

					<?php if ($this->_tpl_vars['agora_config']['o_prof_website'] == '1'): ?>
					<dt>Website:</dt>
					<dd><?php if (empty ( $this->_tpl_vars['user']['url'] )): ?>&nbsp;<?php else: ?><span class="ag_good_link"><a href="<?php echo $this->_tpl_vars['user']['url']; ?>
" rel="nofollow" target="_blank"><?php echo $this->_tpl_vars['user']['url']; ?>
</a></span><?php endif; ?></dd>
					<?php endif; ?>

					<?php if ($this->_tpl_vars['agora_config']['o_pms_enabled'] && ! $this->_tpl_vars['user']['is_guest'] && ! $this->_tpl_vars['agora_user']['is_guest']): ?>
					<dt>Private Message:</dt>
					<dd><span class="ag_good_link"><a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'pms','page' => 'compose','send_to' => $this->_tpl_vars['user']['id']), $this);?>
">PMB</a></span></dd>
					<?php endif; ?>

					
					<?php if ($this->_tpl_vars['agora_config']['o_prof_gender'] == '1'): ?>
					<dt>Gender:</dt>
					<dd><?php if (empty ( $this->_tpl_vars['user']['gender'] )): ?>Unknown<?php elseif ($this->_tpl_vars['user']['gender'] == 1): ?>Male<?php else: ?>Female<?php endif; ?></dd>
					<?php endif; ?>

					<?php if ($this->_tpl_vars['agora_config']['o_prof_dob'] == '1'): ?>
					<dt>Birthdate:</dt>
					<dd><?php if (! empty ( $this->_tpl_vars['user']['birthday'] )): ?><?php echo $this->_tpl_vars['user']['birthday']; ?>
<?php else: ?>&nbsp;<?php endif; ?></dd>
					<?php endif; ?>

					<?php if ($this->_tpl_vars['agora_config']['o_prof_interests'] == '1'): ?>
					<dt>Interests:</dt>
					<dd><?php if (empty ( $this->_tpl_vars['user']['interests'] )): ?>&nbsp;<?php else: ?><?php echo $this->_tpl_vars['user']['interests']; ?>
<?php endif; ?></dd>
					<?php endif; ?>

					<?php if ($this->_tpl_vars['agora_config']['o_prof_about'] == '1'): ?>
					<dt>About Me:</dt>
					<dd><?php if (empty ( $this->_tpl_vars['user']['aboutme'] )): ?>&nbsp;<?php else: ?><?php echo $this->_tpl_vars['user']['aboutme']; ?>
<?php endif; ?></dd>
					<?php endif; ?>
				</dl>
			</div>
		</fieldset>

		<?php if ($this->_tpl_vars['agora_config']['o_prof_messaging'] == '1'): ?>
		<fieldset>
			<legend class="ag_color">Messaging</legend>
			<div class="ag_infldsetprofile">
				<dl>
					<dt>Jabber:</dt>
					<dd><?php if (! empty ( $this->_tpl_vars['user']['jabber'] )): ?><?php echo ((is_array($_tmp=$this->_tpl_vars['user']['jabber'])) ? $this->_run_mod_handler('escape', true, $_tmp) : AString::escape($_tmp)); ?>
<?php else: ?>Unknown<?php endif; ?></dd>

					<dt>ICQ:</dt>
					<dd><?php if (! empty ( $this->_tpl_vars['user']['icq'] )): ?><?php echo ((is_array($_tmp=$this->_tpl_vars['user']['icq'])) ? $this->_run_mod_handler('escape', true, $_tmp) : AString::escape($_tmp)); ?>
<?php else: ?>Unknown<?php endif; ?></dd>

					<dt>MSN:</dt>
					<dd><?php if (! empty ( $this->_tpl_vars['user']['msn'] )): ?><?php echo ((is_array($_tmp=$this->_tpl_vars['user']['msn'])) ? $this->_run_mod_handler('escape', true, $_tmp) : AString::escape($_tmp)); ?>
<?php else: ?>Unknown<?php endif; ?></dd>

					<dt>AOL IM:</dt>
					<dd><?php if (! empty ( $this->_tpl_vars['user']['aim'] )): ?><?php echo ((is_array($_tmp=$this->_tpl_vars['user']['aim'])) ? $this->_run_mod_handler('escape', true, $_tmp) : AString::escape($_tmp)); ?>
<?php else: ?>Unknown<?php endif; ?></dd>

					<dt>Yahoo:</dt>
					<dd><?php if (! empty ( $this->_tpl_vars['user']['yahoo'] )): ?><?php echo ((is_array($_tmp=$this->_tpl_vars['user']['yahoo'])) ? $this->_run_mod_handler('escape', true, $_tmp) : AString::escape($_tmp)); ?>
<?php else: ?>Unknown<?php endif; ?></dd>

					<dt>XFire:</dt>
					<dd><?php if (! empty ( $this->_tpl_vars['user']['xfire'] )): ?><?php echo ((is_array($_tmp=$this->_tpl_vars['user']['xfire'])) ? $this->_run_mod_handler('escape', true, $_tmp) : AString::escape($_tmp)); ?>
<?php else: ?>Unknown<?php endif; ?></dd>

					<dt>Skype:</dt>
					<dd><?php if (! empty ( $this->_tpl_vars['user']['skype'] )): ?><?php echo ((is_array($_tmp=$this->_tpl_vars['user']['skype'])) ? $this->_run_mod_handler('escape', true, $_tmp) : AString::escape($_tmp)); ?>
<?php else: ?>Unknown<?php endif; ?></dd>
				</dl>
			</div>
		</fieldset>
		<?php endif; ?>

		<fieldset>
			<legend class="ag_color">Personality</legend>
			<div class="ag_infldsetprofile">
				<dl>
					<?php if ($this->_tpl_vars['agora_config']['o_avatars'] == '1'): ?>
					<dt>Avatar:</dt>
					<dd class="ag_postavatar">
						<img src="<?php echo $this->_tpl_vars['user']['avatar']; ?>
" <?php echo $this->_tpl_vars['user']['avatar_size']; ?>
 alt="" />
					</dd>
					<?php endif; ?>

					<?php if ($this->_tpl_vars['agora_config']['o_prof_sig'] == '1'): ?>
					<dt>Signature: </dt>
					<dd>
						<?php if ($this->_tpl_vars['user']['signature']): ?>
						<div class="ag_postmsg">
							<?php echo $this->_tpl_vars['signature_preview']; ?>

							<?php echo $this->_tpl_vars['user']['signature']; ?>

						</div>
						<?php else: ?>No sig
						<?php endif; ?>
					</dd>
					<?php endif; ?>
				</dl>
			</div>
		</fieldset>

		<fieldset>
			<legend class="ag_color">User Activity</legend>
			<div class="ag_infldsetprofile">
				<dl>
					<dt>Posts:</dt>
					<dd><?php if ($this->_tpl_vars['agora_config']['o_show_post_count']): ?>
						<?php echo $this->_tpl_vars['user']['num_posts']; ?>

						<?php endif; ?>

												<?php if ($this->_tpl_vars['user']['g_search']): ?>
						&nbsp;-&nbsp;
						<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'search','action' => 'show_user','user_id' => $this->_tpl_vars['user']['id']), $this);?>
">Show Posts</a>
						<?php endif; ?>
					</dd>

					<dt>Latest Post:</dt>
					<dd><?php echo ((is_array($_tmp=$this->_tpl_vars['user']['last_post'])) ? $this->_run_mod_handler('agora_date', true, $_tmp) : $this->_plugins['modifier']['agora_date'][0][0]->agoraDate($_tmp)); ?>
</dd>

					<dt>Registered:</dt>
					<dd><?php echo ((is_array($_tmp=$this->_tpl_vars['user']['registered'])) ? $this->_run_mod_handler('agora_date', true, $_tmp) : $this->_plugins['modifier']['agora_date'][0][0]->agoraDate($_tmp)); ?>
</dd>
				</dl>
			</div>
		</fieldset>

		<?php if (( ( $this->_tpl_vars['agora_user']['is_admin'] > 0 ) || ( $this->_tpl_vars['agora_user']['is_moderator'] > 0 ) )): ?>
		<fieldset>
			<legend class="ag_color">This block can only be seen by Admins and Moderators</legend>
			<div class="ag_infldsetprofile">

				<div class="ag_rightend">
					<h2 class="ag_headerbar"><span class="ag_middle">Manage User Warnings</span></h2>
				</div>
				<div id="vf" class="ag_tablewrap">
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<thead>
							<tr>
								<th class="ag_column">Warning message</th>
								<th class="ag_topic3">Points</th>
								<th class="ag_spacer">Posted</th>
								<th class="ag_spacer">Expire</th>
							</tr>
						</thead>
						<tbody>
							<?php $_from = $this->_tpl_vars['warnings']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['warning']):
?>
							<tr>
								<td class="ag_column"><?php echo $this->_tpl_vars['warning']['default_message']; ?>
 : <?php echo $this->_tpl_vars['warning']['message']; ?>
</td>
								<td class="ag_topic3"><?php echo $this->_tpl_vars['warning']['points']; ?>
</td>
								<td class="ag_spacer"><?php echo ((is_array($_tmp=$this->_tpl_vars['warning']['posted'])) ? $this->_run_mod_handler('agora_date', true, $_tmp) : $this->_plugins['modifier']['agora_date'][0][0]->agoraDate($_tmp)); ?>
</td>
								<td class="ag_spacer"><?php echo ((is_array($_tmp=$this->_tpl_vars['warning']['expire'])) ? $this->_run_mod_handler('agora_date', true, $_tmp) : $this->_plugins['modifier']['agora_date'][0][0]->agoraDate($_tmp)); ?>
</td>
							</tr>
							<?php endforeach; else: ?>
							<tr>
								<td class="ag_spacer ag_empty_forum" colspan="4">There are currently no warnings</td>
							</tr>
							<?php endif; unset($_from); ?>
						</tbody>
					</table>
				</div>

				<?php if ($this->_tpl_vars['user']['banned']): ?>
				<div class="ag_clearer"></div><br />
				<p class="ag_user_banned">
					<strong>User banned</strong> (<?php echo $this->_tpl_vars['ban']['message']; ?>
)<br/>
				Ban will expire at <?php if ($this->_tpl_vars['ban']['expire']): ?><?php echo ((is_array($_tmp=$this->_tpl_vars['ban']['expire'])) ? $this->_run_mod_handler('agora_date', true, $_tmp) : $this->_plugins['modifier']['agora_date'][0][0]->agoraDate($_tmp)); ?>
<?php else: ?>Never<?php endif; ?>
				</p>
				<?php endif; ?>

				<div class="ag_clearer"></div><br />

				<div class="ag_profile_modMenu">
					<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'profile','page' => 'preview','action' => 'add_warning','type' => 'clean','user_id' => $this->_tpl_vars['user']['id']), $this);?>
" class="modal" rel="<?php echo '{handler: \'iframe\', size: {x: 640, y: 480}}'; ?>
">Add warning</a>
					&nbsp;|&nbsp;
					<?php if ($this->_tpl_vars['user']['banned']): ?>
					<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'profile','page' => 'preview','action' => 'unban','user_id' => $this->_tpl_vars['user']['id']), $this);?>
">UnBan User</a>
					<?php else: ?>
					<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'profile','page' => 'preview','action' => 'set_ban','user_id' => $this->_tpl_vars['user']['id'],'type' => 'clean'), $this);?>
" class="modal" rel="<?php echo '{handler: \'iframe\', size: {x: 640, y: 480}}'; ?>
">Ban Username</a>
					<?php endif; ?>
				</div>
			</div>
		</fieldset>
		<?php endif; ?>
	</div>
</div>