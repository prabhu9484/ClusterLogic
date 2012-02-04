<?php /* Smarty version 2.6.20, created on 2010-03-24 17:07:19
         compiled from index_topics.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'feed', 'index_topics.tpl', 2, false),array('function', 'url', 'index_topics.tpl', 37, false),)), $this); ?>
<?php if ($this->_tpl_vars['agora_config']['o_rss_enabled']): ?>
<?php echo $this->_plugins['function']['feed'][0][0]->agoraFeed(array('task' => 'rss','key' => $this->_tpl_vars['agora_user']['rss_id']), $this);?>

<?php endif; ?>

<div class="ag_forumButtons_wrap">
	<div class="ag_inbox">
		<div class="ag_bcrumbs">
			<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "misc/topic_buttons.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
		</div>
	</div>
</div>

<div class="ag_postlinksTop">
	<div class="ag_inbox">
		<div class="ag_bcrumbs">
			<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "include/bcrumbs.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
		</div>
		<div class="ag_pagelink">
			<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "include/paginate.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

			<div class="ag_forumTools">
				<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "tools/topic_view.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
			</div>
		</div>
	</div>
</div>

<div class="ag_rightend">
	<h2 class="ag_headerbar"><span class="ag_middle">All Topics</span></h2>
</div>
<div id="vf" class="ag_tablewrap">
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<thead>
			<tr>
				<th class="ag_leftend">&nbsp;</th>
				<th class="ag_spacer">&nbsp;</th>
				<th class="ag_column"><a href="<?php if ($_GET['filter_order'] == 'id' && $_GET['filter_order_Dir'] == 'desc'): ?><?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('filter_order' => 'id','filter_order_Dir' => 'asc'), $this);?>
<?php else: ?><?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('filter_order' => 'id','filter_order_Dir' => 'desc'), $this);?>
<?php endif; ?>" title="Click to sort by this column">Forum<?php if ($_GET['filter_order'] == 'id' && $_GET['filter_order_Dir'] == 'desc'): ?><img src="administrator/images/sort_desc.png" alt=""  /><?php endif; ?><?php if ($_GET['filter_order'] == 'id' && $_GET['filter_order_Dir'] == 'asc'): ?><img src="administrator/images/sort_asc.png" alt=""  /><?php endif; ?></a></th>
				<th class="ag_topic"><a href="<?php if ($_GET['filter_order'] == 'num_replies' && $_GET['filter_order_Dir'] == 'desc'): ?><?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('filter_order' => 'num_replies','filter_order_Dir' => 'asc'), $this);?>
<?php else: ?><?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('filter_order' => 'num_replies','filter_order_Dir' => 'desc'), $this);?>
<?php endif; ?>" title="Click to sort by this column">Stats<?php if ($_GET['filter_order'] == 'num_replies' && $_GET['filter_order_Dir'] == 'desc'): ?><img src="administrator/images/sort_desc.png" alt=""  /><?php endif; ?><?php if ($_GET['filter_order'] == 'num_replies' && $_GET['filter_order_Dir'] == 'asc'): ?><img src="administrator/images/sort_asc.png" alt=""  /><?php endif; ?></a></th>
				<th class="ag_lastpost"><a href="<?php if ($_GET['filter_order'] == 'last_post' && $_GET['filter_order_Dir'] == 'desc'): ?><?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('filter_order' => 'last_post','filter_order_Dir' => 'asc'), $this);?>
<?php else: ?><?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('filter_order' => 'last_post','filter_order_Dir' => 'desc'), $this);?>
<?php endif; ?>" title="Click to sort by this column">Latest Post<?php if ($_GET['filter_order'] == 'last_post' && $_GET['filter_order_Dir'] == 'desc'): ?><img src="administrator/images/sort_desc.png" alt=""  /><?php endif; ?><?php if ($_GET['filter_order'] == 'last_post' && $_GET['filter_order_Dir'] == 'asc'): ?><img src="administrator/images/sort_asc.png" alt=""  /><?php endif; ?></a></th>
			</tr>
		</thead>
		<tbody>
			<?php $_from = $this->_tpl_vars['topics']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['topic']):
?>
			<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "include/topic_row.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
			<?php endforeach; else: ?>
			<tr>
				<td class="ag_empty_forum" colspan="5">This Forum is Empty</td>
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
<div class="ag_bcrumbs">
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "include/bcrumbs.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
</div>
<div class="ag_clearer"></div>