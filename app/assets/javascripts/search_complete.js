// processes complete sequence from any entry, then searches that sequence in the database
$(document).ready(  function() {
  'focusin',function(event) {
    $('#search_sequence_completes form input#sequencetext').val("").bind(
      'focusout',function(event) {
        if ($entry != "") {
          if ($entry != "Please Enter Your Data, then tab out") {
            var $entry = $('#search_sequence_completes form input#sequencetext').val();
            var $sequencetext = $('#search_sequence_completes form input#sequencetext').serialize();
            var $sequenceSubmit = document.getElementById('completes_search_submit');
            var $search_complete_return_value = [];
            $sequencetext.form.onsubmit = function() { return false; };
            $sequenceSubmit.form.onsubmit = function() { return false; };
            $search_complete_return_value = $.ajax({ type: "get", url: "http://localhost:3000/sequences/search_complete", data: $sequencetext, async: false, dataType: 'script', success: function(data) { alert(data); }  }).responseText;
            $('#search_complete').append($search_complete_return_value).show();
          }
        }
      else {
        $('#search_sequence_completes form input#sequencetext').val("Please Enter Your Data, then tab out");
        }
      })
    }
  });