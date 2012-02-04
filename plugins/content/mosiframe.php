<?php

// no direct access
defined( '_VALID_MOS' ) or die( 'Restricted access' );

$_MAMBOTS->registerFunction( 'onPrepareContent', 'botiframe' );

function botiframe( $published, &$row, &$params, $page=0 ) {
        // define the regular expression for the bot
	$regex = "#{iframe*(.*?)}(.*?){/iframe}#s";

        //check whether mambot has been unpublished
        if ( !$published ) {
            $row->text = preg_replace( $regex, '', $row->text );
            return true;
        }
        // lets do the replacement
       $row->text = preg_replace_callback( $regex,'botiframe_lknet',$row->text );
 }

function botiframe_lknet( &$matches ) {

        global $database, $mosConfig_live_site, $mosConfig_absolute_path;
	require_once( $mosConfig_absolute_path . '/includes/domit/xml_saxy_lite_parser.php' );
        // Define parameters from administrator
        $query = "SELECT id"
        . "\n FROM #__mambots"
        . "\n WHERE element = 'mosiframe'"
        . "\n AND folder = 'content'"
        ;
        
        $database->setQuery( $query );
        $id             = $database->loadResult();

        $mambot         = new mosMambot( $database );
        $mambot->load( $id );

        $botParams      = new mosParameters( $mambot->params );
	$bot_Params = array();
        $bot_Params['src']		= $botParams->def( 'src', 'http://www.luyenkim.net' );
        $bot_Params['width']          	= $botParams->def( 'width', '100%' );
        $bot_Params['height']           = $botParams->def( 'height', '400' );
        $bot_Params['scrolling']      	= $botParams->def( 'scrolling', 'auto' );
        $bot_Params['frameborder']	= $botParams->def( 'frameborder', '0' ); //on: 1 off:0
        $bot_Params['name']           = $botParams->def( 'name', '400' );
        $bot_Params['align']           = $botParams->def( 'align', 'bottom' );
        $bot_Params['infoshow']		= $botParams->def( 'infoshow', '0' ); //on: 1 off:0
        $bot_Params['text']		= $botParams->def( 'text', 'Our XYZ-offers' );
        $bot_Params['text2']		= $botParams->def( 'text2', '' );

	$parser =& new SAXY_Lite_Parser();
	$attribs = $parser->parseAttributes( html_entity_decode(@$matches[1], ENT_QUOTES) );

	$src	= trim(mosGetparam($attribs, 'src' , $bot_Params['src']));
	if(@$matches[2]) $src	= @$matches[2];
	$width	= trim(mosGetparam($attribs, 'width' ,  $bot_Params['width']));
	$height	= trim(mosGetparam($attribs, 'height' ,   $bot_Params['height']));
	$name	= trim(mosGetparam($attribs, 'name' , $bot_Params['name']));
	$align	= trim(mosGetparam($attribs, 'align' , $bot_Params['align']));
	$scrolling	= trim(mosGetparam($attribs, 'scrolling' , $bot_Params['scrolling']));
	$frameborder	= trim(mosGetparam($attribs, 'frameborder' , $bot_Params['frameborder']));
	$infoshow	= trim(mosGetparam($attribs, 'infoshow' , $bot_Params['infoshow']));
	$text	= trim(mosGetparam($attribs, 'text' , $bot_Params['text']));
	$text2	= trim(mosGetparam($attribs, 'text2' , $bot_Params['text2']));

  $html ="\n"."<iframe width=\"$width\" ";
  $html .="height=\"$height\" ";
  $html .="src=\"$src\" ";
  $html .="align=\"$align\" ";
  $html .="SCROLLING=\"$scrolling\" ";
  $html .="FRAMEBORDER=\"$frameborder\" name=\"$name\">"."\n";
  $html .= strlen($text2)>1?"<p>$text2":"<p>Your Browser should show you our $text.<br />You can show this content here: ";
  $html .= "<a href=\"$src\">$text</a>.</p>";
  $html .="</iframe>"."\n";
	return $html;
	}
?>	
