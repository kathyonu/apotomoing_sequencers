// FOCUSIN FOCUSOUT on '#search_sequence_singulars form input#sequencetext'
// processes singular sequence from any entry, then searches that sequence in the database
$(document).ready(  function() {
  'focusin',function(event) {
    $('#search_sequence_singulars form input#sequencetext').val("")
    .bind(
      'focusout',function(event) {
        var $entry = $('#search_sequence_singulars form input#sequencetext').val();
        if ($entry != "") {
          if ($entry != "Please Enter Your Data, then tab out") {
            var $newsequence = document.getElementById('sequencetext');
            var $sequencetext = $('#search_sequence_singulars form input#sequencetext').serialize();
            var $sequenceSubmit = document.getElementById('singulars_search_submit');
            var $search_singular_return_value = [];
            $newsequence.form.onsubmit = function() { return false; };
            $sequenceSubmit.form.onsubmit = function() { return false; };
            $search_singular_return_value = $.ajax({ type: "get", url: "http://localhost:3000/sequences/search_singular", data: $sequencetext, async: false, dataType: 'script', success: function(data) { alert(data); }  }).responseText;
            $('#search_singular').append($search_singular_return_value).show();
          }
        else {
          $('#search_sequence_singulars form input#sequencetext').val(["Please Enter Your Data, then tab out"]);
          }
        }
      })
    }
  });
