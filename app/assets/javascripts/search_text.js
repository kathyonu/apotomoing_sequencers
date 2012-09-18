// FOCUSIN FOCUSOUT on '#search_sequence_texts form input#sequencetext'
$(document).ready(  function() {
  'focusin',function(event) {
    $('#search_sequence_texts form input#sequencetext').val("")
    .bind(
      'focusout',function(event) {
        var $entry = $('#search_sequence_texts form input#sequencetext').val();
        if ($entry != "") {
          if ($entry != "Please Enter Your Data, then tab out") {
            var $newsequence = document.getElementById('sequencetext');
            var $sequencetext = $('#search_sequence_texts form input#sequencetext').serialize();
            var $sequenceSubmit = document.getElementById('texts_search_submit');
            var $search_text_return_value = [];
            $newsequence.form.onsubmit = function() { return false; };
            $sequenceSubmit.form.onsubmit = function() { return false; };
            $search_text_return_value = $.ajax({ type: "GET", url: "http://localhost:3000/sequences/search_text", data: $sequencetext,    async: false,   dataType: 'script', success: function(data) { alert(data);  }    }).responseText;
            $('#search_text').val($search_text_return_value).show();
          }
        }
      else {
        $('#search_sequence_texts form input#sequencetext').val("Please Enter Your Data, then tab out");
        }
      })
    }
  });
