// this function affects the anagram widget, which works with sequence_createds widget
$(document).ready( function() {    $('#anagram form input#submit').hide();  });
$(document).ready( function() {    $('#anagram form input#anagramsubmit').hide();   });

// this function affects views/sequences/new.html.erb by hiding the sequencetext form submit button
$(document).ready(  function() {    $('input#sequencetext_submit').hide();  });

// flashes and sets the text for the user entry box in widgets/anagram/display.html.haml
$(document).ready(  function() {
    var $abba = $('.new_entry_sequence form input#sequencetext').val();
    if ($abba === "") {
      $('.new_entry_sequence form input#sequencetext').fadeTo(500, 0.3).delay(100).end();
      $('.new_entry_sequence form input#sequencetext').val("Enter data, then tab out");
      $('.new_entry_sequence form input#sequencetext').fadeTo(200, 1.0);
    }
    else
    {
      $('.new_entry_sequence form input#sequencetext').val("");
      $('.new_entry_sequence form input#sequencetext').focus();
    }
  });

// flashes and sets the text for the user entry box in sequences/new.html.haml
$(document).ready(  function() {
    var $abba = $('.new_entry_anagram form input#sequencetext').val();
    if ($abba === "") {
      $('.new_entry_anagram form input#sequencetext').fadeTo(500, 0.3).delay(100).end();
      $('.new_entry_anagram form input#sequencetext').val("Enter data, then tab out");
      $('.new_entry_anagram form input#sequencetext').fadeTo(200, 1.0);
    }
    else
    {
      $('.new_entry_anagram form input#sequencetext').val("");
      $('.new_entry_anagram form input#sequencetext').focus();
    }
  });
  
