// FOCUSIN on .new_entry_sequence form input#sequencetext
$(document).ready(  function() {
  $('.new_entry_sequence form input#sequencetext')
  .bind('focusin',function(event) { 
    $('.new_entry_sequence form input#sequencetext').fadeTo(500, 0.3).delay(100).end();
    $('.new_entry_sequence form input#sequencetext').val("");
    $('.new_entry_sequence form input#sequencetext').fadeTo(200, 1.0).end();
  })
  .bind('focusout',function(event) {
    var $entry = $('.new_entry_sequence form input#sequencetext').val();
    if ($entry.value === "") { 
          $("#spinner").activity(false);
          $('.new_entry_sequence form input#sequencetext').val("Please Enter Your Data, then tab out");
          $('.new_entry_sequence form input#sequence_sequence_text').val("");
          $('.new_entry_sequence form input#sequence_sequence_creation').val("");
          $('.new_entry_sequence form input#sequence_sequence_complete').val("");
          $('.new_entry_sequence form input#sequence_sequence_lexigram').val("");
          $('.new_entry_sequence form input#sequence_sequence_singular').val("");
          $('.new_entry_sequence form input#sequence_sequence_lense').val("");
          $('#singulars').hide();
          $('#lexigrams').hide();
          $('#completes').hide();
          $('#creations').hide();
          $('#texts').show();
          $('#countsingulars').hide();
          $('#countlexigrams').hide();
          $('#countcompletes').hide();
          $('#countcreations').hide();
          $('#counttexts').text("time");
        }
      else if ($entry.value != "") {
        if ($entry.value != "Enter Your Data, then tab out") {
          if ($entry.value != "Please Enter Your Data, then tab out") {
            var $sequencetext = $('.new_entry_sequence form input#sequencetext').serialize();
            var $newsequence = document.getElementById('sequencetext_submit');
            var $sequenceSubmit = document.getElementById('sequence_submit');
            var $text_return_value = "";
            var $creation_return_value = "";
            var $complete_return_value = "";
            var $lexig_return_value = "";
            var $singular_return_value = "";
            var $letters_text_count = 0;
            var $letters_creation_count = 0;
            var $letters_complete_count = 0;
            var $letters_lexigram_count = 0;
            var $letters_singular_count = 0;
            var $singularscount = 0;
            var $singularcounts = "";
            var $lexigramscount = 0;
            var $lexigramcounts = "";
            var $completescount = 0;
            var $completescounts = "";;
            var $creationscount = 0;
            var $creationscounts = "";
            var $textscount = 0;
            var $textscounts = "";
//          $newsequence.form.onsubmit = function() { return false; };
//          $sequenceSubmit.form.submit = function() { return false; };
            $('.thecounts').hide();
            $('#spinner').activity({outside: true, align: 'left', segments: 1});
            $text_return_value = $.ajax({	type: "GET",    url: "http://localhost:3000/sequences/text_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) { alert(data) }  }).responseText;
            $("#spinner").activity(false);   
            $('.newSequence form input#sequence_sequence_text').val($text_return_value);
            $("#spinner").activity({outside: true, align: 'left', segments: 2});
            $creation_return_value = $.ajax({	type: "GET",    url: "http://localhost:3000/sequences/creation_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {  } }).responseText;
            $("#spinner").activity(false);         
            $('.newSequence form input#sequence_sequence_creation').val($creation_return_value);
            $("#spinner").activity({outside: true, align: 'left', segments: 3});
            $complete_return_value = $.ajax({	type: "GET",    url: "http://localhost:3000/sequences/complete_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {  } }).responseText;
            $("#spinner").activity(false);         
            $('.newSequence form input#sequence_sequence_complete').val($complete_return_value);
            $("#spinner").activity({outside: true, align: 'left', segments: 4});
            $lexigram_return_value = $.ajax({	type: "GET",    url: "http://localhost:3000/sequences/lexigram_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {  } }).responseText;
            $("#spinner").activity(false);         
            $('.newSequence form input#sequence_sequence_lexigram').val($lexigram_return_value);
            $("#spinner").activity({outside: true, align: 'left', segments: 5});
            $singular_return_value = $.ajax({	type: "GET",    url: "http://localhost:3000/sequences/singular_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {  } }).responseText;
            $("#spinner").activity(false);         
            $('.newSequence form input#sequence_sequence_singular').val($singular_return_value);
            $("#spinner").activity({outside: true, align: 'left', segments: 4});
            var $letters_text_count = $text_return_value.length;
            $('#count_text').text($letters_text_count).show();
            $letters_creation_count = $creation_return_value.length;
            $('#count_creation').text($letters_creation_count).show();
            $letters_complete_count = $complete_return_value.length;
            $('#count_complete').text($letters_complete_count).show();
            $letters_lexigram_count = $lexigram_return_value.length;
            $('#count_lexigram').text($letters_lexigram_count).show();
            $letters_singular_count = $singular_return_value.length;
            $('#count_singular').text($letters_singular_count).show();
            $("#spinner").activity(false);         
            $("#spinner").activity({outside: true, align: 'left', segments: 4});
          $singularscount = $.ajax({  type: "GET", url: "http://localhost:3000/sequences/singulars_count", data: $sequencetext, async: false, dataType: 'script', success: function(data) {  }  }).responseText;
            $singularcounts = "s - " + $singularscount;
            $('#countsingulars').text($singularcounts).show();
            $("#spinner").activity(false);
            if ($singularscount === 0) {
              $singularcounts = "s - " + $singularscount;
              $lexigramcounts = "s - " + $lexigramscount;
              $completecounts = "s - " + $completescount;
              $creationcounts = "s - " + $creationscount;
              $textcounts = "s - " + $textscount;
              $("#spinner").activity({outside: true, align: 'left', segments: 4});
              $('.newSequence form #countsingulars').text($singularcounts).show();
              $('.newSequence form #countlexigrams').text($lexigramcounts).show();
              $('.newSequence form #countcompletes').text($completecounts).show();
              $('.newSequence form #countcreations').text($creationcounts).show();
              $('.newSequence form #counttexts').text($textcounts).show();
              $("#spinner").activity(false);
              $('.newSequence form #sequence_sequence_lense').focus();
              }
            else {
//              var $singularequencesing = ($singular_return_value);
//              var $lexigramsequencesing = $("sequence_sequence_lexigram").val();         // ($lexigram_return_value);
//              var $completesequencesing = $("#sequence_sequence_complete").val();
//              var $creationsequencesing = $("#sequence_sequence_creation").val();
//              var $textsequencesing = $("#sequence_sequence_text").val();
                        

              $("#spinner").activity({outside: true, align: 'left', segments: 3});
              $lexigramscount = $.ajax({  type: "GET", url: "http://localhost:3000/sequences/lexigrams_count", data: $sequencetext, async: false, dataType: 'script', success: function(data) {   } }).responseText;
              $lexigramcounts = "s - " + $lexigramscount;
              $("#spinner").activity(false);
              $('.newSequence form #countlexigrams').text($lexigramcounts).show();
          
              $("#spinner").activity({outside: true, align: 'left', segments: 4});
              $completescount = $.ajax({  type: "GET", url: "http://localhost:3000/sequences/completes_count", data: $sequencetext, async: false, dataType: 'script', success: function(data) {   }  }).responseText;
              $completecounts = "s - " + $completescount;
              $("#spinner").activity(false);
              $('.newSequence form #countcompletes').text($completecounts).show();
              $("#spinner").activity({outside: true, align: 'left', segments: 5});          
          
              $creationscount = $.ajax({  type: "GET", url: "http://localhost:3000/sequences/creations_count", data: $sequencetext, async: false, dataType: 'script', success: function(data) {   } }).responseText;
              $creationcounts = "s - " + $creationscount;
              $("#spinner").activity(false);
              $('.newSequence form #countcreations').text($creationcounts).show();
              $("#spinner").activity({outside: true, align: 'left', segments: 6});
          
              $textscounts = $.ajax({  type: "GET", url: "http://localhost:3000/sequences/texts_count", data: $sequencetext, async: false, dataType: 'script', success: function(data) {   } }).responseText;
              $textcounts = "s - " + $textscount;
              $('.newSequence form #counttexts').text($textcounts).show();
              $("#spinner").activity(false);
              $('.newSequence form input#sequence_sequence_lense').focus();
            }
          }
        }
      } 
    });
  });
