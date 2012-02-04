document.write('<script type="text/javascript" src="' + _jive_base_url + '/dwr/engine.js" ></script>');
document.write('<script type="text/javascript" src="' + _jive_base_url + '/dwr/interface/Clearvote.js" ></script>');

var inProgress = false;

var ClearvoteObj = {

    addVoteUp: function(objectType, objectID) {
        if(inProgress) {
            return;
        }

        inProgress = true;

        // hide voting buttons
        $('clearvote-vote-buttons-'+objectID).style.display = 'none';

        // show saving message
        $('clearvote-saving-message-'+objectID).innerHTML = '<img src="' + _jive_base_url + '/plugins/digg-style-voting/images/vote-saving.gif" border="0" alt="Saving..." />';
        $('clearvote-saving-message-'+objectID).style.display = '';

        // dwr call to add rating
        Clearvote.addVote(objectType, objectID, true, {
            callback:function() {
                ClearvoteObj.update(objectType, objectID);

                // changed saving message to saved
                $('clearvote-saving-message-'+objectID).innerHTML = '<img src="' + _jive_base_url + '/plugins/digg-style-voting/images/vote-saved.gif" border="0" alt="Saved" />';

                // hide saved message
                Effect.Fade('clearvote-saving-message-'+objectID);

                inProgress = false;
            }
        });
    },

    addVoteDown: function(objectType, objectID) {
        if(inProgress) {
            return;
        }

        inProgress = true;

        // hide voting buttons
        $('clearvote-vote-buttons').style.display = 'none';

        // show saving message
        $('clearvote-saving-message').innerHTML = '<img src="' + _jive_base_url + '/plugins/digg-style-voting/images/vote-saving.gif" border="0" alt="Saving..." />';
        $('clearvote-saving-message').style.display = '';

        // dwr call to add rating
        Clearvote.addVote(objectType, objectID, false, {
            callback:function() {
                ClearvoteObj.update(clearvoteObjectType, clearvoteObjectID);

                // changed saving message to saved
                $('clearvote-saving-message').innerHTML = '<img src="' + _jive_base_url + '/plugins/digg-style-voting/images/vote-saved.gif" border="0" alt="Saved" />';

                // hide saved message
                Effect.Fade('clearvote-saving-message');

                inProgress = false;
            }
        });
    },

    update: function(objectType, objectID) {
        Clearvote.getVoteScore(objectType, objectID, {
            callback:function(data) {
                ClearvoteObj.updateVoteScore(data, objectID);
                ClearvoteObj.updateHighestVoteLink(data, objectID);
            }
        });
    },

    updateVoteScore: function(data, objectID) {
        // update the vote count based on the new count
        $('clearvote-count-'+objectID).innerHTML= data;
        if(data == 1){
	        $('clearvote-votes-name-'+objectID).innerHTML = "vote";
        }else{
	        $('clearvote-votes-name-'+objectID).innerHTML = "votes";
        }
    },

    updateHighestVoteLink: function(data, objectID) {
        // update the vote count based on the new count
//        if($('highest-clearvote-icon-'+objectID) != null) {
//            $('highest-clearvote-icon-'+objectID).innerHTML = "";
//        }
//        alert('highest-clearvote-icon-'+objectID);
        if($('highest-clearvote-count') != null && $('highest-clearvote-count').innerHTML != null
                && $('highest-clearvote-count').innerHTML < data){
            $('highest-clearvote-link').innerHTML = '<span class="jive-icon-med jive-icon-rate-avg-on" >' +
                       '</span><a style="color: rgb(85, 85, 85);" href="' + _jive_base_url + '/message/' + objectID + '#' + objectID + '" >Go to most popular answer</a>';
            $('highest-clearvote-count').innerHTML = data;

//            if($('highest-clearvote-icon-'+objectID) != null) {
//                $('highest-clearvote-icon-'+objectID).innerHTML = '<span class="jive-icon-med jive-icon-rate-avg-on" ></span>';
//            }
        }
    }

};