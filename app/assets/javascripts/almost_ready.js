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


// FOCUSIN FOCUSOUT on '#search_sequence_singulars form input#sequencetext'
// processes singular sequence from any entry, then searches that sequence in the database



// FOCUSIN on '#search_sequence_lexigrams form input#sequencetext'
// search_lexigram.js affects /views/lexigrams/display


// processes complete sequence from any entry, then searches that sequence in the database
// see app/assets/javascripts/search_complete.js



/////////// INPUT SEQUENCETEXT, processes the focusin and focusout and fires the sequencers with ajax calls
// FOCUSIN 
// FOCUSOUT 
///////////



// FOCUSIN FOCUSOUT on '#search_sequence_texts form input#sequencetext'



// SUBMIT on .new_entry_sequence form input#sequence_submit
// SUBMIT on .new_entry_sequence form input#sequence_submit
$(document).ready( function() {
  $('.new_entry_sequence form input#sequence_submit').bind(
    'submit',function(event) {
      var $sequencetext = $('input#sequencetext').val();
      var $sequenceSubmit = document.getElementById('sequence_submit');
      var $submit = document.getElementById('sequencetext_submit');
      $sequenceSubmit.form.onsubmit = function() { return false; };
      $submit.form.onsubmit = function() { return false; };
      if ($sequencetext === "") {
        $('input#sequencetext').fadeTo(700, 0.2);
        $('input#sequencetext').fadeTo(400, 0.9);
        $('input#sequencetext').val("Enter Your Data, then tab out");
        $sequenceSubmit.form.onsubmit = function() { return false; };
        $submit.form.onsubmit = function() { return false; };
        }
      else if ($sequencetext === "Enter Data, then tab out") {
        $('input#sequencetext').fadeTo(700, 0.2);
        $('input#sequencetext').fadeTo(400, 0.9);
        $('input#sequencetext').val("Enter Your Data, then tab out");
        $sequenceSubmit.form.onsubmit = function() { return false; };
        $submit.form.onsubmit = function() { return false; };
        }
      else if ($sequencetext === "Enter Your Data, then tab out") {
        $('input#sequencetext').fadeTo(700, 0.2);
        $('input#sequencetext').fadeTo(400, 1.0);
        $('input#sequencetext').val("");
        $sequenceSubmit.form.onsubmit = function() { return false; };
        $submit.form.onsubmit = function() { return false; };
        }
      else if ($sequencetext === "Please Enter Your Data, then tab out") {
        $('input#sequencetext').fadeTo(700, 0.2);
        $('input#sequencetext').fadeTo(400, 1.0);
        $('input#sequencetext').val("");
        $sequenceSubmit.form.onsubmit = function() { return false; };
        $submit.form.onsubmit = function() { return false; };
        }
      else {
        if ($('input#sequence_sequence_text').val() != "") {
          if ($('input#sequence_sequence_creatioin').val() != "") {
            if ($('input#sequence_sequence_complete').val() != "") {
              if ($('input#sequence_sequence_lexigram').val() != "") {
                if ($('input#sequence_sequence_singular').val() != "") {
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


