// flashes the box if it is empty when user tabs out
$(document).ready( function() {
    var $abba = $('.new_entry_sequence form input#sequencetext').val();
    var $baab = "";
    if ($abba === $baab) { 
      $('input#sequencetext').fadeTo(500, 0.3).delay(100).end();
      $('input#sequencetext').val("test");
      $('input#sequencetext').fadeTo(200, 1.0).end();
      $('input#sequencetext').focus();
      }
        else
      {
        $('input#sequencetext').val("");
        $('input#sequencetext').focus();
      }
  });
