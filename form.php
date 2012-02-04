<html>
<head>

<script src="mouseovertabs.js" type="text/javascript">

/***********************************************
* Mouseover Tabs Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for this script and 100s more
***********************************************/

</script>

<style type="text/css">

#popitmenu{
position: absolute;
background-color: white;
border:1px solid black;
font: normal 12px Verdana;
line-height: 18px;
z-index: 100;
visibility: hidden;
}

#popitmenu a{
text-decoration: none;
padding-left: 6px;
color: black;
display: block;
}

#popitmenu a:hover{ /*hover background color*/
background-color: #CCFF9D;
}

</style>

<script type="text/javascript">

/***********************************************
* Pop-it menu- © Dynamic Drive (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit http://www.dynamicdrive.com/ for full source code
***********************************************/

var defaultMenuWidth="150px" //set default menu width.

var linkset=new Array()
//SPECIFY MENU SETS AND THEIR LINKS. FOLLOW SYNTAX LAID OUT

linkset[0]='<a href="http://dynamicdrive.com">Dynamic Drive</a>'
linkset[0]+='<hr>' //Optional Separator
linkset[0]+='<a href="http://www.javascriptkit.com">JavaScript Kit</a>'
linkset[0]+='<a href="http://www.codingforums.com">Coding Forums</a>'
linkset[0]+='<a href="http://www.cssdrive.com">CSS Drive</a>'
linkset[0]+='<a href="http://freewarejava.com">Freewarejava</a>'

linkset[1]='<a href="http://msnbc.com">MSNBC</a>'
linkset[1]+='<a href="http://cnn.com">CNN</a>'
linkset[1]+='<a href="http://news.bbc.co.uk">BBC News</a>'
linkset[1]+='<a href="http://www.washingtonpost.com">Washington Post</a>'

////No need to edit beyond here

var ie5=document.all && !window.opera
var ns6=document.getElementById

if (ie5||ns6)
document.write('<div id="popitmenu" onMouseover="clearhidemenu();" onMouseout="dynamichide(event)"></div>')

function iecompattest(){
return (document.compatMode && document.compatMode.indexOf("CSS")!=-1)? document.documentElement : document.body
}

function showmenu(e, which, optWidth){
if (!document.all&&!document.getElementById)
return
clearhidemenu()
menuobj=ie5? document.all.popitmenu : document.getElementById("popitmenu")
menuobj.innerHTML=which
menuobj.style.width=(typeof optWidth!="undefined")? optWidth : defaultMenuWidth
menuobj.contentwidth=menuobj.offsetWidth
menuobj.contentheight=menuobj.offsetHeight
eventX=ie5? event.clientX : e.clientX
eventY=ie5? event.clientY : e.clientY
//Find out how close the mouse is to the corner of the window
var rightedge=ie5? iecompattest().clientWidth-eventX : window.innerWidth-eventX
var bottomedge=ie5? iecompattest().clientHeight-eventY : window.innerHeight-eventY
//if the horizontal distance isn't enough to accomodate the width of the context menu
if (rightedge<menuobj.contentwidth)
//move the horizontal position of the menu to the left by it's width
menuobj.style.left=ie5? iecompattest().scrollLeft+eventX-menuobj.contentwidth+"px" : window.pageXOffset+eventX-menuobj.contentwidth+"px"
else
//position the horizontal position of the menu where the mouse was clicked
menuobj.style.left=ie5? iecompattest().scrollLeft+eventX+"px" : window.pageXOffset+eventX+"px"
//same concept with the vertical position
if (bottomedge<menuobj.contentheight)
menuobj.style.top=ie5? iecompattest().scrollTop+eventY-menuobj.contentheight+"px" : window.pageYOffset+eventY-menuobj.contentheight+"px"
else
menuobj.style.top=ie5? iecompattest().scrollTop+event.clientY+"px" : window.pageYOffset+eventY+"px"
menuobj.style.visibility="visible"
return false
}

