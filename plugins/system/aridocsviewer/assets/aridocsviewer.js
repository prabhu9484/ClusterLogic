(function($) {
	$(function($) {
		$(".adv-container").each(function() {
			$(this).find("IFRAME").bind("load", function() {
				$(this).closest(".adv-container").removeClass("adv-loading");
			});
		});
	});
})(jQuery);