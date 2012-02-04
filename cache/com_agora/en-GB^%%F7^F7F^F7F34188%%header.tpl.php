<?php /* Smarty version 2.6.20, created on 2010-03-24 16:41:07
         compiled from header.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'style', 'header.tpl', 1, false),array('function', 'script', 'header.tpl', 8, false),array('function', 'loadModule', 'header.tpl', 27, false),array('function', 'url', 'header.tpl', 36, false),array('modifier', 'truncate', 'header.tpl', 41, false),)), $this); ?>
<?php $this->_cache_serials['/var/www/joomla2/cache/com_agora/en-GB^%%F7^F7F^F7F34188%%header.tpl.inc'] = 'd667efef7741db93b82e19b21fdaf543'; ?><?php echo $this->_plugins['function']['style'][0][0]->agoraStyle(array('href' => "style/".($this->_tpl_vars['agora_config']['o_default_style'])."/common.css"), $this);?>

<?php echo $this->_plugins['function']['style'][0][0]->agoraStyle(array('href' => "style/".($this->_tpl_vars['agora_config']['o_default_style'])."/index.css"), $this);?>

<?php echo $this->_plugins['function']['style'][0][0]->agoraStyle(array('href' => "style/".($this->_tpl_vars['agora_config']['o_default_style'])."/js_css/fxslide.css"), $this);?>

<?php echo $this->_plugins['function']['style'][0][0]->agoraStyle(array('href' => "style/".($this->_tpl_vars['agora_config']['o_default_style'])."/js_css/jpane.css"), $this);?>

<?php echo $this->_plugins['function']['style'][0][0]->agoraStyle(array('href' => "style/".($this->_tpl_vars['agora_config']['o_default_style'])."/js_css/dropdown.css"), $this);?>

<?php echo $this->_plugins['function']['style'][0][0]->agoraStyle(array('href' => "style/".($this->_tpl_vars['agora_config']['o_default_style'])."/js_css/button.css"), $this);?>

<?php echo $this->_plugins['function']['style'][0][0]->agoraStyle(array('href' => "style/".($this->_tpl_vars['agora_config']['o_default_style'])."/js_css/slimbox.css"), $this);?>

<?php if ($this->caching && !$this->_cache_including): echo '{nocache:d667efef7741db93b82e19b21fdaf543#0}'; endif;echo $this->_plugins['function']['script'][0][0]->agoraScript(array('src' => "js/dropdown_index.js"), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:d667efef7741db93b82e19b21fdaf543#0}'; endif;?>

<?php if ($this->caching && !$this->_cache_including): echo '{nocache:d667efef7741db93b82e19b21fdaf543#1}'; endif;echo $this->_plugins['function']['script'][0][0]->agoraScript(array('src' => "js/dropdown.js"), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:d667efef7741db93b82e19b21fdaf543#1}'; endif;?>

<?php if ($this->caching && !$this->_cache_including): echo '{nocache:d667efef7741db93b82e19b21fdaf543#2}'; endif;echo $this->_plugins['function']['script'][0][0]->agoraScript(array('src' => "js/slimbox.js"), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:d667efef7741db93b82e19b21fdaf543#2}'; endif;?>

<?php if ($this->_tpl_vars['agora_config']['o_include_jQuery'] == 1): ?>
<?php if ($this->caching && !$this->_cache_including): echo '{nocache:d667efef7741db93b82e19b21fdaf543#3}'; endif;echo $this->_plugins['function']['script'][0][0]->agoraScript(array('src' => "js/jquery-1.3.2.min.js"), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:d667efef7741db93b82e19b21fdaf543#3}'; endif;?>

<?php endif; ?>
<script type="text/javascript">
<!--
window.addEvent('domready',function(){
Lightbox.init({descriptions: '.lightboxDesc', showControls: true});
});
//-->
</script>
<div id="ag_agorawrap" >
	<a name="top" id="top"></a>
	<div id="ag_agora<?php echo $this->_tpl_vars['action']; ?>
" class="ag_agora">
		<!--Begin Header Section-->
		<!--Begin Board Title-->
		<div class="ag_adsense">
			<?php echo $this->_plugins['function']['loadModule'][0][0]->loadModule(array('name' => 'agora_1'), $this);?>

			<div class="ag_clearer"></div>
		</div>

		<?php if ($this->_tpl_vars['agora_config']['o_main_menu'] == 1): ?>
		<div id="ag_headerbar_menu">
			<div id="ag_main_menu">
				<ul id="ag_menu" >
					<li class="ag_node">
						<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array(), $this);?>
" title="Index">Index</a>
					</li>
					<?php if (! isset ( $this->_tpl_vars['some_tabs_off'] )): ?>
					<li class="ag_node">
						<?php if (isset ( $this->_tpl_vars['current_category'] )): ?>
						<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('id' => $this->_tpl_vars['current_category_id']), $this);?>
" title="Jump: <?php echo $this->_tpl_vars['current_category']; ?>
"><?php echo ((is_array($_tmp=$this->_tpl_vars['current_category'])) ? $this->_run_mod_handler('truncate', true, $_tmp, 20) : smarty_modifier_truncate($_tmp, 20)); ?>
</a>
						<?php else: ?>
						<?php if ($this->_tpl_vars['forum_view']): ?>
						<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('action' => 'setview','view' => 'topic'), $this);?>
">Topic View</a>
						<?php else: ?>
						<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('action' => 'setview','view' => 'forum'), $this);?>
">Forum View</a>
						<?php endif; ?>
						<?php endif; ?>
					</li>
					<?php endif; ?>
					<li class="ag_node">
						<a href="javascript:void(0);" title="Users">Users</a>
						<ul>
							<?php if (! $this->_tpl_vars['agora_user']['is_guest'] || $this->_tpl_vars['agora_config']['o_guest_userlist']): ?>
							<li class="ag_li">
								<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'userlist'), $this);?>
" class="icon_user_list" title="User List">User List</a>
							</li>
							<?php endif; ?>
							<?php if ($this->_tpl_vars['agora_config']['o_usermap'] == '1'): ?>
							<li class="ag_li">
								<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'misc','page' => 'gmap'), $this);?>
" class="icon_user_map" title="User Map">User Map</a>
							</li>
							<?php endif; ?>
							<?php if (! $this->_tpl_vars['agora_user']['is_guest']): ?>
							<li class="ag_li">
								<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'profile'), $this);?>
" class="icon_1" title="My Profile">My Profile</a>
							</li>
							<?php endif; ?>
						</ul>
					</li>
					<?php if ($this->_tpl_vars['agora_config']['o_pms_enabled'] == 1): ?>
					<?php if (! $this->_tpl_vars['agora_user']['is_guest']): ?>
					<li class="ag_node">
						<?php if ($this->_tpl_vars['pm_count']): ?>
						<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'pms'), $this);?>
" title="You have <?php echo $this->_tpl_vars['pm_count']; ?>
 New messages">Messages<sup class="ag_new_message"><?php echo $this->_tpl_vars['pm_count']; ?>
</sup></a>
						<?php else: ?>
						<a href="javascript:void(0);" title="No Messages">Messages</a>
						<?php endif; ?>
						<ul>
							<li class="ag_li">
								<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'pms','action' => 'compose'), $this);?>
" class="pms_icon_1" title="Compose">Compose</a>
							</li>
							<li class="ag_li">
								<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'pms','box' => 0), $this);?>
" class="pms_icon_2" title="Inbox">Inbox</a>
							</li>
							<li class="ag_li">
								<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'pms','box' => 1), $this);?>
" class="pms_icon_3" title="Sent">Sent</a>
							</li>
						</ul>
					</li>
					<?php endif; ?>
					<?php endif; ?>
					<?php if ($this->_tpl_vars['agora_config']['o_rules']): ?>
					<li class="ag_node">
						<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'misc','page' => 'rules'), $this);?>
" title="Rules">Rules</a>
					</li>
					<?php endif; ?>
					<li class="ag_node">
						<a href="javascript:void(0);" title="Search">Search</a>
						<ul>
							<?php if (! $this->_tpl_vars['agora_user']['is_guest']): ?>
							<li class="ag_li">
								<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'search','action' => 'show_latest'), $this);?>
">Show latest posts</a> </li>
							<li class="ag_li">
								<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'search','action' => 'show_unanswered'), $this);?>
" title="Show unanswered posts">Show unanswered posts</a>
							</li>
							<li class="ag_li">
								<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'search','action' => 'show_unreaded'), $this);?>
" title="Show unread posts">Show unread posts</a>
							</li>
							<?php endif; ?>
							<li class="ag_li">
								<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'search'), $this);?>
" class="ag_search_icon_2" title="Advanced Search">Advanced Search</a>
							</li>
						</ul>
					</li>
				</ul>
				<div class="ag_clearer"></div>
			</div>
		</div>
		<?php endif; ?>
		<!--Begin Header Module Position-->

		<div class="ag_clearer"></div>
		<!--End Header Module Position-->
		<!--End Header Section-->
		<!--End Announcements-->
		<?php if ($this->_tpl_vars['agora_config']['o_announcement']): ?>
		<div class="ag_forum_separator"></div>
		<div class="ag_outerwrap">
			<div id="ag_announcement">
				<?php echo $this->_tpl_vars['agora_config']['o_announcement_message']; ?>

				<div class="ag_adsense2">
					<?php echo $this->_plugins['function']['loadModule'][0][0]->loadModule(array('name' => 'agora_2'), $this);?>

				</div>
			</div>
		</div>
		<div class="ag_forum_separator"></div>
		<?php endif; ?>
		<!--End Announcements-->
		<div class="ag_adsense">
			<?php echo $this->_plugins['function']['loadModule'][0][0]->loadModule(array('name' => 'agora_3'), $this);?>

		</div>
		<div class="ag_clearer"></div>