// "Very Simple Image Gallery" Plugin for Joomla 1.5 - Version 1.5.5
// License: http://www.gnu.org/copyleft/gpl.html
// Author: Andreas Berger - http://www.bretteleben.de
// Copyright (c) 2009 Andreas Berger - andreas_berger@bretteleben.de
// Project page and Demo at http://www.bretteleben.de
// ***Last update: 2010-02-25***

//dom
function vsig_dom(obj){return document.getElementById(obj);}

//switch without reload
function switchimg(t_ident,t_ident_b) {
	//topimage
	var topimg="topimg"+t_ident_b[2];
	//replace &#39; with ' in alt-title
	t_ident[6] = t_ident[6].replace(/&#39;/g, "'");
	//replace &amp;amp; with &amp; in alt-title
	t_ident[6] = t_ident[6].replace(/&amp;/g, "&");
	//switch caption
	var t_cap=vsig_dom(topimg).parentNode.getElementsByTagName("div");
	if(t_cap.length>=1){
		t_cap[0].innerHTML=(t_ident[1]!=""||t_ident[2]!="")?("<span>"+t_ident[1]+"</span><span>"+t_ident[2]+"</span>"):"";
	}
	//switch link
	if(typeof(vsig_dom(topimg).parentNode.href)!="undefined"){
		vsig_dom(topimg).parentNode.href=t_ident[3];
		vsig_dom(topimg).parentNode.title=t_ident[4];
		vsig_dom(topimg).parentNode.target=t_ident[5];
		}
	//switch image
	vsig_dom(topimg).src=t_ident_b[0]+t_ident[0];
	vsig_dom(topimg).alt=t_ident[6];
	vsig_dom(topimg).title=t_ident[6];
}

//switch set
function switchset(s_ident,s_start,s_number) {
	var ev_ident=eval(s_ident);
	var ev_identb=eval(s_ident+"_b");
	var sets_total=Math.ceil(ev_ident.length/s_number);
	var sets_current=s_start/s_number+1;
	//button back
	vsig_dom('bback'+s_ident).href = "#g_"+s_ident;
	if(sets_current>=2){vsig_dom('bback'+s_ident).onclick = function(){switchset(s_ident,(s_start-s_number)*1,s_number);return false;}}
	else{vsig_dom('bback'+s_ident).onclick = function(){return false;}}
	//button forward
	vsig_dom('bfwd'+s_ident).href = "#g_"+s_ident;
	if(sets_current<=sets_total-1){vsig_dom('bfwd'+s_ident).onclick = function(){switchset(s_ident,(s_start+s_number)*1,s_number);return false;}}
	else{vsig_dom('bfwd'+s_ident).onclick = function(){return false;}}
	//set counter
	vsig_dom('counter'+s_ident).innerHTML="&nbsp;"+sets_current+"/"+sets_total;
	//switch main image
	if(s_start<=ev_ident.length&&s_start>=0){
		switchimg(ev_ident[s_start],ev_identb);
	}
	if(s_number>=2){
		//sitch thumbs
		var a;
		for (a=1;a<=s_number;a++){
			if(ev_ident[s_start+a-1]){
				var b=eval(s_start+a-1);
				var obj=vsig_dom('thb'+s_ident+'_'+a);
				obj.style.visibility="visible";
				obj.getElementsByTagName("img")[0].src = ev_identb[0]+ev_identb[1]+ev_ident[b][7];
				obj.getElementsByTagName("img")[0].alt = ev_ident[b][6];
				obj.getElementsByTagName("a")[0].title = ev_ident[b][6];
				obj.getElementsByTagName("a")[0].href =  ev_identb[3].replace(/&amp;/g, "&")+b;
				obj.getElementsByTagName("a")[0].b=b;
				obj.getElementsByTagName("a")[0].onclick = function(){switchimg(ev_ident[this.b],ev_identb);return false;}
			}
			else{
				vsig_dom('thb'+s_ident+'_'+a).style.visibility="hidden";
			}
		}
	}
}