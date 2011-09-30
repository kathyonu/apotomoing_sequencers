//  this file name is app/public/javascript/lexidisplay.js
//  this file affects these files: 
//      app/widgets/lexi/display.html.haml
//      app/sequence/views//form.html.erb
// 
//  this code below uses : app/views/sequences/_lexigram_sequenced.js.erb in the ajax url call
// 
//  solid gold code, generates all five sequences from any sequencetext entry by the user
//
// set up these variables if running this code in the jQuery console
// var $j = jQuery;jQuery.noConflict();
// var $jsequencetext = "test";
//
// if running this code in the Ruby Console, 
// do these setups with the require statement, the :javascript escape,
// and the two varialbes, as follows ..
//
// this command in Terminal will begin the Ruby Console, then set it up for use with javascript :
// $ cd ./apotomoing_sequences
// $ rails c -s  
// > require "./lib/textual-fibering-methods.rb"
// > :javascript
// >   var $j = jQuery;jQuery.noConflict();
// >   var $jsequencetext = "test";
//
// Now various parts of this code below can be run in the Ruby Console for testing changes

$j(document).ready(
  function() {
    $j('#lexi form input#submit').hide();
  });

$j(document).ready(
  function() {
    $j('input#sequencetext').bind(
      'focusin',function(event) {
        if (this.value == 'Enter name, word or phrase here') {
          (this.value = '');
        }
        if (this.value == 'Please Enter Your Data') {
            (this.value = '');
        }
      }
    ).bind(
      'focusout',function(event) {
        if (this.value !== '') {
          var sequence = document.getElementById('sequencetext');
          var $jsequencetext = sequence.nodeValue;
          sequence.form.onsubmit = function() { return false; };
          $j('input#sequence_sequence_text').val(this.value);
          var $jcreation = (this.value).toString();
          $j('input#sequence_sequence_creation').val($jcreation.toString().replace(/\s/g,''));
          var $jcomplete = (this.value).split('').sort().join('').trim();
          $j('input#sequence_sequence_complete').val($jcomplete);
          var $jsingulars = $jcomplete.split('').sort();
          var $jsingular = $j.unique($jsingulars).reverse();
          $j('input#sequence_sequence_singular').val(($jsingular.toString().replace(/,/g,'')));
          var return_value = $j.ajax({
            type: "GET", 
            url: "http://localhost:3000/sequences/lexigram_sequenced", 
            data: $j('#sequencetext').serialize(),
            dataType: 'script', 
            async: false,
            success: function(data, textStatus, xhr) {
              alert(data);
              alert(textStatus);
              alert(eval(xhr.responseText)); 
              }
            }).responseText;
          $j("#sequence_sequence_lexigram").val(return_value);
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