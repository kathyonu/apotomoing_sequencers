// this file name is app/public/javascript/sequencenewsequencers.js
// this file affects app/views/sequences/new.html.erb
// this file affects app/views/sequences/edit.html.erb

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
        if (this.value !== '') {
          var sequence = document.getElementById('sequence_sequence_text');
          var sequenceEntry = sequence.nodeValue;
          //sequence.form.onsubmit = function() { return false; }
          $j('input#sequence_sequence_text').val(this.value);
          var $jcreation = (this.value).toString();
          $j('input#sequence_sequence_creation').val(($jcreation.toString().replace(/\s/g,'')));
          var complete = (this.value).split('').sort().join('').trim();
          $j('input#sequence_sequence_complete').val(complete);
////////  var lexigrams = $j.ajax( write the call to > lexigram_sequencer(this.value);
          var lexigrams = (this.value).split('').sort().reverse().join('').trim();
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
