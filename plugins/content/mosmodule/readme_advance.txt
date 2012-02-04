Convention:
() optional parameter
[] default value
| can substitue , as delimiter when separate parameter in MosModule

Complex Usage and sample: 
  Note: aliasFile parameter in the manager if blank will default to MosModule.ini otherwise will load from the alias File there

  # alias~mosmodulecommand=param1,(param2,param3,...)
   * You can use alias to predefine your mosmodule command with your default value to override any of the internal default value

   * For example:
	In mosmodule.ini file: 
	 aid~articleid= %s|introtext|readmore=More\,...|nokkaew|nostate

	 hello1~phpinc=hello.php,parm1,%s

	 hello2~phpinc=hello.php,%s,parm2

	 hello3~phpinc=hello.php|%s,%s

        In content: 
	 {mosmodule aid=2}
	 {mosmodule hello1=parm one in content}
	 {mosmodule hello2=parm one in content}
	 {mosmodule hello3=parm one in content,parm two in content}


   Further explain:

mosmodule will substitue aid base on the template it found in mosmodule.ini and Will display introtext words of article 2 with read more link "More,..." (escape comma) plus will show the translated article in from Nok Kaew component and bypass state of the article

	mosmodule will substitue "hello1" base on the template it found in mosmodule.ini and Will pass "parm one in content" and "parm1" from alias to hello.php

	mosmodule will substitue "hello2" base on the template it found in mosmodule.ini and Will pass "parm one in content" and "parm2" from alias to hello.php

	mosmodule will substitue "hello3" base on the template it found in mosmodule.ini and Will pass "parm one in content,parm two in content" to hello.php


  # ref=id or url
   * Displays a reference to a title of an article or a URL

  # ref=(articleid or url,(nostate),(readmore=More...)
   * Displays a reference to a title of an article or an URL inside another article

   * For example: 
  	{mosmodule ref=2,notate}

   Further explain: Will display a reference to an article 2 with showing the article title and bypass state.


  	{mosmodule ref=http://docs.ongetc.com/index.php?q=content/mosmodule}

   Further explain: Will display a reference to an URL



  # phpinc or inc: Include any script file such as php, javascript, html which will be executed and displays inside an article
   * You will need to create a folder called 'mosmodule' in the root directory.  Your php scripts will go here.  This folder's path can be changed by altering the 'Foldername' parameter in the mosmodule setup
   * Assuming your hello.php is in {yourcmsroot}/yourfolder/hello.php then you would put this in your content {mosmodule phpinc=hello.php,firtname,lastname}

   * For example: 
  	{mosmodule phpinc=hello.php,firtname,lastname}
  	{mosmodule inc=hello.js}

  # snippet: Execute PHP snippet code inside article from other content that contain PHP code

   * For example: 
	{mosmodule snippet=100}


  # module=modulename1,(module2,module3,etc)
    * Hard code default to style = -1 (raw)

    * For example: 
	{mosmodule module=Search,poll}


  # random=FAQ,(title),(introtext|fulltext|[all])
   * Displays the entire section randomly, default to don't show title

   * For example: 
  	{mosmodule random=FAQ,title,introtext}

  # readmore=2,(introtext|[numberOfWords]),(readmore=More...[Read More...]),(nokkaew|joomfish),(nostate)
   * Displays an article inside another article, default is 300 words, readmore with "Read More..." as default text when use with introtext

   * For example: 
  	{mosmodule readmore=2,80,readmore=More...,nokkaew,nostate}

   Further explain: Will display 80 words of article 2 with read more link "More..." plus will show the translated article in from Nok Kaew component and bypass state of the article

  	{mosmodule readmore=2,introtext,readmore=More...,nokkaew,nostate}

   Further explain: Will display introtext of article 2 with read more link "More..." plus will show the translated article in from Nok Kaew component and bypass state of the article

  # articleid=2,(introtext|fulltext|[all]),(readmore=More...[Read More...]),(nokkaew|joomfish),(nostate)
   * Displays an article inside another article, default is all, readmore with "Read More..." as default text when use with introtext

   * For example: 
  	{mosmodule articleid=2,introtext,readmore=More...,nokkaew,nostate}

   Further explain: Will display article 2 only intro text with read more link "More..." plus will show the translated article in from Nok Kaew component

  # moscom
   * Display MosCom comment link any where in content

   * For example: 
	{mosmodule moscom}


  # mosqid=2
   * Display your MosQ logic which assume that you already has MosQ logic created in the logic center, please make sure you test in the normal mode before attempt to embed inside your content

   * For example: 
	{mosmodule mosqid=1}

  # gigid=2
   * Display your gigCalendar inside your article which assume that you already has a GigCalendar ID created in the GigCalendar component 

   * For example: 
	{mosmodule gidid=1}


  # video: Play embed video from YouTube, Yahoo Video, Google Video or any embed flash video

   * For example: Some working sample from YouTube, Yahoo video, and Google video
	   * YouTube: {mosmodule video=http://www.youtube.com/v/ekcYc3zrJHI}
	   * Yahoo Video: {mosmodule video=http://us.i1.yimg.com/cosmos.bcst.yahoo.com/player/media/swf/FLVVideoSolo.swf}
	   * Google Video: {mosmodule video=http://video.google.com/googleplayer.swf?docId=-4897647549985392214&hl=en}

  # VideoEgg: VideoEgg Path to your uploaded video file.

   * For example: (Some working sample from VideoEgg)
	{mosmodule videoegg=/gid328/cid1096/9B/2Q/1171378165tCRacTofc58XDo0sWG5H}

  # Flash Video: Play flash (swf or flv) video file in videofolderpath with option width and height.  

   * For example: 
	{mosmodule flash=videofolder/flashfile.swf}


  # RSS Feed from others sites

   * For example: 
	{mosmodule rssfeed=http://support.ongetc.com/index.php?option=com_rss&feed=RSS2.0&no_html=1}

  # Grab Page from others sites.

   * For example: 
	{mosmodule grabpage=http://support.ongetc.com/index2.php}

  # Wrapper of url from others sites.

   * For example: 
	{mosmodule wrapper=http://support.ongetc.com/index2.php}
	{mosmodule wrapper=http://support.ongetc.com/index2.php,100%,900px,auto,top}
	{mosmodule wrapper=http://support.ongetc.com/slideshow.html}

  # List article by author 
   * Displays 5 articles by author using username inside another article, default is 5, all, page
   * Pagination in author with customizable mosmodule.css
   * Use as Blog by author with pagination in article also works in CB with some hack (ask me)

   * For example: 
	{mosmodule author=administrator,5,introtext,page}


Note: 
  * add support for itemid in readmore command
  * add support for escape comma in parameter like \,
  * add support space between comma in parameter


Legacy mambot notes for really old Mambo: (Would not advise to use this!)
  * copy {ROOT}/mambots/content/mosmodule.php to {ROOT}/mambots


=== >>>ADVANCE>>> Read this, only if you want to use mosmodule in user module ===

1. User module hack:  

  * In the includes/frontend.html.php around line 51
<code>
Replace this: echo $module->content;

With this:
=== >>> ***** For Mambo 4.6.3+ *****
global $mosConfig_absolute_path;
$mosmodulefunc=$mosConfig_absolute_path."/mambots/content/mosmodule/mosmodule_func.php";
if (file_exists($mosmodulefunc)) { include_once($mosmodulefunc); }
if($isBuffered) {
	if (function_exists('mosmodule_bot')) { $module->buffer=mosmodule_bot($module->buffer); }
	echo $module->buffer;
} else {
	if (function_exists('mosmodule_bot')) { $module->content=mosmodule_bot($module->content); }
	echo $module->content;
}

=== >>> ***** For Mambo 4.6.2 or lower *****
global $mosConfig_absolute_path;
$mosmodulefunc=$mosConfig_absolute_path."/mambots/content/mosmodule/mosmodule_func.php";
if (file_exists($mosmodulefunc)) { include_once($mosmodulefunc); }
if (function_exists('mosmodule_bot')) { $module->content=mosmodule_bot($module->content); }

echo $module->content;

or this to allow php code in module

echo eval('?>'.$module->content.'<?php ');

</code>


2. Category/Section decription hack:

  * In the component/con_content/content.html.php around line 58
<code>

Replace:
	echo $title->description;

With this:

global $mosConfig_absolute_path;
$mosmodulefunc=$mosConfig_absolute_path."/mambots/content/mosmodule/mosmodule_func.php";
if (file_exists($mosmodulefunc)) { include_once($mosmodulefunc); }
if (function_exists('mosmodule_bot')) { $title->description=mosmodule_bot($title->description); }
echo $title->description;

</code>


Other hack and use similar technique like above:
  * CB:_getViewTabContents
  * YANC:render_content

=== >>>ADVANCE>>> Read this, only if you want to use mosmodule in user module ===