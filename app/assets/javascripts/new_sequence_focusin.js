// FOCUSIN on .new_entry_sequence form input#sequencetext
$(document).ready(  function() {
    $('.new_entry_sequence form input#sequencetext').bind(
      'focusin',function(event) {    
        if (this.value === "Enter data, then tab out") {
          $('.new_entry_sequence form input#sequencetext').val("");
        }
        else if (this.value === "Please Enter Your Data") {
           $('.new_entry_sequence form input#sequencetext').val("");
        }
        else
        {
        $('.new_entry_sequence form input#sequencetext').focus();    }    }    )
        .bind(
          'focusout',function(event) {
            if (this.value != '') {
              if (this.value != "Enter data, then tab out") {
                if (this.value != "Please Enter Your Data") {
                  $('.thecounts').hide();
                  $('input#sequencetext').blur();
                  $('#spinner').activity({outside: true, align: 'left', segments: 1});
                  var $sequencetext = $('.new_entry_sequence form input#sequencetext').serialize();
                  var $newsequence = document.getElementById('sequencetext');
                  var $sequenceSubmit = document.getElementById('sequence_submit');
                  $newsequence.form.onsubmit = function() { return false; };
                  $sequenceSubmit.form.submit = function() { return false; };
                  var $text_return_value = $.ajax({	type: "GET",    url: "http://localhost:3000/sequences/text_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
                  $("#spinner").activity(false);   
                  $("input#sequence_sequence_text").val($text_return_value);
                  $("#spinner").activity({outside: true, align: 'left', segments: 2});
                  var $creation_return_value = $.ajax({	type: "GET",    url: "http://localhost:3000/sequences/creation_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
                  $("#spinner").activity(false);         
                  $("input#sequence_sequence_creation").val($creation_return_value);
                  $("#spinner").activity({outside: true, align: 'left', segments: 3});
                  var $complete_return_value = $.ajax({	type: "GET",    url: "http://localhost:3000/sequences/complete_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
                  $("#spinner").activity(false);         
                  $("input#sequence_sequence_complete").val($complete_return_value);
                  $("#spinner").activity({outside: true, align: 'left', segments: 4});
                  var $lexi_return_value = $.ajax(	type: "GET",    url: "http://localhost:3000/sequences/lexigram_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
                  $("#spinner").activity(false);         
                  $("input#sequence_sequence_lexigram").val($lexi_return_value);
                  $("#spinner").activity({outside: true, align: 'left', segments: 5});
                  var $singular_return_value = $.ajax({	type: "GET",    url: "http://localhost:3000/sequences/singular_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
                  $("#spinner").activity(false);         
                  $("input#sequence_sequence_singular").val($singular_return_value);
                  $("#spinner").activity({outside: true, align: 'left', segments: 4});
                  var $letters_text_count = $text_return_value.length;
                  $('#count_text').text($letters_text_count);
                  var $letters_creation_count = $creation_return_value.length;
                  $('#count_creation').text($letters_creation_count);
                  var $letters_complete_count = $complete_return_value.length;
                  $('#count_complete').text($letters_complete_count);
                  var $letters_lexi_count = $lexi_return_value.length;
                  $('#count_lexigram').text($letters_lexi_count);
                  var $letters_singular_count = $singular_return_value.length;
                  $('#count_singular').text($letters_singular_count);
                  var singlesequencesing = $("#sequence_sequence_singular").val();
                  $("#spinner").activity(false);         
                  }
                  if (singlesequencesing != "") {
                    $("#spinner").activity({outside: true, align: 'left', segments: 4});
                    var $singularscount = $.ajax({
                      type: "GET", url: "http://localhost:3000/sequences/singulars_count", data: $sequencetext, async: false, dataType: 'script', success: function(data) {
                      } }).responseText;
                    $singularcount = "s - " + $singularscount
                    $('#countsingulars').show();
                    $('#countsingulars').text($singularcount);
                    $("#spinner").activity(false);
                  }
                  if ($singularscount == 0) {
                    $("#spinner").activity({outside: true, align: 'left', segments: 4});
                    var $lexigramscount = 0
                    var $completescount = 0
                    var $creationscount = 0
                    var $textscount = 0
                    $singularcount = "s - " + $singularscount
                    $lexigramcount = "s - " + $lexigramscount
                    $completecount = "s - " + $completescount
                    $creationcount = "s - " + $creationscount
                    $textcount = "s - " + $textscount
                    $('#countlexigrams').show();
                    $('#countlexigrams').text($lexigramcount);
                    $('#countcompletes').show();
                    $('#countcompletes').text($completecount);
                    $('#countcreations').show();
                    $('#countcreations').text($creationcount);
                    $('#counttexts').show();
                    $('#counttexts').text($textcount);
                    $("#spinner").activity(false);
                    $('#sequence_sequence_lense').focus();
                  }
                  else
                  {
                  var lexigramsequencesing = $("#sequence_sequence_lexigram").val();
                  $("#spinner").activity({outside: true, align: 'left', segments: 3});
                  if (lexigramsequencesing != "") {
                    var $lexigramscount = $.ajax({  type: "GET", url: "http://localhost:3000/sequences/lexigrams_count", data: $sequencetext, async: false, dataType: 'script', success: function(data) {
                    } }).responseText;
                    $lexigramcount = "s - " + $lexigramscount
                    $('#countlexigrams').show();
                    $('#countlexigrams').text($lexigramcount);
                    $("#spinner").activity(false);
                  }
                  var completesequencesing = $("#sequence_sequence_complete").val();
                  $("#spinner").activity({outside: true, align: 'left', segments: 4});
                  if (completesequencesing != "") {
                    var $completescount = $.ajax({  type: "GET", url: "http://localhost:3000/sequences/completes_count", data: $sequencetext, async: false, dataType: 'script', success: function(data) {
                    } }).responseText;
                    $completecount = "s - " + $completescount
                    $('#countcompletes').show();
                    $('#countcompletes').text($completecount);
                    $("#spinner").activity(false);
                  }
                  var creationsequencesing = $("#sequence_sequence_creation").val();
                  $("#spinner").activity({outside: true, align: 'left', segments: 5});
                  if (creationsequencesing != "") {
                    var $creationscount = $.ajax({  type: "GET", url: "http://localhost:3000/sequences/creations_count", data: $sequencetext, async: false, dataType: 'script', success: function(data) {
                    } }).responseText;
                    $creationcount = "s - " + $creationscount
                    $('#countcreations').show();
                    $('#countcreations').text($creationcount);
                    $("#spinner").activity(false);
                  }
                  var textsequencesing = $("#sequence_sequence_text").val();
                  $("#spinner").activity({outside: true, align: 'left', segments: 6});
                  if (textsequencesing != "") {
                    var $textscount = $.ajax({  type: "GET", url: "http://localhost:3000/sequences/texts_count", data: $sequencetext, async: false, dataType: 'script', success: function(data) {
                    } }).responseText;
                    $textcount = "s - " + $textscount
                    $('#counttexts').show();
                    $('#counttexts').text($textcount);
                    $('input#sequence_sequence_lense').focus();
                    $("#spinner").activity(false);
                  }
                  }
            }
            $("#spinner").activity(false);         
          }
          else
          {
            $("#spinner").activity(false);         
            $('input#sequencetext').val('Please Enter Your Data');
            $('input#sequence_sequence_text').val("");
            $('input#sequence_sequence_creation').val("");
            $('input#sequence_sequence_complete').val("");
            $('input#sequence_sequence_lexigram').val("");
            $('input#sequence_sequence_singular').val("");
            $('input#sequence_sequence_lense').val("");
            $('#singulars').hide();
            $('#lexigrams').hide();
            $('#completes').hide();
            $('#creations').hide();
            $('#texts').hide();
            $('#countsingulars').hide();
            $('#countlexigrams').hide();
            $('#countcompletes').hide();
            $('#countcreations').hide();
            $('#counttexts').hide();
          }
    });
  });