function contains_ns6(a, b) {
//Determines if 1 element in contained in another- by Brainjar.com
while (b.parentNode)
if ((b = b.parentNode) == a)
return true;
return false;
}

function hidemenu(){
if (window.menuobj)
menuobj.style.visibility="hidden"
}

function dynamichide(e){
if (ie5&&!menuobj.contains(e.toElement))
hidemenu()
else if (ns6&&e.currentTarget!= e.relatedTarget&& !contains_ns6(e.currentTarget, e.relatedTarget))
hidemenu()
}

function delayhidemenu(){
delayhide=setTimeout("hidemenu()",500)
}

function clearhidemenu(){
if (window.delayhide)
clearTimeout(delayhide)
}

if (ie5||ns6)
document.onclick=hidemenu

</script>


<link rel="stylesheet" type="text/css" href="jqcontextmenu.css" />

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>

<script type="text/javascript" src="jqcontextmenu.js">

/***********************************************
* jQuery Context Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for this script and 100s more
***********************************************/

</script>

<script type="text/javascript">

//Usage: $(elementselector).addcontextmenu('id_of_context_menu_on_page')
//To apply context menu to entire document, use: $(document).addcontextmenu('id_of_context_menu_on_page')

jQuery(document).ready(function($){
	$('a.mylinks').addcontextmenu('contextmenu1') //apply context menu to links with class="mylinks"
})


jQuery(document).ready(function($){
	$('img').addcontextmenu('contextmenu2') //apply context menu to all images on the page
})

</script>


<script type="text/javascript">

/***********************************************
* Contractible Headers script- © Dynamic Drive (www.dynamicdrive.com)
* This notice must stay intact for legal use. Last updated Mar 23rd, 2004.
* Visit http://www.dynamicdrive.com/ for full source code
***********************************************/

var enablepersist="on" //Enable saving state of content structure using session cookies? (on/off)
var collapseprevious="no" //Collapse previously open content when opening present? (yes/no)

if (document.getElementById){
document.write('<style type="text/css">')
document.write('.switchcontent{display:none;}')
document.write('</style>')
}

function getElementbyClass(classname){
ccollect=new Array()
var inc=0
var alltags=document.all? document.all : document.getElementsByTagName("*")
for (i=0; i<alltags.length; i++){
if (alltags[i].className==classname)
ccollect[inc++]=alltags[i]
}
}

function contractcontent(omit){
var inc=0
while (ccollect[inc]){
if (ccollect[inc].id!=omit)
ccollect[inc].style.display="none"
inc++
}
}

function expandcontent(cid){
if (typeof ccollect!="undefined"){
if (collapseprevious=="yes")
contractcontent(cid)
document.getElementById(cid).style.display=(document.getElementById(cid).style.display!="block")? "block" : "none"
}
}

function revivecontent(){
contractcontent("omitnothing")
selectedItem=getselectedItem()
selectedComponents=selectedItem.split("|")
for (i=0; i<selectedComponents.length-1; i++)
document.getElementById(selectedComponents[i]).style.display="block"
}

function get_cookie(Name) { 
var search = Name + "="
var returnvalue = "";
if (document.cookie.length > 0) {
offset = document.cookie.indexOf(search)
if (offset != -1) { 
offset += search.length
end = document.cookie.indexOf(";", offset);
if (end == -1) end = document.cookie.length;
returnvalue=unescape(document.cookie.substring(offset, end))
}
}
return returnvalue;
}

function getselectedItem(){
if (get_cookie(window.location.pathname) != ""){
selectedItem=get_cookie(window.location.pathname)
return selectedItem
}
else
return ""
}

function saveswitchstate(){
var inc=0, selectedItem=""
while (ccollect[inc]){
if (ccollect[inc].style.display=="block")
selectedItem+=ccollect[inc].id+"|"
inc++
}

document.cookie=window.location.pathname+"="+selectedItem
}

