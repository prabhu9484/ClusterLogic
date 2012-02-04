<?php /* Smarty version 2.6.20, created on 2010-03-24 16:41:07
         compiled from index_forums.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'feed', 'index_forums.tpl', 2, false),array('function', 'url', 'index_forums.tpl', 63, false),array('function', 'loadModule', 'index_forums.tpl', 112, false),array('block', 'moduleExists', 'index_forums.tpl', 109, false),)), $this); ?>
<?php $this->_cache_serials['/var/www/joomla2/cache/com_agora/en-GB^%%95^955^9551BBB1%%index_forums.tpl.inc'] = 'b93f9cdf55a8898872c23b704a3045a0'; ?><?php if ($this->_tpl_vars['agora_config']['o_rss_enabled']): ?>
<?php echo $this->_plugins['function']['feed'][0][0]->agoraFeed(array('task' => 'rss','key' => $this->_tpl_vars['agora_user']['rss_id']), $this);?>

<?php endif; ?>
<script type="text/javascript">
<!--
<?php echo '
function addSliders(cat_id)
{
	var status = {
		\'false\': \'open\',
		\'true\': \'close\'
	};
	//-vertical
	var slide = new Fx.Slide(\'pp_\'+cat_id, {duration: 300});
	if(getCookie(\'pp_\'+cat_id)==\'close\')
	slide.toggle();
	$(\'toggle\'+cat_id).addEvent(\'click\', function(e){
		e = new Event(e);
		if (slide.open) {
			slide.slideOut();
			$(\'img_up_\'+cat_id).setStyle(\'display\',\'none\');
			$(\'img_down_\'+cat_id).setStyle(\'display\',\'inline\');
		} else {
			slide.slideIn();
			$(\'img_up_\'+cat_id).setStyle(\'display\',\'inline\');
			$(\'img_down_\'+cat_id).setStyle(\'display\',\'none\');
		}
		e.stop();
		setCookie(\'pp_\'+cat_id,status[slide.open]);
	});

	if(getCookie(\'pp_\'+cat_id)==\'close\') {
		slide.slideIn();
		$(\'img_up_\'+cat_id).setStyle(\'display\',\'none\');
		$(\'img_down_\'+cat_id).setStyle(\'display\',\'inline\');
	} else {
		$(\'img_up_\'+cat_id).setStyle(\'display\',\'inline\');
		$(\'img_down_\'+cat_id).setStyle(\'display\',\'none\');
	}
}
'; ?>


window.addEvent('domready', function() {
<?php $_from = $this->_tpl_vars['categories']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['cat']):
?>
	addSliders(<?php echo $this->_tpl_vars['cat']['id']; ?>
);
<?php endforeach; endif; unset($_from); ?>
});
//-->
</script>

<div class="ag_forumButtons_wrap">
	<div class="ag_inbox">
		<div class="ag_forumButtons">
			<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "misc/topic_buttons.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
		</div>
	</div>
</div>

<?php $_from = $this->_tpl_vars['categories']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['category_loop'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['category_loop']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['cat_count'] => $this->_tpl_vars['cat']):
        $this->_foreach['category_loop']['iteration']++;
?>
<div class="ag_rightend">
	<h2 class="ag_headerbar">
		<span class="ag_middle">
			<a class="ag_good_link" href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('id' => $this->_tpl_vars['cat']['id']), $this);?>
"><?php echo $this->_tpl_vars['cat']['cat_name']; ?>
</a>

			<span class="ag_forum_collapse">
				<a id="toggle<?php echo $this->_tpl_vars['cat']['id']; ?>
" href="javascript:void(0);" name="toggle<?php echo $this->_tpl_vars['cat']['id']; ?>
">
					<img src="<?php echo $this->_tpl_vars['root_url']; ?>
style/<?php echo $this->_tpl_vars['agora_config']['o_default_style']; ?>
/img/exp_up.png" alt="Collapse" title="Collapse" id="img_up_<?php echo $this->_tpl_vars['cat']['id']; ?>
" />
					<img style="display: none" src="<?php echo $this->_tpl_vars['root_url']; ?>
style/<?php echo $this->_tpl_vars['agora_config']['o_default_style']; ?>
/img/exp_down.png" alt="Expand" title="Expand" id="img_down_<?php echo $this->_tpl_vars['cat']['id']; ?>
" />
				</a>
			</span>
		</span>
	</h2>
</div>

<div id="idx<?php echo $this->_tpl_vars['cat_count']; ?>
" class="ag_tablewrap">
	<div id="pp_<?php echo $this->_tpl_vars['cat']['id']; ?>
">
		<div class="ag_forumcat" id="box_<?php echo $this->_tpl_vars['cat_count']; ?>
">
			<table width="100%" border="0" cellpadding="0" cellspacing="0">
				<thead>
					<tr>
						<th class="ag_leftend">
							<?php if ($this->_tpl_vars['agora_config']['o_rss_enabled']): ?>
							<span>
								<a href="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'rss','format' => 'feed','type' => 'rss','cid' => $this->_tpl_vars['cat']['id'],'key' => $this->_tpl_vars['agora_user']['rss_id']), $this);?>
" title="RSS Feed">
									<img src="<?php echo $this->_tpl_vars['root_url']; ?>
img/icons/rss.png" alt="RSS Feed" />
								</a>
							</span>
							<?php else: ?>
							<span>&nbsp;</span>
							<?php endif; ?>
						</th>
						<th class="ag_column">Forums</th>
						<th class="ag_topic">Stats</th>
						<th class="ag_lastpost">Latest Post</th>
					</tr>
				</thead>
				<tbody>
				<?php $_from = $this->_tpl_vars['cat']['forums']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['forum'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['forum']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['forum_num'] => $this->_tpl_vars['forum']):
        $this->_foreach['forum']['iteration']++;
?>
					<tr class="<?php if (! empty ( $this->_tpl_vars['forum']['ref_name'] )): ?><?php echo $this->_tpl_vars['forum']['ref_name']; ?>
<?php else: ?><?php echo $this->_tpl_vars['cat']['ref_name']; ?>
<?php endif; ?>">
						<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'include/forum_row.tpl', 'smarty_include_vars' => array('forum' => $this->_tpl_vars['forum'])));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
					</tr>
				<?php endforeach; endif; unset($_from); ?>
				</tbody>
			</table>
		</div>
	</div>
</div>

<?php if ($this->caching && !$this->_cache_including): echo '{nocache:b93f9cdf55a8898872c23b704a3045a0#0}'; endif;$this->_tag_stack[] = array('moduleExists', array('name' => 'agora_main')); $_block_repeat=true;$this->_plugins['block']['moduleExists'][0][0]->moduleExists($this->_tag_stack[count($this->_tag_stack)-1][1], null, $this, $_block_repeat);while ($_block_repeat) { ob_start(); ?>
<?php if ($this->_foreach['category_loop']['iteration'] == 1): ?>
<div class="ag_adsense">
	<?php echo $this->_plugins['function']['loadModule'][0][0]->loadModule(array('name' => 'agora_main'), $this);?>

</div>
<div class="ag_clearer"></div>
<?php endif; ?>
<?php $_block_content = ob_get_contents(); ob_end_clean(); $_block_repeat=false;echo $this->_plugins['block']['moduleExists'][0][0]->moduleExists($this->_tag_stack[count($this->_tag_stack)-1][1], $_block_content, $this, $_block_repeat); }  array_pop($this->_tag_stack); if ($this->caching && !$this->_cache_including): echo '{/nocache:b93f9cdf55a8898872c23b704a3045a0#0}'; endif;?>

<div class="ag_forum_separator"></div>
<?php endforeach; endif; unset($_from); ?>