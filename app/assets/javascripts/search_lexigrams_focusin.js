// FOCUSIN on '#search_sequence_lexigrams form input#sequencetext'
$(document).ready(  function() {
  $('#search_sequence_lexigrams form input#sequencetext').bind(
    'focusin',function(event) {    
      $('#search_sequence_lexigrams form input#sequencetext').val("")
    })
  });
