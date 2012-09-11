// SUBMIT on .new_entry_sequence form input#sequence_submit
$(document).ready(
  $('.new_entry_sequence form input#sequence_submit').bind(
   'submit',function(event) {
    var $sequence_text = $('input#sequence_sequence_text').val();
    var $sequenceSubmit = document.getElementById('sequence_submit');
    var $submit = document.getElementById('sequence_sequence_text');
    $submit.form.onsubmit = function() { return false; };
    if ($('input#sequence_sequence_text').val() === "") {
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
    else if ($('input#sequence_sequence_text').val() != '') {
      if ($('input#sequence_sequence_creatioin').val() != '') {
        if ($('input#sequence_sequence_complete').val() != '') {
          if ($('input#sequence_sequence_lexigram').val() != '') {
            if ($('input#sequence_sequence_singular').val() != '') {
            $sequenceSubmit.form.click.submit();
            }
          }
        }
      }
    }
  })
);
