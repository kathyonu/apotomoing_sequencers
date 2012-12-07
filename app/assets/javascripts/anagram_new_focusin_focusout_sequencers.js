/////////// these two are in one function
// FOCUSIN  on .new_entry_anagram > form > input#sequencetext
// FOCUSOUT generates the five sequences to sequence_created widget form, and the anagram_text to the anagram widget form.
/////////// the two above are in one function
$(document).ready(  function() {
    $(".new_entry_anagram > form > input#sequencetext").bind(
  //$(".new_entry_anagram > form > input#sequencetext").bind(
      'focusin',function(event) {    
        if ($(".new_entry_anagram > form > input#sequencetext").val() === "Enter data, then tab out") {
        $(".new_entry_anagram > form > input#sequencetext").val("");
      }
      else  if ($(".new_entry_anagram > form > input#sequencetext").val() === "Please Enter Your Data") {
        $('.new_entry_anagram > form > input#sequencetext').val("");
      }
      else
      {
      $(".new_entry_anagram > form > input#sequencetext").focus();    }    }    )
      .bind(
        'focusout',function(event) {
          if (this.value != '') {
            if (this.value != "Enter data, then tab out") {
              var $newentry = document.getElementById('sequencetext');
              $newentry.form.onsubmit = function() { return false; };
  //          var $newanagram = document.getElementById('anagram_text');
  //          $newanagram.form.onsubmit = function() { return false; };
              var $newSequenceCreatedSubmit = document.getElementById('created_submit');
              $newSequenceCreatedSubmit.form.submit = function() { return false; };
              var $sequencetext = $(".new_entry_anagram > form > input#sequencetext").serialize();
              var $anagram_return_value = $.ajax({	type: "GET",    url: "http://localhost:3000/sequence_createds/text_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
              $("#anagram form input#anagram_text").val($anagram_return_value);
              var $text_return_value = $.ajax({		type: "GET",    url: "http://localhost:3000/sequence_createds/text_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
              $("#sequence_created form input#sequence_text").val($text_return_value);
              var $lexi_return_value = $.ajax({		type: "GET",    url: "http://localhost:3000/sequence_createds/lexigram_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
              $("#sequence_created form input#sequence_lexigram").val($lexi_return_value);
              var $creation_return_value = $.ajax({	type: "GET",    url: "http://localhost:3000/sequence_createds/creation_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
              $("#sequence_created form input#sequence_creation").val($creation_return_value);
              var $complete_return_value = $.ajax({	type: "GET",    url: "http://localhost:3000/sequence_createds/complete_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
              $("#sequence_created form input#sequence_complete").val($complete_return_value);
              var $singular_return_value = $.ajax({	type: "GET",    url: "http://localhost:3000/sequence_createds/singular_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
              $("#sequence_created form input#sequence_singular").val($singular_return_value);
              $("#anagram form input#description").focus();
            }
          }
          else
          {
            $('input#anagram_text').val("");
            $('input#sequence_text').val("");
            $('input#sequence_creation').val("");
            $('input#sequence_complete').val("");
            $('input#sequence_lexigram').val("");
            $('input#sequence_singular').val("");
            $('input#sequence_lense').val("");
          }
    });
  });
