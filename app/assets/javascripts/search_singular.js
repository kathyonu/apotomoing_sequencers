// processes singular sequence from any entry, then searches that sequence in the database
$(document).ready(  function() {
  'focusin',function(event) {
    $('#search_sequence_singulars form input#sequencetext').val("")
      .bind(
        'focusout',function(event) {
          if (this.value != '') {
            if (this.value != "Enter Your Data, then tab out") {
              if (this.value != "Please Enter Your Data, then tab out") {
                var $newsequence = document.getElementById('sequencetext');
                var $sequencetext = $('#search_sequence_singulars form input#sequencetext').serialize();
                var $sequenceSubmit = document.getElementById('singular_search_submit');
                $newsequence.form.onsubmit = function() { return false; };
                var $search_singular_return_value = $.ajax({ type: "get", url: "http://localhost:3000/sequences/search_singular", data: $sequencetext, async: false, dataType: 'script', success: function(data) { alert(data); }  }).responseText;
                  $('#search_singular').append( $search_singular_return_value );
                  $('#search_singular').show();
               // $("#search_singular").hide();
               // $("#search_singular").val($search_singular_return_value);
              }
            }
          }
          else
          {
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
