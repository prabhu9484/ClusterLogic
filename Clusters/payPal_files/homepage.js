function hideAllHomePageTabs() {
	$j("div.blog-content").hide();
	$j(".blog-tabs a").removeClass('selected');
	
}
function showHomePageTab(link) {
	hideAllHomePageTabs();
	$j(link).addClass('selected');
	$j('#' + link.id + '-content').show();
}
function pageLoad() {
    $j(".blog-tabs a").click(function(event) {
        showHomePageTab(event.target);
    	return false;
    });
    $j(".blog-tabs .selected").each(function (idx) {
    	showHomePageTab(this);}
    );

}