function do_onload(){
uniqueidn=window.location.pathname+"firsttimeload"
getElementbyClass("switchcontent")
if (enablepersist=="on" && typeof ccollect!="undefined"){
document.cookie=(get_cookie(uniqueidn)=="")? uniqueidn+"=1" : uniqueidn+"=0" 
firsttimeload=(get_cookie(uniqueidn)==1)? 1 : 0 //check if this is 1st page load
if (!firsttimeload)
revivecontent()
}
}


if (window.addEventListener)
window.addEventListener("load", do_onload, false)
else if (window.attachEvent)
window.attachEvent("onload", do_onload)
else if (document.getElementById)
window.onload=do_onload

if (enablepersist=="on" && document.getElementById)
window.onunload=saveswitchstate

</script>


<link rel="stylesheet" type="text/css" href="balloontip.css" />

<script type="text/javascript" src="balloontip.js">

/***********************************************
* Rich HTML Balloon Tooltip- © Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/

</script>

<style type="text/css">
.menutitle{
cursor:pointer;
margin-bottom: 5px;
background-color:#ECECFF;
color:#000000;
width:140px;
padding:2px;
text-align:center;
font-weight:bold;
/*/*/border:1px solid #000000;/* */
}

.submenu{
margin-bottom: 0.5em;
}
</style>

<script type="text/javascript">

/***********************************************
* Switch Menu script- by Martial B of http://getElementById.com/
* Modified by Dynamic Drive for format & NS4/IE4 compatibility
* Visit http://www.dynamicdrive.com/ for full source code
***********************************************/

var persistmenu="yes" //"yes" or "no". Make sure each SPAN content contains an incrementing ID starting at 1 (id="sub1", id="sub2", etc)
var persisttype="sitewide" //enter "sitewide" for menu to persist across site, "local" for this page only

if (document.getElementById){ //DynamicDrive.com change
document.write('<style type="text/css">\n')
document.write('.submenu{display: none;}\n')
document.write('</style>\n')
}

function SwitchMenu(obj){
	if(document.getElementById){
	var el = document.getElementById(obj);
	var ar = document.getElementById("masterdiv").getElementsByTagName("span"); //DynamicDrive.com change
		if(el.style.display != "block"){ //DynamicDrive.com change
			for (var i=0; i<ar.length; i++){
				if (ar[i].className=="submenu") //DynamicDrive.com change
				ar[i].style.display = "none";
			}
			el.style.display = "block";
		}else{
			el.style.display = "none";
		}
	}
}

function get_cookie(Name) { 
var search = Name + "="
var returnvalue = "";
if (document.cookie.length > 0) {
offset = document.cookie.indexOf(search)
if (offset != -1) { 
offset += search.length
end = document.cookie.indexOf(";", offset);
if (end == -1) end = document.cookie.length;
returnvalue=unescape(document.cookie.substring(offset, end))
}
}
return returnvalue;
}

function onloadfunction(){
if (persistmenu=="yes"){
var cookiename=(persisttype=="sitewide")? "switchmenu" : window.location.pathname
var cookievalue=get_cookie(cookiename)
if (cookievalue!="")
document.getElementById(cookievalue).style.display="block"
}
}

function savemenustate(){
var inc=1, blockid=""
while (document.getElementById("sub"+inc)){
if (document.getElementById("sub"+inc).style.display=="block"){
blockid="sub"+inc
break
}
inc++
}
var cookiename=(persisttype=="sitewide")? "switchmenu" : window.location.pathname
var cookievalue=(persisttype=="sitewide")? blockid+";path=/" : blockid
document.cookie=cookiename+"="+cookievalue
}

if (window.addEventListener)
window.addEventListener("load", onloadfunction, false)
else if (window.attachEvent)
window.attachEvent("onload", onloadfunction)
else if (document.getElementById)
window.onload=onloadfunction

if (persistmenu=="yes" && document.getElementById)
window.onunload=savemenustate

</script>
	

<style type="text/css">
.matrix { font-family:Lucida Console, Courier, Monotype; font-size:10pt; text-align:center; width:10px; padding:0px; margin:0px;}
</style>

<script type="text/javascript" language="JavaScript">

