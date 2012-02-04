/*jslint browser: true, white: false, onevar: false */
/*global jQuery */
var HomePage = {
    jq: jQuery,
    
    initBlogTwitter: function() {
        var container = this.jq('.blog-container');
        function tabswitch() {
            container.toggleClass('blog-container');
            container.toggleClass('twitter-container');
            return false;
        }
        this.jq('.blog-container .tab-nav a').click(tabswitch);
    },
    
    hotBox: {
        EFFECTTIME: 1000,
        CONTAINERHEIGHT: 382,
        jq: jQuery,
        
        handleClick: function(target, animated){
            HomePage.hotBox.clearAll();
            var itemCount = 0;
        
            jQuery('.cats li').each(function(i, val){
                if(jQuery(this).get(0) === target) {
                    itemCount = i;
                }
            });
        
            jQuery(target).addClass('cur');
            HomePage.hotBox.scrollToItem(itemCount, animated);
        },
        
        switchInit: function(){
            var self = this;
            self.jq('.cats li').click(function(e){
                e.preventDefault();
                HomePage.hotBox.handleClick(e.currentTarget, true);
            });
            
            HomePage.hotBox.handleClick(self.jq('.cats li.cur')[0], false);
        },
        
        clearAll: function(){
            var self = this;
            this.jq('.cats li').each(function(){
                   self.jq(this).removeClass('cur');
            });
        },
        
        scrollToItem: function(newItem, animated){
            var newStyle = 0;
            if(newItem !== 0) {
                newStyle = (newItem)*(HomePage.hotBox.CONTAINERHEIGHT*-1)+'px';
            }
            if (animated) {
                this.jq('#hotB-carousel-body').animate({top: newStyle}, HomePage.hotBox.EFFECTTIME);
            } else {
                this.jq('#hotB-carousel-body').css({top: newStyle});
            }
        }
    }
};

jQuery(function(jq) {
    var hp = HomePage;
    hp.initBlogTwitter();
    hp.hotBox.switchInit();
    jq('.ireview').ireview();
});
