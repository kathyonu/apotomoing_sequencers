// search_lexigram.js affects /views/singulars/display
$(document).ready(  function() {
    $('#search_sequence_lexigrams form input#sequencetext').bind(
      'focusin',function(event) {    
        if ($('#search_sequence_lexigrams form input#sequencetext').val() === "Enter Your Data, then tab out") {
          if ($('#search_sequence_lexigrams form input#sequencetext').val() === "Please Enter Your Data, then tab out") {
            $('#search_sequence_lexigrams form input#sequencetext').val("");
          }
        }
     })
     .bind(
        'focusout',function(event) {
           $entry = $('#search_sequence_lexigrams form input#sequencetext').val();
           if ($entry.value != "") {
             if ($entry.value != "Enter Your Data, then tab out") {
               if ($entry.value != "Please Enter Your Data, then tab out") {
                 var $newsequence = document.getElementById('sequencetext');
                 var $sequencetext = $('#search_sequence_lexigrams form input#sequencetext').serialize();
                 var $sequenceSubmit = document.getElementById('sequence_submit');
                 var $search_lexigram_return_value = [];
                 $newsequence.form.onsubmit = function() { return false; };
                 $search_lexigram_return_value = $.ajax({     type: "GET",    url: "http://localhost:3000/sequences/search_lexigram",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {   alert(data);    }    }).responseText;
                 $('#search_lexigram').val($search_lexigram_return_value).show();
               }
             }
           }
         else {
           $('#search_sequence_lexigrams form input#sequencetext').val("Please Enter Your Data, then tab out");
//            $('#search_text').val("");
//            $('#search_creation').val("");
//            $('#search_complete').val("");
//            $('#search_lexigram').val("search lexigram test");
//            $('#search_singular').val("");
          }
      })    // ONE DIFFERENCE, NO COLON-SEMI
  });