<!--
var rows=11; // must be an odd number
var speed=5; // lower is faster
var reveal=2; // between 0 and 2 only. The higher, the faster the word appears
var effectalign="default" //enter "center" to center it.

/***********************************************
* The Matrix Text Effect- by Richard Womersley (http://www.mf2fm.co.uk/rv)
* This notice must stay intact for use
* Visit http://www.dynamicdrive.com/ for full source code
***********************************************/

var w3c=document.getElementById && !window.opera;;
var ie45=document.all && !window.opera;
var ma_tab, matemp, ma_bod, ma_row, x, y, columns, ma_txt, ma_cho;
var m_coch=new Array();
var m_copo=new Array();
window.onload=function() {
	if (!w3c && !ie45) return
  var matrix=(w3c)?document.getElementById("matrix"):document.all["matrix"];
  ma_txt=(w3c)?matrix.firstChild.nodeValue:matrix.innerHTML;
  ma_txt=" "+ma_txt+" ";
  columns=ma_txt.length;
  if (w3c) {
    while (matrix.childNodes.length) matrix.removeChild(matrix.childNodes[0]);
    ma_tab=document.createElement("table");
    ma_tab.setAttribute("border", 0);
    ma_tab.setAttribute("align", effectalign);
    ma_tab.style.backgroundColor="#000000";
    ma_bod=document.createElement("tbody");
    for (x=0; x<rows; x++) {
      ma_row=document.createElement("tr");
      for (y=0; y<columns; y++) {
        matemp=document.createElement("td");
        matemp.setAttribute("id", "Mx"+x+"y"+y);
        matemp.className="matrix";
        matemp.appendChild(document.createTextNode(String.fromCharCode(160)));
        ma_row.appendChild(matemp);
      }
      ma_bod.appendChild(ma_row);
    }
    ma_tab.appendChild(ma_bod);
    matrix.appendChild(ma_tab);
  } else {
    ma_tab='<ta'+'ble align="'+effectalign+'" border="0" style="background-color:#000000">';
    for (var x=0; x<rows; x++) {
      ma_tab+='<t'+'r>';
      for (var y=0; y<columns; y++) {
        ma_tab+='<t'+'d class="matrix" id="Mx'+x+'y'+y+'">&nbsp;</'+'td>';
      }
      ma_tab+='</'+'tr>';
    }
    ma_tab+='</'+'table>';
    matrix.innerHTML=ma_tab;
  }
  ma_cho=ma_txt;
  for (x=0; x<columns; x++) {
    ma_cho+=String.fromCharCode(32+Math.floor(Math.random()*94));
    m_copo[x]=0;
  }
  ma_bod=setInterval("mytricks()", speed);
}

function mytricks() {
  x=0;
  for (y=0; y<columns; y++) {
    x=x+(m_copo[y]==100);
    ma_row=m_copo[y]%100;
    if (ma_row && m_copo[y]<100) {
      if (ma_row<rows+1) {
        if (w3c) {
          matemp=document.getElementById("Mx"+(ma_row-1)+"y"+y);
          matemp.firstChild.nodeValue=m_coch[y];
        }
        else {
          matemp=document.all["Mx"+(ma_row-1)+"y"+y];
          matemp.innerHTML=m_coch[y];
        }
        matemp.style.color="#33ff66";
        matemp.style.fontWeight="bold";
      }
      if (ma_row>1 && ma_row<rows+2) {
        matemp=(w3c)?document.getElementById("Mx"+(ma_row-2)+"y"+y):document.all["Mx"+(ma_row-2)+"y"+y];
        matemp.style.fontWeight="normal";
        matemp.style.color="#00ff00";
      }
      if (ma_row>2) {
          matemp=(w3c)?document.getElementById("Mx"+(ma_row-3)+"y"+y):document.all["Mx"+(ma_row-3)+"y"+y];
        matemp.style.color="#009900";
      }
      if (ma_row<Math.floor(rows/2)+1) m_copo[y]++;
      else if (ma_row==Math.floor(rows/2)+1 && m_coch[y]==ma_txt.charAt(y)) zoomer(y);
      else if (ma_row<rows+2) m_copo[y]++;
      else if (m_copo[y]<100) m_copo[y]=0;
    }
    else if (Math.random()>0.9 && m_copo[y]<100) {
      m_coch[y]=ma_cho.charAt(Math.floor(Math.random()*ma_cho.length));
      m_copo[y]++;
    }
  }
  if (x==columns) clearInterval(ma_bod);
}

