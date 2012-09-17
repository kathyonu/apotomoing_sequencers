// flashes and sets the text for the user entry box in sequences/new.html.haml
$(document).ready(  function() {	
   'focusout',function(event) {
      var $abba = $('.new_entry_sequence form input#sequencetext').val();
      if ($abba = "") {
        $('.new_entry_sequence form input#sequencetext').fadeTo(500, 0.3).delay(100).end();
        $('.new_entry_sequence form input#sequencetext').val("Enter data, then tab out");
        $('.new_entry_sequence form input#sequencetext').fadeTo(200, 1.0);
      }
      else
      {
        $('.new_entry_sequence form input#sequencetext').val("");
        $('.new_entry_sequence form input#sequencetext').focus();
      }
    }
  });

//= require new_sequence_focusout_empty_reminder
