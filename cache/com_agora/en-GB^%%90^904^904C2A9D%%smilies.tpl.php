<?php /* Smarty version 2.6.20, created on 2010-03-24 16:56:03
         compiled from configuration/smilies.tpl */ ?>
<?php echo $this->_tpl_vars['html']->toolbar->title('Configuration - Smilies'); ?>

<?php echo $this->_tpl_vars['html']->toolbar->deleteList(); ?>

<?php echo $this->_tpl_vars['html']->toolbar->editList(); ?>

<?php echo $this->_tpl_vars['html']->toolbar->popupAdd(); ?>


<?php echo '
<script type="text/javascript">
  function toggleChecks()
  {
    var akCbs = $$(\'input\', {\'type\': \'checkbox\'} );

    for( iX=0; iX<akCbs.length; ++iX )
    {
      // !!! - a better check should be implemented to test for 
      //       valid checkbox names... there may be a way with smarty.
      if( akCbs[iX].name !== "toggle" && akCbs[iX].name === "cid[]" )
      {
        akCbs[iX].checked = $(\'toggle\').checked;
      }
    }
  }

</script>
'; ?>


<div style="float:left; width: 10%;">
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "configuration/links.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
</div>

<div style="float:right; width: 90%;">
	<form name="adminForm" method="POST">
		<input type="hidden" name="checked" value="0"/>
		<input type="hidden" name="agora_task" value="configuration"/>
		<input type="hidden" name="task" value=""/>
		<input type="hidden" name="page" value="smilies"/>
		<input type="hidden" name="option" value="com_agora"/>
		<input type="hidden" name="boxchecked" value="0"/>
		<fieldset>
			<legend>Current Available Smilies</legend>
			<table class="adminlist">
				<thead>
					<th width="20">
            <input type="checkbox" id="toggle" name="toggle" value="" onclick="toggleChecks();" />
					</th>
					<th>Code</th>
					<th>Image Filename</th>
					<th>Image</th>
				</thead>
				<tfoot>
					<tr><td colspan="4"><?php echo $this->_tpl_vars['pagination']->getListFooter(); ?>
</td></tr>
				</tfoot>
				<tbody>
					<?php $_from = $this->_tpl_vars['smilies']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['num'] => $this->_tpl_vars['smile']):
?>
					<tr>
						<td><?php echo $this->_tpl_vars['html']->jhtml('grid.id',$this->_tpl_vars['num'],$this->_tpl_vars['smile']['id']); ?>
</td>
						<td><?php echo $this->_tpl_vars['smile']['text']; ?>
</td>
						<td><?php echo $this->_tpl_vars['smile']['image']; ?>
</td>
						<td><img src="<?php echo $this->_tpl_vars['site_url']; ?>
img/smilies/<?php echo $this->_tpl_vars['smile']['image']; ?>
" /></td>
					</tr>
					<?php endforeach; else: ?>
					<tr><td colspan="4">No smilies defined</td></tr>
					<?php endif; unset($_from); ?>
				</tbody>
			</table>
		</fieldset>
	</form>
</div>