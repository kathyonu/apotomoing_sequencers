// this file name is app/public/javascript/sequencenewsequencers.js
// this file affects app/views/sequences/new.html.erb
// this js file is not yet fully functional code
// to see working code, see fivesequencers.js which processes the first five sequences from user entry.

$j(document).ready(
  function() {
    $j('input#sequenceEntry').bind(
      'focusin',function(event) {
        if (this.value == 'Enter_Your_Data') {
          (this.value = '')
        }
        if (this.value == 'Please Enter Your Data') {
            (this.value = '')
        }
      }
    ).bind(
      'focusout',function(event) {
        if (this.value == 'Enter_Your_Data') {
          (this.value = '')
          $j('input#sequenceEntry').focus();
        }  
        var sequence = document.getElementById('sequence_sequence_text');
          // alert("sequence.nodeName = " + sequence.nodeName)          // INPUT
          // alert("sequence.nodeType = " + sequence.nodeType)          // 1
          // alert("sequence.nodeValue = " + this.value)                // asdf
        if ($j('input#sequenceEntry').val() !== '') {
          sequence.form.onsubmit = function() { return false; }
        var sequenceentry = $j('input#sequenceEntry').val();
          // alert("sequenceentry = " + sequenceentry)                  // asdf
        var sequencetext = document.getElementById('sequence_sequence_text'); 
          // alert("sequencetext = " + sequencetext.nodeName)           // INPUT
          // alert("sequencetext = " + sequencetext.nodeType)           // 1
          // alert("sequencetext = " + sequencetext.nodeValue)          // null, as it should be, data not yet processed, entered
        $j('input#sequence_sequence_text').val(sequenceentry);
        var $jcreation = sequencetext.value.toString();
        $j('input#sequence_sequence_creation').val(($jcreation.toString().replace(/\s/g,'')));
        var complete = sequencetext.value.split('').sort().join('').trim();
        $j('input#sequence_sequence_complete').val(complete);
        var lexigrams = sequencetext.value.split('').sort().reverse().join('').trim();
        $j('input#sequence_sequence_lexigram').val(lexigrams);
        var $jsingulars = lexigrams.split('').sort(); 
        var $jsingular = $j.unique($jsingulars).reverse();
        $j('input#sequence_sequence_singular').val(($jsingular.toString().replace(/,/g,'')));
        $j('input#sequence_description').focus();
      }
        else
      {
        $j('input#sequenceEntry').val('Please Enter Your Data');
        $j('#sequence form input#sequence_sequence_text').val("");
        $j('#sequence form input#sequence_sequence_creation').val("");
        $j('#sequence form input#sequence_sequence_complete').val("");
        $j('#sequence form input#sequence_sequence_lexigram').val("");
        $j('#sequence form input#sequence_sequence_singular').val("");
      }
    })
  });
