// submission of new_sequences, 
// while ignoring the sequencetext form. 
// the sequencetext form is NOT submitted,
// the new_sequence form   IS   submitted.

$j(document).ready(
  $j('input#sequencetextSubmit').submit(function() {
    var $jsequencetextSubmit = document.getElementById('sequencetext');
    $jsequencetextSubmit.form.submit = function() { return false; };
  })
  );
  
$j(document).ready(
  $j('input#sequence_submit').bind(
   'submit',function(event) {
    var $jsequence_text = $j('input#sequence_sequence_text').val();
    var $jsequenceSubmit = document.getElementById('sequence_submit');
    var $jsubmit = document.getElementById('sequence_sequence_text');
    $jsubmit.form.submit = function() { return false; };
    if ($j('input#sequence_sequence_text').val() === '') {
      $j('input#sequencetext').fadeTo(700, 0.2);
      $j('input#sequencetext').fadeTo(400, 0.9);
      $j('input#sequencetext').val("");
      $jsubmit.form.submit = function() { return false; };
      $j('input#sequencetext').focus();
      }
    else if ($j('#sequencetext').val() === "Please Enter Your Data") {
      $jsubmit.form = function() { return false; };
      $j('input#sequencetext').fadeTo(700, 0.2);
      $j('input#sequencetext').fadeTo(400, 1.0);
      $j('input#sequencetext').val("");
      $jsubmit.form.submit = function() { return false; };
      $j('input#sequencetext').focus();
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
  