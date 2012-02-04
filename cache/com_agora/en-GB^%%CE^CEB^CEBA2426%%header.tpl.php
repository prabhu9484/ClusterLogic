<?php /* Smarty version 2.6.20, created on 2010-03-24 18:02:38
         compiled from profile/header.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'style', 'profile/header.tpl', 1, false),array('function', 'url', 'profile/header.tpl', 10, false),array('modifier', 'escape', 'profile/header.tpl', 4, false),)), $this); ?>
<?php echo $this->_plugins['function']['style'][0][0]->agoraStyle(array('href' => "style/".($this->_tpl_vars['agora_config']['o_default_style'])."/profile.css"), $this);?>


<div class="ag_rightend">
	<h2 class="ag_headerbar"><span class="ag_middle">Profile: <?php if ($this->_tpl_vars['agora_config']['o_fullnames_enabled']): ?><?php echo ((is_array($_tmp=$this->_tpl_vars['user']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp) : AString::escape($_tmp)); ?>
<?php else: ?><?php echo ((is_array($_tmp=$this->_tpl_vars['user']['username'])) ? $this->_run_mod_handler('escape', true, $_tmp) : AString::escape($_tmp)); ?>
<?php endif; ?></span></h2>
</div>
<div id="ag_profileHeader">
	<div class="ag_profil_menu">
		<?php if (! $this->_tpl_vars['preview_only'] && ( $this->_tpl_vars['user']['id'] > 0 )): ?>
		<div class="ag_profil_option">
			<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'profile','page' => 'personal','user_id' => "#"), $this);?>
">
				<span class="ag_profil_box">Personal</span>
			</a>
		</div>
		<?php endif; ?>

		<?php if ($this->_tpl_vars['agora_config']['o_prof_messaging'] == '1'): ?>
		<?php if (! $this->_tpl_vars['preview_only'] && $this->_tpl_vars['user']['id'] > 0): ?>
		<div class="ag_profil_option">
			<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'profile','page' => 'messaging','user_id' => "#"), $this);?>
">
				<span class="ag_profil_box">Messaging</span>
			</a>
		</div>
		<?php endif; ?>
		<?php endif; ?>

		<?php if (! $this->_tpl_vars['preview_only'] && $this->_tpl_vars['user']['id'] > 0): ?>
		<div class="ag_profil_option">
			<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'profile','page' => 'personality','user_id' => "#"), $this);?>
">
				<span class="ag_profil_box">Personality</span>
			</a>
		</div>
		<?php endif; ?>

		<?php if (! $this->_tpl_vars['preview_only'] && $this->_tpl_vars['user']['id'] > 0): ?>
		<div class="ag_profil_option">
			<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'profile','page' => 'display','user_id' => "#"), $this);?>
">
				<span class="ag_profil_box">Display</span>
			</a>
		</div>
		<?php endif; ?>

		<?php if ($this->_tpl_vars['agora_config']['o_prof_gallery'] == '1'): ?>
		<div class="ag_profil_option">
			<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'profile','page' => 'gallery','user_id' => "#"), $this);?>
">
				<span class="ag_profil_box">Gallery</span>
			</a>
		</div>
		<?php endif; ?>

		<?php if ($this->_tpl_vars['agora_config']['o_prof_attach'] == '1'): ?>
		<div class="ag_profil_option">
			<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'profile','page' => 'attachments','user_id' => "#"), $this);?>
">
				<span class="ag_profil_box">Attachments</span>
			</a>
		</div>
		<?php endif; ?>

		<div class="ag_profil_option">
			<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'profile','page' => 'posts','user_id' => "#"), $this);?>
">
				<span class="ag_profil_box">Posts</span>
			</a>
		</div>

		<?php if (! $this->_tpl_vars['preview_only'] && $this->_tpl_vars['user']['id'] > 0): ?>
		<div class="ag_profil_option">
			<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'profile','page' => 'subscriptions','user_id' => "#"), $this);?>
">
				<span class="ag_profil_box">Subscriptions</span>
			</a>
		</div>
		<?php endif; ?>

		
		<div class="ag_profil_option">
			<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'profile','page' => 'preview','user_id' => "#"), $this);?>
">
				<span class="ag_profil_box">Preview</span>
			</a>
		</div>
	</div>
</div>