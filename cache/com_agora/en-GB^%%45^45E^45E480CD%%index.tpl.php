<?php /* Smarty version 2.6.20, created on 2010-03-24 16:36:27
         compiled from index.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'style', 'index.tpl', 2, false),)), $this); ?>
<?php echo $this->_tpl_vars['html']->toolbar->title('Control Panel'); ?>

<?php echo $this->_plugins['function']['style'][0][0]->agoraStyle(array('href' => "css/admin.css"), $this);?>


<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="top" class="ag_adminabout">
		  	<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
        		<tr>
          	  		<td class="ag_legalTitleL">
			    		<div class="ag_legalTitleL"><a href="http://jVitals.com" target="_blank"><img src="components/com_agora/image/agora_logo_blue.png" alt="Agora" border="0" title="jVitals.com" height="150" width="150"/></a></div>			  		</td>
        	  		<td class="ag_legalTitleR">
			    		<div class="ag_legalTitleR">Agora Forum</div>			  		</td>
        		</tr>
        		<tr>
          			<td class="ag_legalL"><div class="ag_legalL">Current Version</div></td>
          			<td class="ag_legalR"><div class="ag_legalR"><?php echo $this->_tpl_vars['current_version']; ?>
</div></td>
        		</tr>
        		<tr>
        	  		<td class="ag_legalL"><div class="ag_legalL">Latest Version</div></td>
        	  		<td class="ag_legalR"><div class="ag_legalR"><?php echo $this->_tpl_vars['current_version']; ?>
</div></td>
      	  		</tr>
        		<tr>
          			<td class="ag_legalL"><div class="ag_legalL">Copyright</div></td>
          			<td class="ag_legalR"><div class="ag_legalR">Copyright &copy; 2007 - 2009 <a href="http://jVitals.com" target="_blank">jVitals!</a></div></td>
        		</tr>
        		<tr>
          			<td class="ag_legalL"><div class="ag_legalL">Support</div></td>
          			<td class="ag_legalR">
						<div class="ag_legalR"><a href="http://jVitals.com/index.php?option=com_agora&amp;Itemid=105">jVitals Support</a></div>					</td>
        		</tr>
				<tr>
        		  <td class="ag_legalL"><div class="ag_legalL">Change Log</div></td>
        		  <td class="ag_legalR"><div class="ag_legalR"><a href="http://jvitals.com/docs/index.php?title=Release_Notes" target="_blank">Change Log</a></div></td>
      		  </tr>
				<tr>
				  <td class="ag_legalL"><div class="ag_legalL">Roadmap</div></td>
				  <td class="ag_legalR"><div class="ag_legalR"><a href="http://jvitals.com/bugs/main_page.php" target="_blank">Roadmap</a></div></td>
			  </tr>
			  <tr>
				  <td class="ag_legalL"><div class="ag_legalL">Support Agora</div></td>
				  <td class="ag_legalR"><div class="ag_legalR"><a href="http://jvitals.com/index.php?option=com_jdonation&view=jdonation&Itemid=122" target="_blank">Donate</a></div></td>
			  </tr>
   	  		</table>
		</td>
	  	<td valign="top" class="ag_adminabout1">
			<table width="100%" align="center" cellpadding="0" cellspacing="0" style="border:1px #ccc solid;">
          		<tr>
            		<td class="ag_cp">
						<div class="ag_cp"><a href="index.php?option=com_agora&amp;task=index"><img src="components/com_agora/image/controlpanel.png" alt="controlpanel" width="64" height="64" border="0" /><br />Control Panel</a></div>					</td>
            		<td class="ag_cp">
						<div class="ag_cp"><a href="index.php?option=com_agora&amp;task=options"><img src="components/com_agora/image/options.png" alt="Options" width="64" height="64" border="0" /><br />Options</a></div>					</td>
					<td class="ag_cp">
						<div class="ag_cp"><a href="index.php?option=com_agora&amp;task=configuration&amp;page=smilies"><img src="components/com_agora/image/configuration.png" alt="Configuration" width="64" height="64" /><br />Configuration</a></div>					</td>
					<td class="ag_cp">
						<div class="ag_cp"><a href="index.php?option=com_agora&amp;task=forums"><img src="components/com_agora/image/forums.png" alt="Forums and Categories" width="64" height="64" /><br />Categories &amp; Forums</a></div>					</td>
          		</tr>
          		<tr>
            		<td class="ag_cp">
						<div class="ag_cp"><a href="index.php?option=com_agora&amp;task=users"><img src="components/com_agora/image/users.png" alt="Users" width="64" height="64" /><br />Users</a></div>					</td>
					<td class="ag_cp">
						<div class="ag_cp"><a href="index.php?option=com_agora&amp;task=groups"><img src="components/com_agora/image/groups.png" alt="Groups" width="64" height="64" /><br />Groups</a></div>					</td>
					<td class="ag_cp">
						<div class="ag_cp"><a href="index.php?option=com_agora&amp;task=maintenance"><img src="components/com_agora/image/maintenance.png" alt="Maintenance" width="64" height="64" /><br />Maintenance</a></div>					</td>
					<td class="ag_cp">
						<div class="ag_cp"><a href="http://jVitals.com/docs/index.php?title=Main_Page" target="_blank"><img src="components/com_agora/image/help.png" alt="Help" width="64" height="64" /><br />Help</a></div>					</td>
          		</tr>
          		<tr>
          		  <td colspan="4" bgcolor="#f6f6f6" class="ag_cp"><strong>If you use Agora, please post a rating and a review at the <a href="http://extensions.joomla.org/extensions/communication/forum/1891/details" target="_blank">Joomla Extensions Directory.</a></strong></td>
       		  </tr>
        	</table>
		</td>
    </tr>
</table>