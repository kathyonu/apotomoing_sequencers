
jQuery.noConflict();
var $j = jQuery;

$j(document).ready(  function() {    $j('#anagram form input#anagramsubmit').hide();   });

$j(document).ready(  function() {    $j('input#sequencetext_submit').hide();    });


// flashes and sets the text for the user entry box in widgets/anagram/display.html.haml
$j(document).ready(  function() {
    var $jabba = $j('.new_entry_sequence form input#sequencetext').val();
    if ($jabba === "") {
      $j('.new_entry_sequence form input#sequencetext').fadeTo(500, 0.3).delay(100).end();
      $j('.new_entry_sequence form input#sequencetext').val("Enter data, then tab out");
      $j('.new_entry_sequence form input#sequencetext').fadeTo(200, 1.0);
    }
    else
    {
      $j('.new_entry_sequence form input#sequencetext').val("");
      $j('.new_entry_sequence form input#sequencetext').focus();
    }
  });


// flashes and sets the text for the user entry box in sequences/new.html.haml
$j(document).ready(  function() {
    var $jabba = $j('.new_entry_anagram form input#sequencetext').val();
    if ($jabba === "") {
      $j('.new_entry_anagram form input#sequencetext').fadeTo(500, 0.3).delay(100).end();
      $j('.new_entry_anagram form input#sequencetext').val("Enter data, then tab out");
      $j('.new_entry_anagram form input#sequencetext').fadeTo(200, 1.0);
    }
    else
    {
      $j('.new_entry_anagram form input#sequencetext').val("");
      $j('.new_entry_anagram form input#sequencetext').focus();
    }
  });
  
$j(document).ready(
  $j('.new_entry_sequence form input#sequence_submit').bind(
   'submit',function(event) {
    var $jsequence_text = $j('input#sequence_sequence_text').val();
    var $jsequenceSubmit = document.getElementById('sequence_submit');
    var $jsubmit = document.getElementById('sequence_sequence_text');
    $jsubmit.form.submit = function() { return false; };
    if ($j('input#sequence_sequence_text').val() === '') {
      $j('.new_entry_sequence form input#sequencetext').fadeTo(700, 0.2);
      $j('.new_entry_sequence form input#sequencetext').fadeTo(400, 0.9);
      $j('.new_entry_sequence form input#sequencetext').val("");
      $jsubmit.form.submit = function() { return false; };
      $j('.new_entry_sequence form input#sequencetext').focus();
      }
    else if ($j('.new_entry_sequence form input#sequencetext').val() === "Enter data, then tab out") {
      $jsubmit.form = function() { return false; };
      $j('.new_entry_sequence form input#sequencetext').fadeTo(700, 0.2);
      $j('.new_entry_sequence form input#sequencetext').fadeTo(400, 1.0);
      $j('.new_entry_sequence form input#sequencetext').val("");
      $jsubmit.form.submit = function() { return false; };
      $j('.new_entry_sequence form input#sequencetext').focus();
      }
    else if ($j('input#sequence_sequence_text').val() !== '') {
      if ($j('input#sequence_sequence_creatioin').val() !== '') {
        if ($j('input#sequence_sequence_complete').val() !== '') {
          if ($j('input#sequence_sequence_lexigram').val() !== '') {
            if ($j('input#sequence_sequence_singular').val() !== '') {
            $jsequenceSubmit.form.click.submit();
            }
          }
        }
      }
    }
  })
);

