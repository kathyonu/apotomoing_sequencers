// in progress work on submission of new_sequences, 
// while ignoring the sequencetext form. 
// the sequencetext form is not submitted,
// the new_sequence form  is  submitted.
// this line beginning   //> reflects a command can be run in the console
// 20111102 \/
// passes JSLint, and in the console fires the submit and the show page returns.

// passes JSHint : 20111106:07
$j(document).ready(
  function() {
    var $jsequencetextSubmit = document.getElementById('sequencetext');
    $jsequencetextSubmit.form.submit = function() { return false; };
  });
  

$j(document).ready(
  function(click) {
    // var sequence = document.getElementById('sequence_sequence_text');        // sequence variable not used at this time
    // sequence                                                                 // returns : [object HTMLInputElement]
    // sequence.form                                                            // returns : [object HTMLFormElement]
    // sequence.form.submit                                                     // returns : function submit() {[native code]}
    // sequence.form.submit();                                                  // returns : THE ACTUAL SUBMIT
    var $jsequence_text = $j('input#sequence_sequence_text').val();             // 
    var $jsequenceSubmit = document.getElementById('sequence_submit');          // returns : [object HTMLInputElement]
    var $jsubmit = document.getElementById('sequence_sequence_text');                  // returns : [object HTMLInputElement]
    //  $jsubmit.form                                                           // returns : [object HTMLFormElement]
    //  $jsubmit.form.onsubmit                                                  // returns : (function () {return false;})
    //  $jsubmit.form.submit();                                                 // returns : THE ACTUAL SUBMIT
    //  $jsubmit.form.click = function() { return false; } ;                    // returns : (function () {return false;})
    $jsubmit.form = function() { return false; } ;                              // returns : (function () {return false;})

// \/ causes post to occur
// submit.form.submit(function() {return false} );                               //
// submit.form.submit(function() {return false} );                               //

  //$jnewsequence_text.form.onsubmit = function() { return false} ;

  // var $jsequencesSubmit = document.getElementById('sequence_sequence_text');
  //$jsequencesSubmit.form.onclick.submit = function() { return false; };        // same as below
  //$jsequencesSubmit.parentNode.click = function() { return false; };           // same as above
  // works var sequence = document.getElementById('sequences_submit');
  //var sequence = document.getElementById('sequences_submit');
  //var sequence = document.getElementById('sequence_sequence_text');
  //var sequence = document.getElementById('sequence_sequence_text');
  //var $jsequencetext = newsequences.value;
  //sequence.form.onclick = function() { return false; };     # both this and next one work
    
    
  //      if (this.value !== 'Please Enter Your Data') {
//      submit.form.submit();
        $jsubmit.form.click(function() {
          if ($j('sequence_sequence_text').val() === "Please Enter Your Data") {
            $j('input#sequencetext').focus();
            $j('input#sequencetext').val("");
            }
          else if ($jsequence_text === "") {
            $j('input#sequencetext').focus();
            }
          else ($jsequence_text !== "") {
            $jsubmit.form.submit();
            }
          //      submit.parentNode.removeChild(submit);
//      $jsequencesSubmit.form.submit(); 
//      $j('form#new_sequence input#sequence_submit').submit();
//      #TODO research : do these two submit codes do the same ?
        }
      );
    });
  // in the jQuery console while at localhost:3000/sequences/new : 
  // > document.forms.sequencetext           //  > [10:34:50.537] [object HTMLFormElement]
  // > document.forms.sequencetext.action    //  > [10:22:55.973] "http://localhost:3000/sequences"
  // > document.forms.sequences_submit       //  > zip, nada nothing.
  // > document.forms.sequence_sequence_text //  > nada, nothing
  // > document.forms.new_sequence           //  > zip, nada
    
    