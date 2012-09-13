$(document).ready(  function() {
  $('#search_sequence_completes form input#sequencetext').bind(
    'focusin',function(event) {    
      if ($('#search_sequence_completes form input#sequencetext').val() === "Enter Your Data, then tab out") {
        $('#search_sequence_completes form input#sequencetext').val("");
      }
      else if ($('#search_sequence_completes form input#sequencetext').val() === "Please Enter Your Data, then tab out") {
        $('#search_sequence_completes form input#sequencetext').val("");
      }
      else
      {
      $('#search_sequence_completes form input#sequencetext').focus();
      }
    }).bind(
      'focusout',function(event) {
          if (this.value != "") {
            if (this.value != "Enter Your Data, then tab out") {
              if (this.value != "Please Enter Your Data, then tab out") {
                var $newsequence = document.getElementById('sequencetext');
                var $sequencetext = $('#search_sequence_completes form input#sequencetext').serialize();
                var $sequenceSubmit = document.getElementById('sequence_submit');
                $newsequence.form.onsubmit = function() { return false; };
//              var $search_text_return_value = $.ajax({     type: "GET",    url: "http://localhost:3000/sequences/search_text",        data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
//              $('#search_text').val($search_text_return_value);
//              var $search_creation_return_value = $.ajax({ type: "GET",    url: "http://localhost:3000/sequences/search_creation",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
//              $('#search_creation').val($search_creation_return_value);
                var $search_complete_return_value = $.ajax({ type: "GET",    url: "http://localhost:3000/sequences/search_complete",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
                $('#search_complete').val($search_complete_return_value);
                $('#search_complete').show();
//              var $search_lexi_return_value = $.ajax({     type: "GET",    url: "http://localhost:3000/sequences/search_lexigram",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
//              $('#search_lexigram').val($search_lexi_return_value);
//              var $search_singular_return_value = $.ajax({ type: "GET",    url: "http://localhost:3000/sequences/search_singular",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
//              $('#search_singular').val($search_singular_return_value);
              }
            }
          }
          else
          {
            $('#search_sequence_completes form input#sequencetext').val("Please Enter Your Data, then tab out");
//            $('#search_text').val("");
//            $('#search_creation').val("");
//            $('#search_complete').val("search complete test");
//            $('#search_lexigram').val("");
//            $('#search_singular').val("");
          }
    });
  });