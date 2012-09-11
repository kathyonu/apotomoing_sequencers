// FOCUSIN on #anagram form input#DESCRIPTION
$(document).ready(  function() {
       $('#anagram form input#description').bind({
       focusin:function(event) {
       $('#anagramListDisplay').hide();
       $('#sequencerWidgetDisplay').hide();
       $('.sequenceCreatedWidgetDisplay').show();
       }
       });
       });

