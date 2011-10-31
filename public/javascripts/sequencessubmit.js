// in progress work on submission of new_sequences, 
// while ignoring the sequencetext form. 
// the sequencetext form is not submitted,
// the new_sequence form  is  submitted.

$j(document).ready(
  function() {
    $j('input#sequencetext').val("Tab in, enter name, word or phrase here, then tab out", "")
  });
  
$j(document).ready(
  function(click) {
  //var $jsequence = $j('form > input#sequence_sequence_text');
    var $jsequence_text = $j('input#sequence_sequence_text').val();
    var $jsequence = document.getElementById('sequence_sequence_text');
  //var $jsequencetext = newsequences.value;
    $jsequence.form.onsubmit = function() { return false; };
    if ($jsequence_text != "") {
      if (this.value != 'Tab in, enter name, word or phrase here, then tab out') {
        if (this.value != 'Please Enter Your Data') {
          if (this.value != 'Last chance to enter the data grasshopper') {
          //$jsequence.form.submit
            $j('form#new_sequence input#submit').submit();    // research #TODO, do these two submit codes do the same ?
          }
        }
      }
    }
    else if ($jsequence_text == "") {
      $j('input#sequencetext').val("Last chance to enter the data grasshopper", "");
      $j('input#sequencetext').fadeTo(500, 0.3).delay(200).end();
      $j('input#sequencetext').val("");    
      $j('input#sequencetext').fadeTo(200, 1.0).end().focus();
    }
  });
    