function zoomer(ycol) {
  var mtmp, mtem, ytmp;
  if (m_copo[ycol]==Math.floor(rows/2)+1) {
    for (ytmp=0; ytmp<rows; ytmp++) {
      if (w3c) {
        mtmp=document.getElementById("Mx"+ytmp+"y"+ycol);
        mtmp.firstChild.nodeValue=m_coch[ycol];
      }
      else {
        mtmp=document.all["Mx"+ytmp+"y"+ycol];
        mtmp.innerHTML=m_coch[ycol];
      }
      mtmp.style.color="#33ff66";
      mtmp.style.fontWeight="bold";
    }
    if (Math.random()<reveal) {
      mtmp=ma_cho.indexOf(ma_txt.charAt(ycol));
      ma_cho=ma_cho.substring(0, mtmp)+ma_cho.substring(mtmp+1, ma_cho.length);
    }
    if (Math.random()<reveal-1) ma_cho=ma_cho.substring(0, ma_cho.length-1);
    m_copo[ycol]+=199;
    setTimeout("zoomer("+ycol+")", speed);
  }
  else if (m_copo[ycol]>200) {
    if (w3c) {
      mtmp=document.getElementById("Mx"+(m_copo[ycol]-201)+"y"+ycol);
      mtem=document.getElementById("Mx"+(200+rows-m_copo[ycol]--)+"y"+ycol);
    }
    else {
      mtmp=document.all["Mx"+(m_copo[ycol]-201)+"y"+ycol];
      mtem=document.all["Mx"+(200+rows-m_copo[ycol]--)+"y"+ycol];
    }
    mtmp.style.fontWeight="normal";
    mtem.style.fontWeight="normal";
    setTimeout("zoomer("+ycol+")", speed);
  }
  else if (m_copo[ycol]==200) m_copo[ycol]=100+Math.floor(rows/2);
  if (m_copo[ycol]>100 && m_copo[ycol]<200) {
    if (w3c) {
      mtmp=document.getElementById("Mx"+(m_copo[ycol]-101)+"y"+ycol);
      mtmp.firstChild.nodeValue=String.fromCharCode(160);
      mtem=document.getElementById("Mx"+(100+rows-m_copo[ycol]--)+"y"+ycol);
      mtem.firstChild.nodeValue=String.fromCharCode(160);
    }
    else {
      mtmp=document.all["Mx"+(m_copo[ycol]-101)+"y"+ycol];
      mtmp.innerHTML=String.fromCharCode(160);
      mtem=document.all["Mx"+(100+rows-m_copo[ycol]--)+"y"+ycol];
      mtem.innerHTML=String.fromCharCode(160);
    }
    setTimeout("zoomer("+ycol+")", speed);
  }
}
// -->
</script>

<style type="text/css">
.dropcontent{
width: 300px;
height: 140px;
border: 1px solid black;
background-color: #FFECC6;
display:block;
}
</style>


<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>Charts Quickstart Example</title>

<style type="text/css">
/*margin and padding on body element
  can introduce errors in determining
  element position and are not recommended;
  we turn them off as a foundation for YUI
  CSS treatments. */
body {
	margin:0;
	padding:0;
}
</style>

<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.8.1/build/fonts/fonts-min.css" />
<script type="text/javascript" src="http://yui.yahooapis.com/2.8.1/build/yahoo-dom-event/yahoo-dom-event.js"></script>
<script type="text/javascript" src="http://yui.yahooapis.com/2.8.1/build/json/json-min.js"></script>

