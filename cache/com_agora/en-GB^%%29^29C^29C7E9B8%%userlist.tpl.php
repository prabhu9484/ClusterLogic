<?php /* Smarty version 2.6.20, created on 2010-03-24 17:56:26
         compiled from userlist.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'escape', 'userlist.tpl', 17, false),array('modifier', 'agora_date', 'userlist.tpl', 122, false),array('function', 'url', 'userlist.tpl', 99, false),)), $this); ?>
<div class="ag_rightend">
	<h2 class="ag_headerbar"><span class="ag_middle">Search Users</span></h2>
</div>
<div class="ag_outerwrap">
	<form id="ag_userlist" method="get" action="<?php echo $this->_tpl_vars['self_url']; ?>
">
		<input type="hidden" name="option" value="com_agora" />
		<input type="hidden" name="task" value="userlist" />
		<input type="hidden" name="action" value="search" />
		<fieldset class="ag_inform">
			<legend class="ag_color">Find and sort users</legend>
			<table width="100%" border="0" cellpadding="0" cellspacing="0" class="ag_search">
				<tr>
					<td width="150px" class="ag_color">
						<label for="username">Username</label>
					</td>
					<td class="ag_color">
						<input class="ag_text_area2" type="text" id="username" name="form[username]" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['form']['username'])) ? $this->_run_mod_handler('escape', true, $_tmp) : AString::escape($_tmp)); ?>
" size="50" maxlength="25" style="width:70%;" />
					</td>
				</tr>
				<tr>
					<td width="150px" class="ag_color">
						<label for="show_group">User Group</label>
					</td>
					<td class="ag_color">
						<select id="show_group" name="form[show_group]">
							<option value="-1" <?php if ($this->_tpl_vars['form']['show_group'] == -1): ?>selected="selected"<?php endif; ?>>All Users</option>
							<?php $_from = $this->_tpl_vars['groups']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['group']):
?>
							<?php echo '<option value="'; ?><?php echo $this->_tpl_vars['group']['id']; ?><?php echo '" '; ?><?php if ($this->_tpl_vars['form']['show_group'] == $this->_tpl_vars['group']['id']): ?><?php echo 'selected="selected"'; ?><?php endif; ?><?php echo '>'; ?><?php unset($this->_sections['level_loop']);
$this->_sections['level_loop']['name'] = 'level_loop';
$this->_sections['level_loop']['loop'] = is_array($_loop=$this->_tpl_vars['group']['level']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['level_loop']['show'] = true;
$this->_sections['level_loop']['max'] = $this->_sections['level_loop']['loop'];
$this->_sections['level_loop']['step'] = 1;
$this->_sections['level_loop']['start'] = $this->_sections['level_loop']['step'] > 0 ? 0 : $this->_sections['level_loop']['loop']-1;
if ($this->_sections['level_loop']['show']) {
    $this->_sections['level_loop']['total'] = $this->_sections['level_loop']['loop'];
    if ($this->_sections['level_loop']['total'] == 0)
        $this->_sections['level_loop']['show'] = false;
} else
    $this->_sections['level_loop']['total'] = 0;
if ($this->_sections['level_loop']['show']):

            for ($this->_sections['level_loop']['index'] = $this->_sections['level_loop']['start'], $this->_sections['level_loop']['iteration'] = 1;
                 $this->_sections['level_loop']['iteration'] <= $this->_sections['level_loop']['total'];
                 $this->_sections['level_loop']['index'] += $this->_sections['level_loop']['step'], $this->_sections['level_loop']['iteration']++):
$this->_sections['level_loop']['rownum'] = $this->_sections['level_loop']['iteration'];
$this->_sections['level_loop']['index_prev'] = $this->_sections['level_loop']['index'] - $this->_sections['level_loop']['step'];
$this->_sections['level_loop']['index_next'] = $this->_sections['level_loop']['index'] + $this->_sections['level_loop']['step'];
$this->_sections['level_loop']['first']      = ($this->_sections['level_loop']['iteration'] == 1);
$this->_sections['level_loop']['last']       = ($this->_sections['level_loop']['iteration'] == $this->_sections['level_loop']['total']);
?><?php echo '&nbsp;'; ?><?php endfor; endif; ?><?php echo ''; ?><?php echo $this->_tpl_vars['group']['name']; ?><?php echo '</option>'; ?>

							<?php endforeach; endif; unset($_from); ?>
						</select>
					</td>
				</tr>
				<tr>
					<td width="150px" class="ag_color">
						<label for="sort_by">Sort By</label>
					</td>
					<td class="ag_color">
						<select id="sort_by" name="form[sort_by]">
							<option value="username" <?php if ($this->_tpl_vars['form']['sort_by'] == 'username'): ?>selected="selected"<?php endif; ?> >Username</option>
							<option value="registered" <?php if ($this->_tpl_vars['form']['sort_by'] == 'registered'): ?>selected="selected"<?php endif; ?> >Registered</option>
						</select>
					</td>
				</tr>
				<tr>
					<td width="150px" class="ag_color">
						<label for="sort_dir">Sort Order</label>
					</td>
					<td class="ag_color">
						<select id="sort_dir" name="form[sort_dir]">
							<option value="ASC" <?php if ($this->_tpl_vars['form']['sort_dir'] == 'asc'): ?>selected="selected"<?php endif; ?> >Ascending</option>
							<option value="DESC" <?php if ($this->_tpl_vars['form']['sort_dir'] == 'desc'): ?>selected="selected"<?php endif; ?> >Descending</option>
						</select>
					</td>
				</tr>
			</table>
			<div class="ag_hint">Enter a username to search for and/or a user group to filter by. The username field can be left blank. Use the wildcard character * for partial matches. Sort users by name, date registered or number of posts and in ascending/descending order.</div>
		</fieldset>
		<div class="ag_postbuttons">
			<span>
				<input class="ag_button ag_btn_submit" type="submit" name="search" value="Submit" title="Submit" accesskey="s" />
			</span>
		</div>
	</form>
</div>

<div class="ag_postlinksTop">
	<div class="ag_pagelink">
		<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "include/paginate.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
	</div>
</div>
<div class="ag_rightend">
	<h2 class="ag_headerbar"><span class="ag_middle">User List</span></h2>
</div>
<div class="ag_tablewrap">
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<thead>
			<tr>
				<th class="ag_userlist" scope="col">Avatar</th>
				<th class="ag_userlist" scope="col">Username</th>
				<th class="ag_userlist" scope="col">Stats</th>
				<th class="ag_userlist" scope="col">Registered</th>
			</tr>
		</thead>
		<tbody>
			<?php $_from = $this->_tpl_vars['users']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['user']):
?>
			<tr class="<?php echo $this->_tpl_vars['rowbg']; ?>
">
				<td class="ag_userlist ag_userlistAvatar">
					<img src="<?php echo $this->_tpl_vars['user']['avatar']; ?>
" alt="Avatar" />
				</td>
				<td class="ag_userlist">
				<?php if ($this->_tpl_vars['user']['username']): ?>
					<div class="ag_userName">
						<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'profile','user_id' => $this->_tpl_vars['user']['id']), $this);?>
" title="<?php if ($this->_tpl_vars['agora_config']['o_fullnames_enabled']): ?><?php echo $this->_tpl_vars['user']['name']; ?>
<?php else: ?><?php echo $this->_tpl_vars['user']['username']; ?>
<?php endif; ?>"><?php if ($this->_tpl_vars['agora_config']['o_fullnames_enabled']): ?><?php echo $this->_tpl_vars['user']['name']; ?>
<?php else: ?><?php echo $this->_tpl_vars['user']['username']; ?>
<?php endif; ?></a>
					</div>
					<?php if ($this->_tpl_vars['user']['title']): ?>
					<div class="ag_userTitle">
						<span class="ag_userTitle"><strong>Title:</strong> <?php echo $this->_tpl_vars['user']['title']; ?>
</span>
					</div>
					<?php endif; ?>
				<?php else: ?>
					<div class="ag_userName_DeletedMember">
					Deleted Member
					</div>
				<?php endif; ?>
				</td>
				<td class="ag_userlist ag_userlistStats">
					<?php if ($this->_tpl_vars['agora_config']['o_show_post_count'] || ! $this->_tpl_vars['agora_user']['is_guest']): ?>
					<p class="ag_user_numPosts">
						<strong><?php echo $this->_tpl_vars['user']['num_posts']; ?>
</strong> Posts
					</p>
					<?php endif; ?>

					<?php if ($this->_tpl_vars['user']['last_post']): ?>
					<p class="ag_user_lastPost">
						<strong>Latest posts:</strong><br />
						<?php echo ((is_array($_tmp=$this->_tpl_vars['user']['last_post'])) ? $this->_run_mod_handler('agora_date', true, $_tmp) : $this->_plugins['modifier']['agora_date'][0][0]->agoraDate($_tmp)); ?>

					</p>
					<?php endif; ?>

					<?php if ($this->_tpl_vars['user']['last_visit']): ?>
					<p class="ag_user_lastVisit">
						<strong>Last visit:</strong><br />
						<?php echo ((is_array($_tmp=$this->_tpl_vars['user']['last_visit'])) ? $this->_run_mod_handler('agora_date', true, $_tmp) : $this->_plugins['modifier']['agora_date'][0][0]->agoraDate($_tmp)); ?>

					</p>
					<?php endif; ?>

					<?php if ($this->_tpl_vars['user']['rank_image']): ?>
					<p class="ag_user_rank">
						<img src="<?php echo $this->_tpl_vars['root_url']; ?>
img/ranks/<?php echo $this->_tpl_vars['user']['rank_image']; ?>
" alt="<?php echo $this->_tpl_vars['user']['rank']; ?>
" title="<?php echo $this->_tpl_vars['user']['rank']; ?>
" />
					</p>
					<?php endif; ?>
				</td>
				<td class="ag_userlist ag_userlist_Registered">
					<span><?php echo ((is_array($_tmp=$this->_tpl_vars['user']['registered'])) ? $this->_run_mod_handler('agora_date', true, $_tmp) : $this->_plugins['modifier']['agora_date'][0][0]->agoraDate($_tmp)); ?>
</span>
				</td>
			</tr>
			<?php endforeach; else: ?>
			<tr>
			<?php if ($this->_tpl_vars['agora_config']['o_show_post_count'] || ! $this->_tpl_vars['agora_user']['is_guest']): ?>
				<td class="ag_spacer ag_userlist_empty" colspan="4">Your search found no results. Please try again!</td>
			<?php else: ?>
				<td class="ag_spacer ag_userlist_empty" colspan="4">Your search found no results. Please try again!</td>
			<?php endif; ?>
			</tr>
			<?php endif; unset($_from); ?>
		</tbody>
	</table>
</div>
<div class="ag_postlinksBottom">
	<div class="ag_pagelink">
		<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "include/paginate.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
	</div>
</div>
<div class="ag_forum_separator"></div>