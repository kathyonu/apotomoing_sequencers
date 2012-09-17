// processes singular sequence from any entry, then searches that sequence in the database
$(document).ready(  function() {
  'focusin',function(event) {
    $('#search_sequence_singulars form input#sequencetext').val("")
    .bind(
      'focusout',function(event) {
         var $entry = $('#search_sequence_singulars form input#sequencetext').val()
         if ($entry != '') {
           if ($entry != "Enter Your Data, then tab out") {
             if ($entry != "Please Enter Your Data, then tab out") {
               var $newsequence = document.getElementById('sequencetext');
               var $sequencetext = $('#search_sequence_singulars form input#sequencetext').serialize();
               var $sequenceSubmit = document.getElementById('singular_search_submit');
               $newsequence.form.onsubmit = function() { return false; };
               var $search_singular_return_value = $.ajax({ type: "get", url: "http://localhost:3000/sequences/search_singular", data: $sequencetext, async: false, dataType: 'script', success: function(data) { alert(data); }  }).responseText;
               $('#search_singular').append($search_singular_return_value).show();
               }
             }
           }
        else {
          $('#search_sequence_singulars form input#sequencetext').val("Please Enter Your Data, then tab out");
          //            $('#search_text').val("");
          //            $('#search_creation').val("");
          //            $('#search_complete').val("");
          //            $('#search_lexigram').val("");
          //            $('#search_singular').val("search singular test");
          }
      })
    }
  });
