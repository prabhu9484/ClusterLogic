/*jslint browser: true, white: false, onevar: false */
/*global jQuery */
jQuery(function(jq) {
    // Select text fields on focus
    jq("input[type=text]").focus(function(){
        this.select();
    });
    
    // Setup the OS selector
    var cur_os = jq('#cur_os');
    var sel_os = jq('#sel_os');
    var os_select = jq('#os_select');
    sel_os.css('display','none');
    jq('#sel_os input[type=submit]').hide();
    cur_os.css('display','inline');
    cur_os.click(function(e) {
        e.preventDefault();
        cur_os.css('display','none');
        sel_os.css('display','inline');
    });
    
    jq('#sel_os select').change(function(ev) {
        os_select.parents('form').submit();
    });
});

