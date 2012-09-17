// flashes and sets the text for the user entry box in sequences/new.html.haml

// WIDGETS AND CELLS 

// flashes and sets the text for the user entry box in sequences/new.html.haml

//// this is probably flawed code
// flashes and sets the text for the user entry box in widgets/anagram/display.html.haml
//// this is probably flawed code
  



// SUBMIT HIDE : this function affects views/sequences/new.html.erb by 
// hiding the sequencetext form submit button
//$(document).ready(  function() {    $('input#sequencetext_submit').hide();  });            ::: duplicated somewhere in the files




/////////// these two are in one function
// FOCUSIN  on .new_entry_anagram > form > input#sequencetext
// FOCUSOUT generates the five sequences to sequence_created widget form, and the anagram_text to the anagram widget form.
/////////// the two above are in one function


// FOCUSIN on '#search_sequence_singulars form input#sequencetext'
// FOCUSIN on '#search_sequence_singulars form input#sequencetext'
$(document).ready(  function() {
  $('#search_sequence_singulars form input#sequencetext').bind(
    'focusin',function(event) {    
      $('#search_sequence_singulars form input#sequencetext').val("")
    })
  });

// FOCUSIN on '#search_sequence_lexigrams form input#sequencetext'
// FOCUSIN on '#search_sequence_lexigrams form input#sequencetext'
$(document).ready(  function() {
  $('#search_sequence_lexigrams form input#sequencetext').bind(
    'focusin',function(event) {    
      $('#search_sequence_lexigrams form input#sequencetext').val("")
    })
  });

// FOCUSIN on '#search_sequence_completes form input#sequencetext'
// FOCUSIN on '#search_sequence_completes form input#sequencetext'
$(document).ready(  function() {
  $('#search_sequence_completes form input#sequencetext').bind(
    'focusin',function(event) {    
      $('#search_sequence_completes form input#sequencetext').val("")
    })
  }); 

// FOCUSIN on '#search_sequence_creations form input#sequencetext'
// FOCUSIN on '#search_sequence_creations form input#sequencetext'
$(document).ready(  function() {
  $('#search_sequence_creations form input#sequencetext').bind(
    'focusin',function(event) {    
      $('#search_sequence_creations form input#sequencetext').val("")
    })
  });

// FOCUSIN on '#search_sequence_texts form input#sequencetext'
// FOCUSIN on '#search_sequence_texts form input#sequencetext'
$(document).ready(  function() {
  $('#search_sequence_texts form input#sequencetext').bind(
    'focusin',function(event) {    
      $('#search_sequence_texts form input#sequencetext').val("")
    })
  });

// SUBMIT on .new_entry_sequence form input#sequence_submit
// SUBMIT on .new_entry_sequence form input#sequence_submit
$(document).ready( function() {
  $('.new_entry_sequence form input#sequence_submit').bind(
    'submit',function(event) {
      var $sequencetext = $('.new_entry_sequence form input#sequencetext').val();
      var $sequenceSubmit = document.getElementById('sequence_submit');
      var $submit = document.getElementById('sequencetext_submit');
      $sequenceSubmit.form.onsubmit = function() { return false; };
      $submit.form.onsubmit = function() { return false; };
      if ($sequencetext === "") {
        $('.new_entry_sequence form input#sequencetext').fadeTo(700, 0.2);
        $('.new_entry_sequence form input#sequencetext').fadeTo(400, 0.9);
        $('.new_entry_sequence form input#sequencetext').val("Enter Your Data, then tab out");
        $sequenceSubmit.form.onsubmit = function() { return false; };
        $submit.form.onsubmit = function() { return false; };
        $('.new_entry_sequence form input#sequencetext').focus();
        }
      else if ($sequencetext === "Enter Data, then tab out") {
        $('.new_entry_sequence form input#sequencetext').fadeTo(700, 0.2);
        $('.new_entry_sequence form input#sequencetext').fadeTo(400, 0.9);
        $('.new_entry_sequence form input#sequencetext').val("Enter Your Data, then tab out");
        $sequenceSubmit.form.onsubmit = function() { return false; };
        $submit.form.onsubmit = function() { return false; };
        $('.new_entry_sequence form input#sequencetext').focus();
        }
      else if ($sequencetext === "Enter Your Data, then tab out") {
        $('.new_entry_sequence form input#sequencetext').fadeTo(700, 0.2);
        $('.new_entry_sequence form input#sequencetext').fadeTo(400, 1.0);
        $('.new_entry_sequence form input#sequencetext').val("");
        $sequenceSubmit.form.onsubmit = function() { return false; };
        $submit.form.onsubmit = function() { return false; };
        $('.new_entry_sequence form input#sequencetext').focus();
        }
      else if ($sequencetext === "Please Enter Your Data, then tab out") {
        $('.new_entry_sequence form input#sequencetext').fadeTo(700, 0.2);
        $('.new_entry_sequence form input#sequencetext').fadeTo(400, 1.0);
        $('.new_entry_sequence form input#sequencetext').val("");
        $sequenceSubmit.form.onsubmit = function() { return false; };
        $submit.form.onsubmit = function() { return false; };
        $('.new_entry_sequence form input#sequencetext').focus();
        }
      else {
        if ($('.newSequence form input#sequence_sequence_text').val() != "") {
          if ($('.newSequence form input#sequence_sequence_creatioin').val() != "") {
            if ($('.newSequence form input#sequence_sequence_complete').val() != "") {
              if ($('.newSequence form input#sequence_sequence_lexigram').val() != "") {
                if ($('.newSequence form input#sequence_sequence_singular').val() != "") {
                  $sequenceSubmit.form.click.submit();
                  }
                }
              }
           }
         }
      }
    })
  });

// enter your data reminder : this is probably wrong code

// flashes the box if it is empty when user tabs out

// FOCUSIN on .new_entry_sequence form input#sequencetext

// FOCUSIN on '.new_edit form input#sequencetext'

// OPEN anagram list

// OPEN widget sequencer

// CLOSE widget sequencer

// FOCUSIN on #anagram form input#ANAGRAM_TEXT

// FOCUSOUT on anagram widget text entry

// FOCUSIN on #anagram form input#DESCRIPTION

// FOCUSIN on #anagram form input#REFERENCE

// RESET empties out all form data where RESET button shows in widgets


