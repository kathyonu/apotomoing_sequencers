// FOCUSIN on '#search_sequence_lexigrams form input#sequencetext'
// search_lexigram.js affects /views/lexigrams/display
$(document).ready(  function() {
  'focusin',function(event) {    
    $('#search_sequence_lexigrams form input#sequencetext').val("")
    .bind(
      'focusout',function(event) {
        var $entry = $('#search_sequence_lexigrams form input#sequencetext').val();
        if ($entry != "") {
          if ($entry != "Please Enter Your Data, then tab out") {
            var $newsequence = document.getElementById('sequencetext');
            var $sequencetext = $('#search_sequence_lexigrams form input#sequencetext').serialize();
         // var $sequenceSubmit = document.getElementById('sequence_submit');
            var $sequenceSubmit = document.getElementById('lexigrams_search_submit');
            var $search_lexigram_return_value = [];
            $newsequence.form.onsubmit = function() { return false; };
            $sequenceSubmit.form.onsubmit = function() { return false; };
            $search_lexigram_return_value = $.ajax({     type: "GET",    url: "http://localhost:3000/sequences/search_lexigram",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {   alert(data);    }    }).responseText;
            $('#search_lexigram').val($search_lexigram_return_value).show();
          }
        }
      else {
        $('#search_lexigram').val("Please Enter Your Data, then tab out");
        }
      })
      }
    });