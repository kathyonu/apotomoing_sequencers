/////////// INPUT SEQUENCETEXT, processes the focusin and focusout and fires the sequencers with ajax calls
// FOCUSIN 
// FOCUSOUT 
///////////
$(document).ready(  function() {
  'focusin',function(event) {
     $('#search_sequence_creations form input#sequencetext').val("")
     .bind(
      'focusout',function(event) {
        var $entry = $('#search_sequence_creations form input#sequencetext').val();
        if ($entry != "") {
          if ($entry != "Please Enter Your Data, then tab out") {
          var $newsequence = document.getElementById('sequencetext');
          var $sequencetext = $('#search_sequence_creations form input#sequencetext').serialize();
          var $sequenceSubmit = document.getElementById('creations_search_submit');
          var $search_creation_return_value = [];
          $newsequence.form.onsubmit = function() { return false; };
          $sequenceSubmit.form.onsubmit = function() { return false; };
          $search_creation_return_value = $.ajax({type: "GET",    url: "http://localhost:3000/sequences/search_creation",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
          $('#search_creation').val($search_creation_return_value).show();
          }
        }
      else {
        $('#search_sequence_creations form input#sequencetext').val("Please Enter Your Data, then tab out");
        }
      })
    }
  });