$(document).ready(
  $('.new_entry_sequence form input#sequence_submit').bind(
   'submit',function(event) {
    var $sequence_text = $('input#sequence_sequence_text').val();
    var $sequenceSubmit = document.getElementById('sequence_submit');
    var $submit = document.getElementById('sequence_sequence_text');
    $submit.form.onsubmit = function() { return false; };
    if ($('input#sequence_sequence_text').val() === '') {
      $('.new_entry_sequence form input#sequencetext').fadeTo(700, 0.2);
      $('.new_entry_sequence form input#sequencetext').fadeTo(400, 0.9);
      $('.new_entry_sequence form input#sequencetext').val("");
      $submit.form.onsubmit = function() { return false; };
      $('.new_entry_sequence form input#sequencetext').focus();
      }
    else if ($('.new_entry_sequence form input#sequencetext').val() === "Enter data, then tab out") {
      $('.new_entry_sequence form input#sequencetext').fadeTo(700, 0.2);
      $('.new_entry_sequence form input#sequencetext').fadeTo(400, 1.0);
      $('.new_entry_sequence form input#sequencetext').val("");
      $submit.form.onsubmit = function() { return false; };
      $('.new_entry_sequence form input#sequencetext').focus();
      }
    else if ($('input#sequence_sequence_text').val() !== '') {
      if ($('input#sequence_sequence_creatioin').val() !== '') {
        if ($('input#sequence_sequence_complete').val() !== '') {
          if ($('input#sequence_sequence_lexigram').val() !== '') {
            if ($('input#sequence_sequence_singular').val() !== '') {
            $sequenceSubmit.form.click.submit();
            }
          }
        }
      }
    }
  })
);

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
            if (this.value !== '') {
              if (this.value !== "Enter data, then tab out") {
                if (this.value !== "Please Enter Your Data") {
                  $('.thecounts').hide();
                  $('input#sequencetext').blur();
$("#spinner").activity({outside: true, align: 'left', segments: 1});
                  var $sequencetext = $('.new_entry_sequence form input#sequencetext').serialize();
                  var $newsequence = document.getElementById('sequencetext');
                  var $sequenceSubmit = document.getElementById('sequence_submit');
                  $newsequence.form.onsubmit = function() { return false; };
                  $sequenceSubmit.form.submit = function() { return false; };
                  var $text_return_value = $.ajax({
                    type: "GET",    url: "http://localhost:3000/sequences/text_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
                  $("#spinner").activity(false);         
                  $("input#sequence_sequence_text").val($text_return_value);
$("#spinner").activity({outside: true, align: 'left', segments: 2});
                  var $creation_return_value = $.ajax({
                    type: "GET",    url: "http://localhost:3000/sequences/creation_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
                  $("#spinner").activity(false);         
                  $("input#sequence_sequence_creation").val($creation_return_value);
$("#spinner").activity({outside: true, align: 'left', segments: 3});
                  var $complete_return_value = $.ajax({
                    type: "GET",    url: "http://localhost:3000/sequences/complete_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
                  $("#spinner").activity(false);         
                  $("input#sequence_sequence_complete").val($complete_return_value);
$("#spinner").activity({outside: true, align: 'left', segments: 4});
                  var $lexi_return_value = $.ajax({
                    type: "GET",    url: "http://localhost:3000/sequences/lexigram_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
                  $("#spinner").activity(false);         
                  $("input#sequence_sequence_lexigram").val($lexi_return_value);
$("#spinner").activity({outside: true, align: 'left', segments: 5});
                  var $singular_return_value = $.ajax({
                    type: "GET",    url: "http://localhost:3000/sequences/singular_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
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
                  if (singlesequencesing !== "") {
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
                  if (lexigramsequencesing !== "") {
                    var $lexigramscount = $.ajax({  type: "GET", url: "http://localhost:3000/sequences/lexigrams_count", data: $sequencetext, async: false, dataType: 'script', success: function(data) {
                    } }).responseText;
                    $lexigramcount = "s - " + $lexigramscount
                    $('#countlexigrams').show();
                    $('#countlexigrams').text($lexigramcount);
                    $("#spinner").activity(false);
                  }
                  var completesequencesing = $("#sequence_sequence_complete").val();
$("#spinner").activity({outside: true, align: 'left', segments: 4});
                  if (completesequencesing !== "") {
                    var $completescount = $.ajax({  type: "GET", url: "http://localhost:3000/sequences/completes_count", data: $sequencetext, async: false, dataType: 'script', success: function(data) {
                    } }).responseText;
                    $completecount = "s - " + $completescount
                    $('#countcompletes').show();
                    $('#countcompletes').text($completecount);
                    $("#spinner").activity(false);
                  }
                  var creationsequencesing = $("#sequence_sequence_creation").val();
$("#spinner").activity({outside: true, align: 'left', segments: 5});
                  if (creationsequencesing !== "") {
                    var $creationscount = $.ajax({  type: "GET", url: "http://localhost:3000/sequences/creations_count", data: $sequencetext, async: false, dataType: 'script', success: function(data) {
                    } }).responseText;
                    $creationcount = "s - " + $creationscount
                    $('#countcreations').show();
                    $('#countcreations').text($creationcount);
                    $("#spinner").activity(false);
                  }
                  var textsequencesing = $("#sequence_sequence_text").val();
$("#spinner").activity({outside: true, align: 'left', segments: 6});
                  if (textsequencesing !== "") {
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
          if (this.value !== '') {
            if (this.value !== "Enter data, then tab out") {
              var $sequencetext = $('.sequence_edit form input#sequencetext').serialize();
              var $newsequence = document.getElementById('sequencetext');
              var $sequenceSubmit = document.getElementById('sequencetext_submit');
              $newsequence.form.onsubmit = function() { return false; };
              $sequenceSubmit.form.submit = function() { return false; };
              var $text_return_value = $.ajax({
                type: "GET",    url: "http://localhost:3000/sequences/text_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
                $('input#sequence_sequence_text').val($text_return_value);
                
              var $creation_return_value = $.ajax({
                type: "GET",    url: "http://localhost:3000/sequences/creation_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
                $('input#sequence_sequence_creation').val($creation_return_value);

              var $complete_return_value = $.ajax({
                type: "GET",    url: "http://localhost:3000/sequences/complete_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
                $('input#sequence_sequence_complete').val($complete_return_value);

              var $lexi_return_value = $.ajax({
                type: "GET",    url: "http://localhost:3000/sequences/lexigram_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
                $('input#sequence_sequence_lexigram').val($lexi_return_value);

              var $singular_return_value = $.ajax({
                type: "GET",    url: "http://localhost:3000/sequences/singular_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
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

$(document).ready(  function() {
       $('input#anagramListOpen').click(
       function($e) {
       $('input#anagramListClose').show();
       $('#anagramListDisplay').show();
       $('.sequenceCreatedWidgetDisplay').hide();
       }
       );
       $('input#anagramListClose').click(
       function($e) {
       $('#anagramListDisplay').hide();
       $('.sequenceCreatedWidgetDisplay').show();
       }
       );
       });

$(document).ready(  function() {
       $('input#sequencerOpen').click(
       function($e) {
       $('#sequencerWidgetDisplay').show();
       $('#anagramListDisplay').hide();
       $('input#anagramListOpen').hide();
       $('input#sequencerOpen').hide();
       $('#kathyonu').hide();
       $('.kathyonu').show();
       }
       ); });

$(document).ready(  function() {
       $('input#sequencerClose').click(function($e) {
       $('.sequenceCreatedWidgetDisplay').show();
       $('#sequencerWidgetDisplay').hide();
       $('input#anagramListOpen').show();
       $('input#sequencerOpen').show();
       $('.kathyonu').hide();
       $('#kathyonu').show();
       });
       });

// FOCUSIN on #anagram form input#ANAGRAM_TEXT
$(document).ready(
  function() {
    $('#anagram form input#anagram_text').bind({
     focusin:function(event) {
       $('#anagram form input#anagram_text').css('backgroundColor', 'white');
       $('#anagramListDisplay').hide();
       $('#sequencerWidgetDisplay').hide();
       $('.sequenceCreatedWidgetDisplay').show();
       $('.formSequenceCreated input#sequence_text').css('backgroundColor', 'white');
       $('.formSequenceCreated input#sequence_creation').css('backgroundColor', 'white');
       $('.formSequenceCreated input#sequence_complete').css('backgroundColor', 'white');
       $('.formSequenceCreated input#sequence_lexigram').css('backgroundColor', 'white');
       $('.formSequenceCreated input#sequence_singular').css('backgroundColor', 'white');
       }
       });
       });
   
$(document).ready(  function() {
       $('#anagram form input#anagram_text').bind({
       focusout:function(event) {
       $('#anagram form input#anagram_text').css('backgroundColor', 'pink');
       $('.formSequenceCreated input#sequence_text').css('backgroundColor', 'pink');
       $('.formSequenceCreated input#sequence_creation').css('backgroundColor', 'pink');
       $('.formSequenceCreated input#sequence_complete').css('backgroundColor', 'pink');
       $('.formSequenceCreated input#sequence_lexigram').css('backgroundColor', 'pink');
       $('.formSequenceCreated input#sequence_singular').css('backgroundColor', 'pink');
       $('#anagram form input#description').focus();
       }
       });
       });

// FOCUSIN on #anagram form input#DESCRIPTION
$(document).ready(  function() {
       $('#anagram form input#description').bind({
       focusin:function(event) {
       $('#anagramListDisplay').hide();
       $('#sequencerWidgetDisplay').hide();
       $('.sequenceCreatedWidgetDisplay').show();
       }
       });
       });

// FOCUSIN on #anagram form input#REFERENCE
$(document).ready(  function() {
       $('#anagram form input#reference').bind({
       focusin:function(event) {
       $('#anagramListDisplay').hide();
       $('#sequencerWidgetDisplay').hide();
       $('.sequenceCreatedWidgetDisplay').show();
       }
       });
       });

$(document).ready(  function() {
       $('#reset').bind(
       'click',function(event) {
       $('#anagram form input#anagram_text').empty();
       $('#anagram form input#description').empty();
       $('#anagram form input#reference').empty();
       $('#sequence_created form input#sequence_text').empty();
       $('#sequence_created form input#sequence_creation').empty();
       $('#sequence_created form input#sequence_complete').empty();
       $('#sequence_created form input#sequence_lexigram').empty();
       $('#sequence_created form input#sequence_singular').empty();
       }
       );
       });

// FOCUSIN on .new_entry_anagram > form > input#sequencetext
// FOCUSOUT generates the five sequences to sequence_created widget form, and the anagram_text to the anagram widget form.
$(document).ready(  function() {
    $(".new_entry_anagram > form > input#sequencetext").bind(
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
          if (this.value !== '') {
            if (this.value !== "Enter data, then tab out") {
              var $newentry = document.getElementById('sequencetext');
              $newentry.form.onsubmit = function() { return false; };
  //          var $newanagram = document.getElementById('anagram_text');
  //          $newanagram.form.onsubmit = function() { return false; };
              var $newSequenceCreatedSubmit = document.getElementById('created_submit');
              $newSequenceCreatedSubmit.form.submit = function() { return false; };
              var $sequencetext = $(".new_entry_anagram > form > input#sequencetext").serialize();
              var $anagram_return_value = $.ajax({
                type: "GET",    url: "http://localhost:3000/sequence_createds/text_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
                $("#anagram form input#anagram_text").val($anagram_return_value);
              var $text_return_value = $.ajax({
                type: "GET",    url: "http://localhost:3000/sequence_createds/text_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
                $("#sequence_created form input#sequence_text").val($text_return_value);
              var $lexi_return_value = $.ajax({
                type: "GET",    url: "http://localhost:3000/sequence_createds/lexigram_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
                $("#sequence_created form input#sequence_lexigram").val($lexi_return_value);
              var $creation_return_value = $.ajax({
                type: "GET",    url: "http://localhost:3000/sequence_createds/creation_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
                $("#sequence_created form input#sequence_creation").val($creation_return_value);
              var $complete_return_value = $.ajax({
                type: "GET",    url: "http://localhost:3000/sequence_createds/complete_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
                $("#sequence_created form input#sequence_complete").val($complete_return_value);
              var $singular_return_value = $.ajax({
                type: "GET",    url: "http://localhost:3000/sequence_createds/singular_sequenced",    data: $sequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
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
  
$(document).ready(  function() {
    $('#search_sequence_singulars form input#sequencetext').val("Enter your data");
    $('#search_sequence_lexigrams form input#sequencetext').val("Enter your data");
    $('#search_sequence_completes form input#sequencetext').val("Enter your data");
    $('#search_sequence_creations form input#sequencetext').val("Enter your data");
    $('#search_sequence_texts form input#sequencetext').val("Enter your data");
  });

// FOCUSIN on '#search_sequence_singulars form input#sequencetext'
$(document).ready(  function() {
  $('#search_sequence_singulars form input#sequencetext').bind(
    'focusin',function(event) {    
      $('#search_sequence_singulars form input#sequencetext').val("")
    })
  });

// FOCUSIN on '#search_sequence_lexigrams form input#sequencetext'
$(document).ready(  function() {
  $('#search_sequence_lexigrams form input#sequencetext').bind(
    'focusin',function(event) {    
      $('#search_sequence_lexigrams form input#sequencetext').val("")
    })
  });

// FOCUSIN on '#search_sequence_completes form input#sequencetext'
$(document).ready(  function() {
  $('#search_sequence_completes form input#sequencetext').bind(
    'focusin',function(event) {    
      $('#search_sequence_completes form input#sequencetext').val("")
    })
  });

// FOCUSIN on '#search_sequence_creations form input#sequencetext'
$(document).ready(  function() {
  $('#search_sequence_creations form input#sequencetext').bind(
    'focusin',function(event) {    
      $('#search_sequence_creations form input#sequencetext').val("")
    })
  });

// FOCUSIN on '#search_sequence_texts form input#sequencetext'
$(document).ready(  function() {
  $('#search_sequence_texts form input#sequencetext').bind(
    'focusin',function(event) {    
      $('#search_sequence_texts form input#sequencetext').val("")
    })
  });
  
// flashes the box if it is empty when user tabs out
$(document).ready(
  function() {
    var $abba = $('input#sequencetext').val();
    var $baab = "";
    if ($abba === $baab) { 
      $('input#sequencetext').fadeTo(500, 0.3).delay(100).end();
      $('input#sequencetext').val("");
      $('input#sequencetext').fadeTo(200, 1.0).end();
      $('input#sequencetext').focus();
      }
        else
      {
        $('input#sequencetext').val("");
        $('input#sequencetext').focus();
      }
  });
