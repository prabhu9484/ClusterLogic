<?php /* Smarty version 2.6.20, created on 2010-03-24 17:07:19
         compiled from include/paginate.tpl */ ?>
<span class="ag_page_num"><span>Page:</span></span>
<?php $_from = $this->_tpl_vars['pagination']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['page']):
?>
<?php echo ''; ?><?php if (! empty ( $this->_tpl_vars['page']['url'] )): ?><?php echo '<span class="ag_page_num"><a class="ag_page_num" href="'; ?><?php echo $this->_tpl_vars['page']['url']; ?><?php echo '">'; ?><?php echo $this->_tpl_vars['page']['caption']; ?><?php echo '</a></span>'; ?><?php else: ?><?php echo '<span class="ag_page_num"><span>'; ?><?php echo $this->_tpl_vars['page']['caption']; ?><?php echo '</span></span>'; ?><?php endif; ?><?php echo ''; ?>

<?php endforeach; endif; unset($_from); ?>