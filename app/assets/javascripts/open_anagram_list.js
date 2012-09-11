// OPEN anagram list
$(document).ready(  function() {
       $('input#anagramListOpen').click(
       function($e) {
       $('input#anagramListClose').show();
       $('#anagramListDisplay').show();
       $('.sequenceCreatedWidgetDisplay').hide();
       }
       );
       $('input#anagramListClose').click(
       function($e) {
       $('#anagramListDisplay').hide();
       $('.sequenceCreatedWidgetDisplay').show();
       }
       );
       });