<script type="text/javascript" src="http://yui.yahooapis.com/2.8.1/build/element/element-min.js"></script>
<script type="text/javascript" src="http://yui.yahooapis.com/2.8.1/build/datasource/datasource-min.js"></script>
<script type="text/javascript" src="http://yui.yahooapis.com/2.8.1/build/swf/swf-min.js"></script>
<script type="text/javascript" src="http://yui.yahooapis.com/2.8.1/build/charts/charts-min.js"></script>


<!--begin custom header content for this example-->
<style type="text/css">
	#chart
	{
		width: 250px;
		height: 175px;
	}

	.chart_title
	{
		display: block;
		font-size: 1.2em;
		font-weight: bold;
		margin-bottom: 0.4em;
	}
</style>
<!--end custom header content for this example-->

<!--js,css Code for ClusterLogic cSocial Feature...Critical...Starts Here-->

<!-- Sortable tables from http://yoast.com/articles/sortable-table/-->

<style type="text/css">

.odd {
 background-color: #ddd;
}
.even {
 background-color: #fff;
}

</style>

<script type="text/javascript" src="sortable.js"></script>

<!--js,css Code for ClusterLogic cSocial Feature...Critical...Ends Here-->



<!-- Make way for the Google Visualizations JS-->

<script type='text/javascript' src='http://www.google.com/jsapi'></script>
    <script type='text/javascript'>
      google.load('visualization', '1', {'packages':['annotatedtimeline']});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = new google.visualization.DataTable();
        data.addColumn('date', 'Date');
        data.addColumn('number', 'Sold Pencils');
        data.addColumn('string', 'title1');
        data.addColumn('string', 'text1');
        data.addColumn('number', 'Sold Pens');
        data.addColumn('string', 'title2');
        data.addColumn('string', 'text2');
        data.addRows([
          [new Date(2008, 1 ,1), 30000, undefined, undefined, 40645, undefined, undefined],
          [new Date(2008, 1 ,2), 14045, undefined, undefined, 20374, undefined, undefined],
          [new Date(2008, 1 ,3), 55022, undefined, undefined, 50766, undefined, undefined],
          //[new Date(2008, 1 ,4), 75284, undefined, undefined, 14334, 'Out of Stock','Ran out of stock on pens at 4pm'],
          //[new Date(2008, 1 ,5), 41476, 'Bought Pens','Bought 200k pens', 66467, undefined, undefined],
          [new Date(2008, 1 ,6), 33322, undefined, undefined, 39463, undefined, undefined]
        ]);

        var chart = new google.visualization.AnnotatedTimeLine(document.getElementById('chart_div'));
        chart.draw(data, {displayAnnotations: false});
      }
    </script>

<!-- Google Visualizations API now closed -->

<!-- Say Hi to the Source Forge Menu Scripts  -->



 
 
<!-- Consume Server: sfs-consume-6 --> 
 
  
    
    
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge"> 
    
    
    <meta name="description" content="SourceForge.net. Fast, secure and free downloads from the largest Open Source applications and software directory"> 
    
    
    <meta name="keywords" content="Open Source, Open Source Software, Development, Community, Source Code, Secure,  Downloads, Free Software"> 
    
    
    <!--title>SourceForge.net: Download and Develop Open Source Software for Free</title--> 
    <link rel="shortcut icon" href="http://a.fsdn.com/con/img/favicon.ico"> 
    
    
    <link rel="stylesheet" href="SourceForge_files/sf.css" type="text/css"> 
    
    
<style type="text/css"> 
    .Jc597a7f26d7c8082a8c40fd4e98ecaba622bb20b { display:none; }
</style> 
 
 
    
 
    
<link rel="alternate" type="application/rss+xml" title="SourceForge.net Blog" href="http://sourceforge.net/blog/feed/"> 
 
 
    
    <script src="SourceForge_files/sf.js" type="text/javascript"></script> 
    
    
<script src="SourceForge_files/top.js" type="text/javascript"></script> 
<script src="SourceForge_files/homepage.js" type="text/javascript"></script> 
 
    
    
    
    
    
        