// FOCUSIN on '.new_entry_sequence form input#sequencetext'
$j(document).ready(  function() {
    $j('.new_entry_sequence form input#sequencetext').bind(
      'focusin',function(event) {    
        if (this.value === "Enter data, then tab out") {
        $j('.new_entry_sequence form input#sequencetext').val("");
      }
      else  if (this.value === "Please Enter Your Data") {
        $j('.new_entry_sequence form input#sequencetext').val("");
      }
      else
      {
      $j('.new_entry_sequence form input#sequencetext').focus();    }    }    )
      .bind(
        'focusout',function(event) {
          if (this.value !== '') {
            if (this.value !== "Enter data, then tab out") {
              if (this.value !== "Please Enter Your Data") {
              var $jsequencetext = $j('.new_entry_sequence form input#sequencetext').serialize();
              var $jnewsequence = document.getElementById('sequencetext');
              var $jsequenceSubmit = document.getElementById('sequence_submit');
              $j('.thecounts').hide();
              $jnewsequence.form.onsubmit = function() { return false; };
              $jsequenceSubmit.form.submit = function() { return false; };
              var $jtext_return_value = $j.ajax({
                type: "GET",    url: "http://localhost:3000/sequences/text_sequenced",    data: $jsequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
              $j("input#sequence_sequence_text").val($jtext_return_value);
              var $jcreation_return_value = $j.ajax({
                type: "GET",    url: "http://localhost:3000/sequences/creation_sequenced",    data: $jsequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
              $j("input#sequence_sequence_creation").val($jcreation_return_value);
              var $jcomplete_return_value = $j.ajax({
                type: "GET",    url: "http://localhost:3000/sequences/complete_sequenced",    data: $jsequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
              $j("input#sequence_sequence_complete").val($jcomplete_return_value);
              var $jlexi_return_value = $j.ajax({
                type: "GET",    url: "http://localhost:3000/sequences/lexigram_sequenced",    data: $jsequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
              $j("input#sequence_sequence_lexigram").val($jlexi_return_value);
              var $jsingular_return_value = $j.ajax({
                type: "GET",    url: "http://localhost:3000/sequences/singular_sequenced",    data: $jsequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
              $j("input#sequence_sequence_singular").val($jsingular_return_value);
              var $jletters_text_count = $jtext_return_value.length;
              $j('#count_text').text($jletters_text_count);
              var $jletters_creation_count = $jcreation_return_value.length;
              $j('#count_creation').text($jletters_creation_count);
              var $jletters_complete_count = $jcomplete_return_value.length;
              $j('#count_complete').text($jletters_complete_count);
              var $jletters_lexi_count = $jlexi_return_value.length;
              $j('#count_lexigram').text($jletters_lexi_count);
              var $jletters_singular_count = $jsingular_return_value.length;
              $j('#count_singular').text($jletters_singular_count);
              var singlesequencesing = $j("#sequence_sequence_singular").val();
              }
              if (singlesequencesing !== "") {
                var $jsingularscount = $j.ajax({  type: "GET", url: "http://localhost:3000/sequences/singulars_count", data: $jsequencetext, async: false, dataType: 'script', success: function(data) {
                } }).responseText;
                $jsingularcount = "s - " + $jsingularscount
                $j('#countsingulars').show();
                $j('#countsingulars').text($jsingularcount);
              }
              if ($jsingularscount == 0) {
                $jlexigramscount = 0
                $jcompletescount = 0
                $jcreationscount = 0
                $jtextscount = 0
                $jsingularcount = "s - " + $jsingularscount
                $jlexigramcount = "s - " + $jlexigramscount
                $jcompletecount = "s - " + $jcompletescount
                $jcreationcount = "s - " + $jcreationscount
                $jtextcount = "s - " + $jtextscount
                $j('#countlexigrams').show();
                $j('#countlexigrams').text($jlexigramcount);
                $j('#countcompletes').show();
                $j('#countcompletes').text($jcompletecount);
                $j('#countcreations').show();
                $j('#countcreations').text($jcreationcount);
                $j('#counttexts').show();
                $j('#counttexts').text($jtextcount);
                $j('#sequence_sequence_lense').focus();
              }
              else
              {
              var lexigramsequencesing = $j("#sequence_sequence_lexigram").val();
              if (lexigramsequencesing !== "") {
                var $jlexigramscount = $j.ajax({  type: "GET", url: "http://localhost:3000/sequences/lexigrams_count", data: $jsequencetext, async: false, dataType: 'script', success: function(data) {
                } }).responseText;
                $jlexigramcount = "s - " + $jlexigramscount
                $j('#countlexigrams').show();
                $j('#countlexigrams').text($jlexigramcount);
              }
              var completesequencesing = $j("#sequence_sequence_complete").val();
              if (completesequencesing !== "") {
                var $jcompletescount = $j.ajax({  type: "GET", url: "http://localhost:3000/sequences/completes_count", data: $jsequencetext, async: false, dataType: 'script', success: function(data) {
                } }).responseText;
                $jcompletecount = "s - " + $jcompletescount
                $j('#countcompletes').show();
                $j('#countcompletes').text($jcompletecount);
              }
              var creationsequencesing = $j("#sequence_sequence_creation").val();
              if (creationsequencesing !== "") {
                var $jcreationscount = $j.ajax({  type: "GET", url: "http://localhost:3000/sequences/creations_count", data: $jsequencetext, async: false, dataType: 'script', success: function(data) {
                } }).responseText;
                $jcreationcount = "s - " + $jcreationscount
                $j('#countcreations').show();
                $j('#countcreations').text($jcreationcount);
              }
              var textsequencesing = $j("#sequence_sequence_text").val();
              if (textsequencesing !== "") {
                var $jtextscount = $j.ajax({  type: "GET", url: "http://localhost:3000/sequences/texts_count", data: $jsequencetext, async: false, dataType: 'script', success: function(data) {
                } }).responseText;
                $jtextcount = "s - " + $jtextscount
                $j('#counttexts').show();
                $j('#counttexts').text($jtextcount);
                $j('input#sequence_sequence_lense').focus();
              }
              }
            }
          }
          else
          {
            $j('input#sequencetext').val('Please Enter Your Data');
            $j('input#sequence_sequence_text').val("");
            $j('input#sequence_sequence_creation').val("");
            $j('input#sequence_sequence_complete').val("");
            $j('input#sequence_sequence_lexigram').val("");
            $j('input#sequence_sequence_singular').val("");
            $j('input#sequence_sequence_lense').val("");
            $j('#singulars').val("");
            $j('#singulars').hide();
            $j('#lexigrams').hide();
            $j('#completes').hide();
            $j('#creatoins').hide();
            $j('#tests').hide();
          }
    });
  });

// FOCUSIN on '.new_edit form input#sequencetext'
$j(document).ready(  function() {
    $j('.sequence_edit form input#sequencetext').bind(
      'focusin',function(event) {    
        if ($j('.sequence_edit form input#sequencetext').val() === "Enter data, then tab out") {
        $j('.sequence_edit form input#sequencetext').val("");
      }
      else  if ($j('.sequence_edit form input#sequencetext').val() === "Please Enter Your Data") {
        $j('.sequence_edit form input#sequencetext').val("");
      }
      else
      {
      $j('.sequence_edit form input#sequencetext').focus();    }    }    )
      .bind(
        'focusout',function(event) {
          if (this.value !== '') {
            if (this.value !== "Enter data, then tab out") {
              var $jsequencetext = $j('.sequence_edit form input#sequencetext').serialize();
              var $jnewsequence = document.getElementById('sequencetext');
              var $jsequenceSubmit = document.getElementById('sequencetext_submit');
              $jnewsequence.form.onsubmit = function() { return false; };
              $jsequenceSubmit.form.onsubmit = function() { return false; };
              var $jtext_return_value = $j.ajax({
                type: "GET",    url: "http://localhost:3000/sequences/text_sequenced",    data: $jsequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
                $j('input#sequence_sequence_text').val($jtext_return_value);
                
              var $jlexi_return_value = $j.ajax({
                type: "GET",    url: "http://localhost:3000/sequences/lexigram_sequenced",    data: $jsequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
                $j('input#sequence_sequence_lexigram').val($jlexi_return_value);

              var $jcreation_return_value = $j.ajax({
                type: "GET",    url: "http://localhost:3000/sequences/creation_sequenced",    data: $jsequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
                $j('input#sequence_sequence_creation').val($jcreation_return_value);

              var $jcomplete_return_value = $j.ajax({
                type: "GET",    url: "http://localhost:3000/sequences/complete_sequenced",    data: $jsequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
                $j('input#sequence_sequence_complete').val($jcomplete_return_value);

              var $jsingular_return_value = $j.ajax({
                type: "GET",    url: "http://localhost:3000/sequences/singular_sequenced",    data: $jsequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
                $j('input#sequence_sequence_singular').val($jsingular_return_value);
                $j('form input#sequence_sequence_lense').focus();
            }
          }
          else
          {
            $j('.sequence_edit form input#sequencetext').val('Please Enter Your Data');
//            $j('input#sequence_text').val("");
  //          $j('input#sequence_creation').val("");
    //        $j('input#sequence_complete').val("");
      //      $j('input#sequence_lexigram').val("");
        //    $j('input#sequence_singular').val("");
          //  $j('input#sequence_lense').val("");
          }
    });
  });

$j(document).ready(  function() {
       $j('input#anagramListOpen').click(
       function($je) {
       $j('input#anagramListClose').show();
       $j('#anagramListDisplay').show();
       $j('.sequenceCreatedWidgetDisplay').hide();
       }
       );
       $j('input#anagramListClose').click(
       function($je) {
       $j('#anagramListDisplay').hide();
       $j('.sequenceCreatedWidgetDisplay').show();
       }
       );
       });

$j(document).ready(  function() {
       $j('input#sequencerOpen').click(
       function($je) {
       $j('#sequencerWidgetDisplay').show();
       $j('#anagramListDisplay').hide();
       $j('input#anagramListOpen').hide();
       $j('input#sequencerOpen').hide();
       $j('#kathyonu').hide();
       $j('.kathyonu').show();
       }
       ); });

$j(document).ready(  function() {
       $j('input#sequencerClose').click(function($je) {
       $j('.sequenceCreatedWidgetDisplay').show();
       $j('#sequencerWidgetDisplay').hide();
       $j('input#anagramListOpen').show();
       $j('input#sequencerOpen').show();
       $j('.kathyonu').hide();
       $j('#kathyonu').show();
       });
       });

// FOCUSIN on #anagram form input#ANAGRAM_TEXT
$j(document).ready(
  function() {
    $j('#anagram form input#anagram_text').bind({
     focusin:function(event) {
       $j('#anagram form input#anagram_text').css('backgroundColor', 'white');
       $j('#anagramListDisplay').hide();
       $j('#sequencerWidgetDisplay').hide();
       $j('.sequenceCreatedWidgetDisplay').show();
       $j('.formSequenceCreated input#sequence_text').css('backgroundColor', 'white');
       $j('.formSequenceCreated input#sequence_creation').css('backgroundColor', 'white');
       $j('.formSequenceCreated input#sequence_complete').css('backgroundColor', 'white');
       $j('.formSequenceCreated input#sequence_lexigram').css('backgroundColor', 'white');
       $j('.formSequenceCreated input#sequence_singular').css('backgroundColor', 'white');
       }
       });
       });
   
$j(document).ready(  function() {
       $j('#anagram form input#anagram_text').bind({
       focusout:function(event) {
       $j('#anagram form input#anagram_text').css('backgroundColor', 'pink');
       $j('.formSequenceCreated input#sequence_text').css('backgroundColor', 'pink');
       $j('.formSequenceCreated input#sequence_creation').css('backgroundColor', 'pink');
       $j('.formSequenceCreated input#sequence_complete').css('backgroundColor', 'pink');
       $j('.formSequenceCreated input#sequence_lexigram').css('backgroundColor', 'pink');
       $j('.formSequenceCreated input#sequence_singular').css('backgroundColor', 'pink');
       $j('#anagram form input#description').focus();
       }
       });
       });

// FOCUSIN on #anagram form input#DESCRIPTION
$j(document).ready(  function() {
       $j('#anagram form input#description').bind({
       focusin:function(event) {
       $j('#anagramListDisplay').hide();
       $j('#sequencerWidgetDisplay').hide();
       $j('.sequenceCreatedWidgetDisplay').show();
       }
       });
       });

// FOCUSIN on #anagram form input#REFERENCE
$j(document).ready(  function() {
       $j('#anagram form input#reference').bind({
       focusin:function(event) {
       $j('#anagramListDisplay').hide();
       $j('#sequencerWidgetDisplay').hide();
       $j('.sequenceCreatedWidgetDisplay').show();
       }
       });
       });

$j(document).ready(  function() {
       $j('#reset').bind(
       'click',function(event) {
       $j('#anagram form input#anagram_text').empty();
       $j('#anagram form input#description').empty();
       $j('#anagram form input#reference').empty();
       $j('#sequence_created form input#sequence_text').empty();
       $j('#sequence_created form input#sequence_creation').empty();
       $j('#sequence_created form input#sequence_complete').empty();
       $j('#sequence_created form input#sequence_lexigram').empty();
       $j('#sequence_created form input#sequence_singular').empty();
       }
       );
       });

// FOCUSIN on .new_entry_anagram > form > input#sequencetext
// FOCUSOUT generates the five sequences to sequence_created widget form, and the anagram_text to the anagram widget form.
$j(document).ready(  function() {
    $j(".new_entry_anagram > form > input#sequencetext").bind(
      'focusin',function(event) {    
        if ($j(".new_entry_anagram > form > input#sequencetext").val() === "Enter data, then tab out") {
        $j(".new_entry_anagram > form > input#sequencetext").val("");
      }
      else  if ($j(".new_entry_anagram > form > input#sequencetext").val() === "Please Enter Your Data") {
        $j('.new_entry_anagram > form > input#sequencetext').val("");
      }
      else
      {
      $j(".new_entry_anagram > form > input#sequencetext").focus();    }    }    )
      .bind(
        'focusout',function(event) {
          if (this.value !== '') {
            if (this.value !== "Enter data, then tab out") {
              var $jnewentry = document.getElementById('sequencetext');
              $jnewentry.form.onsubmit = function() { return false; };
  //          var $jnewanagram = document.getElementById('anagram_text');
  //          $jnewanagram.form.onsubmit = function() { return false; };
              var $jnewSequenceCreatedSubmit = document.getElementById('created_submit');
              $jnewSequenceCreatedSubmit.form.submit = function() { return false; };
              var $jsequencetext = $j(".new_entry_anagram > form > input#sequencetext").serialize();
              var $janagram_return_value = $j.ajax({
                type: "GET",    url: "http://localhost:3000/sequence_createds/text_sequenced",    data: $jsequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
                $j("#anagram form input#anagram_text").val($janagram_return_value);
              var $jtext_return_value = $j.ajax({
                type: "GET",    url: "http://localhost:3000/sequence_createds/text_sequenced",    data: $jsequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
                $j("#sequence_created form input#sequence_text").val($jtext_return_value);
              var $jlexi_return_value = $j.ajax({
                type: "GET",    url: "http://localhost:3000/sequence_createds/lexigram_sequenced",    data: $jsequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
                $j("#sequence_created form input#sequence_lexigram").val($jlexi_return_value);
              var $jcreation_return_value = $j.ajax({
                type: "GET",    url: "http://localhost:3000/sequence_createds/creation_sequenced",    data: $jsequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
                $j("#sequence_created form input#sequence_creation").val($jcreation_return_value);
              var $jcomplete_return_value = $j.ajax({
                type: "GET",    url: "http://localhost:3000/sequence_createds/complete_sequenced",    data: $jsequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
                $j("#sequence_created form input#sequence_complete").val($jcomplete_return_value);
              var $jsingular_return_value = $j.ajax({
                type: "GET",    url: "http://localhost:3000/sequence_createds/singular_sequenced",    data: $jsequencetext,    async: false,    dataType: 'script',    success: function(data) {    alert(data);    }    }).responseText;
                $j("#sequence_created form input#sequence_singular").val($jsingular_return_value);
                $j("#anagram form input#description").focus();
            }
          }
          else
          {
            $j('input#anagram_text').val("");
            $j('input#sequence_text').val("");
            $j('input#sequence_creation').val("");
            $j('input#sequence_complete').val("");
            $j('input#sequence_lexigram').val("");
            $j('input#sequence_singular').val("");
            $j('input#sequence_lense').val("");
          }
    });
  });
  
$j(document).ready(  function() {
    $j('#search_sequence_singulars form input#sequencetext').val("Enter your data");
    $j('#search_sequence_lexigrams form input#sequencetext').val("Enter your data");
    $j('#search_sequence_completes form input#sequencetext').val("Enter your data");
    $j('#search_sequence_creations form input#sequencetext').val("Enter your data");
    $j('#search_sequence_texts form input#sequencetext').val("Enter your data");
  });

