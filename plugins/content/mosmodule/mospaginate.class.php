<?php
/**
* @version 
* @package MosModule - COAddOns for Mambo & Jommla - Mambot
* @copyright (C) 2008 ongetc.com
* @info ongetc@ongetc.com http://ongetc.com
* @license GNU/GPL http:/ongetc.com/gpl.html.
*/ 
defined( '_VALID_MOS' ) or die( 'Direct Access to this location is not allowed.' );

// mosPaginate class
class mosPaginate {
var $thispage;

  function mosPaginate($thispage) {
    $this->thispage=$thispage;
  }

  function pageNav($rows, $start, $per_page, $clsprefix) {
    if (!$per_page) $per_page=5;
    $thispage=$this->thispage;
    $findstart=strpos($thispage, 'start');
    if ($findstart>0) $thispage = substr($thispage,0,$findstart-1);

    $num = count($rows);
    $showeachside = 5; //  Number of items to show either side of selected page
    $max_pages = ceil($num / $per_page); // Number of pages
    $cur = ceil($start / $per_page); // Current page number

    $prevdot=$pagenum=$sufdot="";

    $firstpagelink=$this->pageLink(($start>1),$thispage,"<< First",1);
    $lastpage=ceil(($max_pages-1)*$per_page)+1;
    $lastpagelink=$this->pagelink(($start<>$lastpage),$thispage,"Last >>",$lastpage);
    $prevpage = $start-$per_page; 
    $prevpagelink=$this->pageLink(($prevpage>=0),$thispage,"< Previous",$prevpage);

    $eitherside = ($showeachside * $per_page);
    if ($start+1 > $eitherside) { $prevdot = " .... "; }  
    $pg=1;
    for ($y=1;$y<$num;$y+=$per_page) {   
      $class=($y==$start)?$clsprefix.'PAGESelected':'';
      if (($y > ($start - $eitherside)) && ($y < ($start + $eitherside))) $pagenum.=$this->pageLink(true, $thispage, $pg, $y, $class);
      $pg++;
    }
    if (($start+$eitherside)<$num) { $sufdot = " .... "; }

    $nextpage=$start+$per_page;
    $nextpagelink=$this->pageLink(($nextpage<$num), $thispage, "Next >", $nextpage);

    $navhdr = '<div id="'.$clsprefix.'NAV"><hr class="'.$clsprefix.'HR" />';
    $navlink = $firstpagelink.$prevpagelink.$prevdot.$pagenum.$sufdot.$nextpagelink.$lastpagelink."<br />"; 
    $navtext = 'Page '.$cur.' of '.$max_pages.' ( '.$num.' Articles )';  // Page 1 of 0 ( 0 articles )
    $navfoot = '<hr class="'.$clsprefix.'HR" /></div>';
    return $navhdr.$navlink.$navtext.$navfoot;
  }

  function pageLink($showlink=true, $thisurl, $linktext, $linkvalue="", $linkclass="") {
    ($linkclass) ? $lclass=" class=\"$linkclass\"" :$lclass="";
    ($showlink==true) 
      ? $output = "<a $lclass href=\"$thisurl".($linkvalue>0?("&amp;start=").$linkvalue:"")."\">$linktext</a>"
      : $output = $linktext;
  return "&nbsp;".sefRelToAbs($output)."&nbsp;";
  }
} // MosPaginate class
?>