<!-- DoubleClick Random Number  
<script type="text/javascript"> 
    var dfp_ord = Math.random() * 10000000000000000;
    var dfp_tile = 1;
    var dfp_ptile = 1;
    var adspot = '';
 
    
    var ad_page = 'index.php';
    
 
    var adid = '';
    var sponsored = '';
    var ad_topics = '';
 
    
        var page_id = 'pg_index';
    
    
        ad_prefix = 'cons_' + page_id + '_';
    
 
    var ad_logged_in = 0;
    var ad_search = 0;
    var immersion_adcode = "";
</script> 
<End DoubleClick Random Number --> 
 
<script src="SourceForge_files/cons_pg_index_p97_wrapper.js" type="text/javascript"></script> 
        
    
    
    
    <script type="text/javascript"> 
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-32013-6'], ['_trackPageview']);
 
    (function() {
        var ga = document.createElement('script');
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        ga.setAttribute('async', 'true');
        document.documentElement.firstChild.appendChild(ga);
    })();
    </script><script async="true" src="SourceForge_files/ga.js"></script> 







<!-- Say Bye to the SourceForge Menu Scripts-->

<!-- Say Hi to Google Table API-->

<script type='text/javascript' src='http://www.google.com/jsapi'></script>
    <script type='text/javascript'>
      google.load('visualization', '1', {packages:['table']});
      google.setOnLoadCallback(drawTable);
      function drawTable() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Name');
        data.addColumn('number', 'Salary');
        data.addColumn('boolean', 'Full Time Employee');
        data.addRows(4);
        data.setCell(0, 0, 'Mike');
        data.setCell(0, 1, 10000, '$10,000');
        data.setCell(0, 2, true);
        data.setCell(1, 0, 'Jim');
        data.setCell(1, 1, 8000, '$8,000');
        data.setCell(1, 2, false);
        data.setCell(2, 0, 'Alice');
        data.setCell(2, 1, 12500, '$12,500');
        data.setCell(2, 2, true);
        data.setCell(3, 0, 'Bob');
        data.setCell(3, 1, 7000, '$7,000');
        data.setCell(3, 2, true);

        var table = new google.visualization.Table(document.getElementById('table_div'));
        table.draw(data, {showRowNumber: true});
      }
    </script>


<!--Say Bye to Google Table API-->



<link rel="stylesheet" type="text/css" href="tabcontent.css" />

<script type="text/javascript" src="tabcontent.js">

/***********************************************
* Tab Content script v2.2- © Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/

</script>


<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>

<link rel="stylesheet" type="text/css" href="featuredcontentglider.css" />

<script type="text/javascript" src="featuredcontentglider.js">

/***********************************************
* Featured Content Glider script- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* Visit http://www.dynamicDrive.com for hundreds of DHTML scripts
* This notice must stay intact for legal use
***********************************************/

</script>



<style type="text/css">

/*Example CSS for the two demo scrollers*/

#pscroller1{
width: 200px;
height: 100px;
border: 1px solid black;
padding: 5px;
background-color: lightyellow;
}

#pscroller2{
width: 350px;
height: 20px;
border: 1px solid black;
padding: 3px;
}

#pscroller2 a{
text-decoration: none;
}

.someclass{ //class to apply to your scroller(s) if desired
}

</style>

<script type="text/javascript">

/*Example message arrays for the two demo scrollers*/

var pausecontent=new Array()
pausecontent[0]='<a href="http://www.javascriptkit.com">JavaScript Kit</a><br />Comprehensive JavaScript tutorials and over 400+ free scripts!'
pausecontent[1]='<a href="http://www.codingforums.com">Coding Forums</a><br />Web coding and development forums.'
pausecontent[2]='<a href="http://www.cssdrive.com" target="_new">CSS Drive</a><br />Categorized CSS gallery and examples.'

var pausecontent2=new Array()
pausecontent2[0]='<a href="http://www.news.com">News.com: Technology and business reports</a>'
pausecontent2[1]='<a href="http://www.cnn.com">CNN: Headline and breaking news 24/7</a>'
pausecontent2[2]='<a href="http://news.bbc.co.uk">BBC News: UK and international news</a>'

