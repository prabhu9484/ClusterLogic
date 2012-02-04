<?php // A simple sample on how to use {mosmodule incphp=hello.php,firstname,lastname}
/**
* @version 
* @package MosModule - COAddOns for Mambo & Jommla - Mambot
* @copyright (C) 2007 ongetc.com
* @info ongetc@ongetc.com http://ongetc.com
* @license GNU/GPL http:/ongetc.com/gpl.html.
*/ 
defined( '_VALID_MOS' ) or die( 'Direct Access to this location is not allowed.' );
$firstvar=$mosmodule_var[0];  // first parameter from mosmodule
$secvar=$mosmodule_var[1];  // second parameter from mosmodule
?>
<form action="index.php" method="get">
<input type="hidden" name="option" value="<?php echo mosGetParam( $_REQUEST, 'option', "" ); ?>">
<input type="hidden" name="task" value="<?php echo mosGetParam( $_REQUEST, 'task', "" ); ?>">
<input type="hidden" name="id" value="<?php echo mosGetParam( $_REQUEST, 'id', "" ); ?>">
<input type="hidden" name="Itemid" value="<?php echo mosGetParam( $_REQUEST, 'Itemid', "" ); ?>">
<input name="firstname" type="text" value="<?php echo $firstvar;?>" size="20">
<input name="submit" type="submit" value="submit">
</form>
<p></p>
<?php
$firstname = mosGetParam( $_REQUEST, 'firstname', "" );
echo "Your First Name is:".$firstname;
if ($secvar) {  echo "<p>This is from the second parameter: <b>".$secvar."</b>";} 
?>
