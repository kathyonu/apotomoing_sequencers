$(document).ready(  function() {
  $('#search_sequence_texts form input#sequencetext').bind(
    'focusin',function(event) {
      $entry = $('#search_sequence_texts form input#sequencetext').val();
        if ($entry === "Enter Your Data, then tab out") {
          $('#search_sequence_texts form input#sequencetext').val("");
        }
        else if ($('#search_sequence_texts form input#sequencetext').val() === "Please Enter Your Data, then tab out") {
          $('#search_sequence_texts form input#sequencetext').val("");
        }
        else
        {
          $('#search_sequence_texts form input#sequencetext').focus();    }    }    )
          .bind(
            'focusout',function(event) {
              if (this.value != '') {
                if (this.value != "Enter data, then tab out") {
                  var $newsequence = document.getElementById('sequencetext');
                  var $sequencetext = $('#search_sequence_texts form input#sequencetext').serialize();
                  var $sequenceSubmit = document.getElementById('sequence_submit');
                  $newsequence.form.onsubmit = function() { return false; };
                  var $search_text_return_value = $.ajax({ type: "GET", url: "http://localhost:3000/sequences/search_text", data: $sequencetext,    async: false,   dataType: 'script', success: function(data) { alert(data);  }    }).responseText;
                  $("#search_text").val($search_text_return_value);
                  $("#search_text").show();
               }
            else
            {
              $('#search_sequence_texts form input#sequencetext').val("Please Enter Your Data, then tab out");
//              $('#search_text').val("");
//              $('#search_creation').val("");
//              $('#search_complete').val("complete test");
//              $('#search_lexigram').val("");
//              $('#search_singular').val("");
            }
          }
        }) 
    });
