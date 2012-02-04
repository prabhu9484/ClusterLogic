<?php /* Smarty version 2.6.20, created on 2010-03-24 16:41:07
         compiled from tools/qjump.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'url', 'tools/qjump.tpl', 1, false),)), $this); ?>
<form class="ag_qjump" method="get" action="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'forum'), $this);?>
">
	<label>
		<select name="id" onchange="window.location=this.options[this.selectedIndex].value" class="ag_qjump">
			<option value="jump">Jump</option>
			<?php $_from = $this->_tpl_vars['forums']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['qj_cat']):
?>
			<optgroup label="<?php echo $this->_tpl_vars['qj_cat']['cat_name']; ?>
">
				<?php $_from = $this->_tpl_vars['qj_cat']['forums']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['qj_forum']):
?>
				<option value="<?php echo $this->_plugins['function']['url'][0][0]->agoraURL(array('task' => 'forum','id' => $this->_tpl_vars['qj_forum']['id']), $this);?>
">
					|--<?php unset($this->_sections['qj_level']);
$this->_sections['qj_level']['name'] = 'qj_level';
$this->_sections['qj_level']['start'] = (int)0;
$this->_sections['qj_level']['loop'] = is_array($_loop=$this->_tpl_vars['qj_forum']['level']*2) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['qj_level']['show'] = true;
$this->_sections['qj_level']['max'] = $this->_sections['qj_level']['loop'];
$this->_sections['qj_level']['step'] = 1;
if ($this->_sections['qj_level']['start'] < 0)
    $this->_sections['qj_level']['start'] = max($this->_sections['qj_level']['step'] > 0 ? 0 : -1, $this->_sections['qj_level']['loop'] + $this->_sections['qj_level']['start']);
else
    $this->_sections['qj_level']['start'] = min($this->_sections['qj_level']['start'], $this->_sections['qj_level']['step'] > 0 ? $this->_sections['qj_level']['loop'] : $this->_sections['qj_level']['loop']-1);
if ($this->_sections['qj_level']['show']) {
    $this->_sections['qj_level']['total'] = min(ceil(($this->_sections['qj_level']['step'] > 0 ? $this->_sections['qj_level']['loop'] - $this->_sections['qj_level']['start'] : $this->_sections['qj_level']['start']+1)/abs($this->_sections['qj_level']['step'])), $this->_sections['qj_level']['max']);
    if ($this->_sections['qj_level']['total'] == 0)
        $this->_sections['qj_level']['show'] = false;
} else
    $this->_sections['qj_level']['total'] = 0;
if ($this->_sections['qj_level']['show']):

            for ($this->_sections['qj_level']['index'] = $this->_sections['qj_level']['start'], $this->_sections['qj_level']['iteration'] = 1;
                 $this->_sections['qj_level']['iteration'] <= $this->_sections['qj_level']['total'];
                 $this->_sections['qj_level']['index'] += $this->_sections['qj_level']['step'], $this->_sections['qj_level']['iteration']++):
$this->_sections['qj_level']['rownum'] = $this->_sections['qj_level']['iteration'];
$this->_sections['qj_level']['index_prev'] = $this->_sections['qj_level']['index'] - $this->_sections['qj_level']['step'];
$this->_sections['qj_level']['index_next'] = $this->_sections['qj_level']['index'] + $this->_sections['qj_level']['step'];
$this->_sections['qj_level']['first']      = ($this->_sections['qj_level']['iteration'] == 1);
$this->_sections['qj_level']['last']       = ($this->_sections['qj_level']['iteration'] == $this->_sections['qj_level']['total']);
?>-<?php endfor; endif; ?>&nbsp;<?php echo $this->_tpl_vars['qj_forum']['forum_name']; ?>

				</option>
				<?php endforeach; endif; unset($_from); ?>
			</optgroup>
			<?php endforeach; endif; unset($_from); ?>
		</select>
	</label>
</form>