// FOCUSIN on '.new_edit form input#sequencetext'
$(document).ready(  function() {
    $('.sequence_edit form input#sequencetext').bind(
      'focusin',function(event) {    
        if ($('.sequence_edit form input#sequencetext').val() === "Enter data, then tab out") {
        $('.sequence_edit form input#sequencetext').val("");
      }
      else  if ($('.sequence_edit form input#sequencetext').val() === "Please Enter Your Data") {
        $('.sequence_edit form input#sequencetext').val("");
      }
      else
      {
      $('.sequence_edit form input#sequencetext').focus();    }    }    )
      .bind(
        'focusout',function(event) {
          if (this.value != '') {
            if (this.value != "Enter data, then tab out") {
              var $sequencetext = $('.sequence_edit form input#sequencetext').serialize();
              var $newsequence = document.getElementById('sequencetext');
              var $sequenceSubmit = document.getElementById('sequencetext_submit');
              $newsequence.form.onsubmit = function() { return false; };
              $sequenceSubmit.form.submit = function() { return false; };
              var $text_return_value = $.ajax({		type: "GET",    url: "http://localhost:3000/sequences/text_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
              $('input#sequence_sequence_text').val($text_return_value);             
              var $creation_return_value = $.ajax({	type: "GET",    url: "http://localhost:3000/sequences/creation_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
              $('input#sequence_sequence_creation').val($creation_return_value);
              var $complete_return_value = $.ajax({	type: "GET",    url: "http://localhost:3000/sequences/complete_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
              $('input#sequence_sequence_complete').val($complete_return_value);
              var $lexi_return_value = $.ajax({		type: "GET",    url: "http://localhost:3000/sequences/lexigram_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
              $('input#sequence_sequence_lexigram').val($lexi_return_value);
              var $singular_return_value = $.ajax({	type: "GET",    url: "http://localhost:3000/sequences/singular_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
              $('input#sequence_sequence_singular').val($singular_return_value);
              $('form input#sequence_sequence_lense').focus();
            }
          }
          else
          {
            $('.sequence_edit form input#sequencetext').val('Please Enter Your Data');
//            $('input#sequence_text').val("");
  //          $('input#sequence_creation').val("");
    //        $('input#sequence_complete').val("");
      //      $('input#sequence_lexigram').val("");
        //    $('input#sequence_singular').val("");
          //  $('input#sequence_lense').val("");
          }
    });
  });

