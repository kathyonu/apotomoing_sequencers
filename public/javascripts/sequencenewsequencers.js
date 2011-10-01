// this file has been replaced by app/public/javascripts/lexidisplay.js : 20110929
//
// this file is no longer in use
//
// this file name is app/public/javascript/sequencenewsequencers.js
// this file affects app/views/sequences/new.html.erb
// this file affects app/views/sequences/edit.html.erb

// solid gold code, passes jshint rules

// set up this variable if running in console
// var $jsequencetext = "test";

$j(document).ready(
  function() {
//  $j('#sequenceEntry').bind(
    $j('input#sequencetext').bind(
      'focusin',function(event) {
        if (this.value == 'Enter_Your_Data') {
          (this.value = '');
        }
        if (this.value == 'Please Enter Your Data') {
            (this.value = '');
        }
      }
    ).bind(
      'focusout',function(event) {
        if (this.value !== '') {
          var sequence = document.getElementById('sequencetext');             // sequence.name => "sequence_text" // sequence.value => "aasdf asdf asdf"
        //var sequence = document.getElementById('sequence_sequence_text');   // sequence.name => "sequence[sequence_text]"
          var $jsequencetext = sequence.value;                                // => "asdf asdf asdf"
        //var $jsequencetext = sequence.nodeValue;                            // => returns null !!!  : discoverd this error on 20110925
          sequence.form.onsubmit = function() { return false; };
          $j('input#sequence_sequence_text').val(this.value);
          var $jcreation = (this.value).toString();
          $j('input#sequence_sequence_creation').val($jcreation.toString().replace(/\s/g,''));
          var $jcomplete = (this.value).split('').sort().join('').trim();
          $j('input#sequence_sequence_complete').val($jcomplete);
//        $j.ajax({url:"/lexigram_sequenced",type:"post",data:$j("#lexi > form").first(0).serialize(),success:function(data){alert(data)}});   // returns [17:32:36.514] POST http://localhost:3000/lexigram_sequenced [HTTP/1.1 404 Not Found 22ms]
       // $.ajax({url:"/lexigram_sequenced",type:"post",data:$("form").get(0).serialize(),success:function(data){alert(data)}})    // from Eviltwin on irc #jquery
          var $jsingulars = $jcomplete.split('').sort();
          var $jsingular = $j.unique($jsingulars).reverse();
          $j('input#sequence_sequence_singular').val(($jsingular.toString().replace(/,/g,'')));
          $j('input#sequence_description').focus();
        }
          else
        {
          $j('#sequencetext').val('Please Enter Your Data');
          $j('#sequence form input#sequence_sequence_text').val("");
          $j('#sequence form input#sequence_sequence_creation').val("");
          $j('#sequence form input#sequence_sequence_complete').val("");
          $j('#sequence form input#sequence_sequence_lexigram').val("");
          $j('#sequence form input#sequence_sequence_singular').val("");
       }
    });
  });
