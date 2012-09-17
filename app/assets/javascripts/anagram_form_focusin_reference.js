// FOCUSIN on #anagram form input#REFERENCE
$(document).ready(  function() {
       $('#anagram form input#reference').bind({
       focusin:function(event) {
       $('#anagramListDisplay').hide();
       $('#sequencerWidgetDisplay').hide();
       $('.sequenceCreatedWidgetDisplay').show();
       }
       });
       });