</script>


<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <title>Google AJAX Feed API - Simple Example</title>
    <script type="text/javascript" src="http://www.google.com/jsapi?key=ABQIAAAAAiAF3DNUNzdZwDzmj_q9NhRKa4Dnm4xzijYYLgEs70xMuVRLTBQ4dHDXmHzOPqZc-HEGB84at4o64g"></script>
    <script type="text/javascript">
 
    google.load("feeds", "1");
 
    function initialize() {
      var feed = new google.feeds.Feed("http://www.google.com/finance/company_news?q=INDEXBOM:.BSESN&output=rss");
      feed.load(function(result) {
        if (!result.error) {
          var container = document.getElementById("feed1");
          for (var i = 0; i < result.feed.entries.length; i++) {
            var entry = result.feed.entries[i];
            var div = document.createElement("div");
            div.appendChild(document.createTextNode(entry.title));
            container.appendChild(div);
          }
        }
      });
    }
    google.setOnLoadCallback(initialize);
 
    </script>


<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <title>Google AJAX Feed API - Simple Example</title>
    <script type="text/javascript" src="http://www.google.com/jsapi?key=ABQIAAAAAiAF3DNUNzdZwDzmj_q9NhRKa4Dnm4xzijYYLgEs70xMuVRLTBQ4dHDXmHzOPqZc-HEGB84at4o64g"></script>
    <script type="text/javascript">
 
    google.load("feeds", "1");
 
    function initialize() {
      var feed = new google.feeds.Feed("http://www.sebi.gov.in/SEBI.xml");
      feed.load(function(result) {
        if (!result.error) {
          var container = document.getElementById("feed2");
          for (var i = 0; i < result.feed.entries.length; i++) {
            var entry = result.feed.entries[i];
            var div = document.createElement("div");
            div.appendChild(document.createTextNode(entry.title));
            container.appendChild(div);
          }
        }
      });
    }
    google.setOnLoadCallback(initialize);
 
    </script>


<script type='text/javascript' src='http://www.google.com/jsapi'></script>
    <script type='text/javascript'>
      google.load('visualization', '1', {'packages':['annotatedtimeline']});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = new google.visualization.DataTable();
        data.addColumn('date', 'Date');
        data.addColumn('number', 'Sold Pencils');
        data.addColumn('string', 'title1');
        data.addColumn('string', 'text1');
        data.addColumn('number', 'Sold Pens');
        data.addColumn('string', 'title2');
        data.addColumn('string', 'text2');
        data.addRows([
          [new Date(2008, 1 ,1), 30000, undefined, undefined, 40645, undefined, undefined],
          [new Date(2008, 1 ,2), 14045, undefined, undefined, 20374, undefined, undefined],
          [new Date(2008, 1 ,3), 55022, undefined, undefined, 50766, undefined, undefined],
         // [new Date(2008, 1 ,4), 75284, undefined, undefined, 14334, 'Out of Stock','Ran out of stock on pens at 4pm'],
         // [new Date(2008, 1 ,5), 41476, 'Bought Pens','Bought 200k pens', 66467, undefined, undefined],
          [new Date(2008, 1 ,6), 33322, undefined, undefined, 39463, undefined, undefined]
        ]);

        var chart = new google.visualization.AnnotatedTimeLine(document.getElementById('chart_div'));
        chart.draw(data, {displayAnnotations: true});
      }
    </script>






</head>
<title>
</title>
<body>

<br/><br/><br/>

<form action="formThankyou.php" method="post">
ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="id" /><br/><br/><br/>
Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="name" /><br/><br/><br/>
Professional:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="professional" /><br/><br/><br/>
Organisation:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="organisation" /><br/><br/><br/>
LinkedIn URL:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="url" /><br/><br/><br/>
Website:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="www" /><br/><br/><br/>
<input type="submit"/>
</form>

</body>
</html>
