// FOCUSIN on '#search_sequence_creations form input#sequencetext'
$(document).ready(  function() {
  $('#search_sequence_creations form input#sequencetext').bind(
    'focusin',function(event) {    
      $('#search_sequence_creations form input#sequencetext').val("")
    })
  });