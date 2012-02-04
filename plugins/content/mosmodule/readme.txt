The hightlight of this new release are:
  * Add a "nostate" switch to bypass "state" in articleid
  * add | as delimiter to support "," in parameter
  * add introtext to readmore instead of number of words
  * change MM back to mosmodule which cause lot of confusion for people
  * add alias support to predefine mosmodule command to override the default value via mosmodule.ini
  * add reference to article ID or URL
  * add support for itemid in readmore command
  * add support for escape comma in parameter like \,
  * add support space between comma in parameter
  * add parameter support for alias file name
  * add multiple parameters support in alias definition
  * minor fix on correctly handle comma when use | as command separator without needing to escape comma
  * null out any left over %s in alias
  * minor change on SEF to deal with J15
  * add support for MosPrayer
  
Description:
  * MosModule mambot has the ability to display nested article, author, textsizer, embeded video in a content, exec snippet written in PHP (without <?php ?> tags) and exec external php script file pass with parameter (with <?php ?> tags).  You can see an example of that in "mosmodule\hello.php".  (See more detail below)
  * In my mind, MosModule would give me the potential of reusing article that are common to all article without repeating the same content, make my article more dynamic enrich with php code using snippet or external php script file.  With the use of the parameters and querystring you can pass variable between mosmodule and the external php script.  The possibilities are endless!


Features & Usages:
  * Run as legacy mambot support and ability to run inside module (see below)
  * MosModule is a mambot to displays any module, article, textsizer, video, exec snippet and external php script inside a content item, grap content from any url, wrapper to wrap any site into your site, rss feed, Gigcalendar, MosQbot
  * external script: Please see hello.php for a sample on passing variable between mosmodule and external script
  * Add feature to self parse mosmodule bot
  * Add support for mosimage in load article and author
  * Add support for Nok Kaew and JoomFish in load articleid
  * Show MosModule in section/category description (see readme_advance.txt).
  * Support mod_mosmodule that call mosmodule mambot in module
  * Integrate with MosCom with ability to place comment link any where in content


Note:
  * Important: Make sure to save the setting at least once and enable MosModule in Mambot manager!
  * This is a rewrite of modulebot to be compatible with MiaCMS, Mambo 4.5.1 or above, Joomla 1.0 and 1.5 with legacy enable
  * The default folder for external script is "mosmodule" but you can change it in param screen
	For example: /home/user/www/mosmodule
  * Snippet should not have <?php ?> tags where as phpinc should have the tags
  * By default, the module will fill the width of the content area.  If you wish to control the width and positioning of modules in content area, you will want to enclose the mosmodule tag(s) in a div and either assign a class to controll the display in your template_css.css file, or use inline styles (if you are using a WYSIWYG editor, you will need to switch to source mode in order to create the <div> tag).


Syntax: {mosmodule command} ---> see a list of available command below for more detail

Convention:
() optional parameter
[] default value
| can substitue , as delimiter when separate parameter in MosModule

>>> Advance usage: For more detail see mambots\content\mosmodule\advance_readme.txt

List of available commands:

  # list 
    * Displays a list of available modules and block positions.

  # module=modulename1,(module2,module3,etc)
    * Displays module in a content.

  # random=FAQ
   * Displays the entire section randomly

  # articleid=2
   * Displays an article inside another article option to show readmore link when introtext in used

  # readmore=2
   * Displays an article inside another article with readmore link

  # codeid=2
   * Displays an article inside another article as code listing

  # textsizer=idtag
   * textsizer to resize text by passing the id tag of your content

  # mosqid=2
   * Display MosQ query id 2 in content

  # gigid=2
   * Display GigCalendar id 2 in content

  # snippet=2
   * Execute and displays an article inside another article as PHP code

  # inc=hello.php,firtname,lastname
   * Include and Execute external script such as javascript, php, html, etc in your content

  # phpinc=hello.php,firtname,lastname
   * Include and Execute external script such as javascript, php, html, etc in your content

  # video=Video_url,(width,heigth)
   * Default is width=390, heigth=280

  # videoegg=VE_Path,(width,heigth) 
   * Default is width=390, heigth=280

  # flash=videofolderpath/flashfile.swf,(width,heigth)
   * Default is width=390, heigth=280

  # rssfeed=url
   * Show RSS Feed from others sites

  # grabpage=url
   * Show page from others sites

  # wrapper=url,(width,height,scrolling,align)
   * Default is width=100%, heigth=800px, scrolling=auto, align=top

  # author=username,(5),(introtext|fulltext|[all]),(page,[nopage])
   * Displays 5 articles by author using username inside another article

  # moscom
   * Display MosCom comment link any where in content

  # ref=id or url
   * Displays a reference to a title of an article or a URL

  # alias (see readme_advance.txt for more detail)

Credit: see mambots\content\mosmodule\credit.txt

Info:

    * Wiki: http://wiki.ongetc.com
    * Support: http://support.ongetc.com/index.php?option=com_phorum&Itemid=175
    * Download: http://support.ongetc.com/index.php?option=com_content&task=category&sectionid=1&id=149&Itemid=192

Any donation$ would be greatly appreciated. Thanks 
