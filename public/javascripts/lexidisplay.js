//  this file name is app/public/javascript/lexidisplay.js
//  this file affects this file: 
//      app/sequence/views/new.html.erb
// 
//  this code below uses : app/views/sequences/_lexigram_sequenced.js.erb in the ajax url call
// 
//  solid gold code, generates all five sequences from any sequencetext entry by the user
//  CURRENTLY : only the lexigram_sequence is generated using an ajax call to a ruby js file at app/viws/sequences/_lexigram_sequenced.js.erb
//  #TODO : set up all five sequences on an ajax call to its ruby method call : tododate 20111002
//  #TODO - app/views/sequences/_text_sequenced.js.erb
//  #TODO - app/views/sequences/_creation_sequenced.js.erb
//  #done - app/views/sequences/_lexigram_sequenced.js.erb : completed on 20110928
//  #TODO - app/views/sequences/_complete_sequenced.js.erb
//  #TODO - app/views/sequences/_singular_sequenced.js.erb
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
// now in console;
// > include ApplicationHelper
// > :javascript
// > var $j = jQuery;jQuery.noConflict();
// > var $jsequencetext = "test";
//
// Now various parts of this code below can be run in the Ruby Console for testing changes 
//  using the jQuery console and the localhost browswer

// 20111010
// share link               : http://jsfiddle.net/sequencers/nzxyq/6/
// share full screen result : http://jsfiddle.net/sequencers/nzxyq/6/embedded/result/
// Embed on our page        : <iframe style="width: 100%; height: 300px" src="http://jsfiddle.net/sequencers/nzxyq/6/embedded/"></iframe>

// jQuery.noConflict();
// var $j = jQuery;
// var $jsequencetext = "test";
  
//$j(document).ready(
//  function() {
//    $j('#lexi > form > input#submit').hide();
//  });

$j(document).ready(
  function() {
//  $j('#lexi > form > input#sequencetext').bind(
    $j('#sequencetext').bind(
      'focusin',function(event) {
        if (this.value === 'Enter name, word or phrase here') {
          (this.value = '');
        }
        if (this.value === 'Please Enter Your Data') {
            (this.value = '');
        }
      }
    ).bind(
      'focusout',function(event) {
        if (this.value !== '') {
          var sequence = document.getElementById('sequencetext');
          var sequencetext = sequence.value;
          var newsequence = document.getElementById('sequence_sequence_text');
          newsequence.form.onsubmit = function() { return false; };
          $j('input#sequence_sequence_text').val(this.value);
          var $jcreation = (this.value).toString();
          $j('input#sequence_sequence_creation').val($jcreation.toString().replace(/\s/g,''));
          var $jcomplete = (this.value).split('').sort().join('').trim();
          $j('input#sequence_sequence_complete').val($jcomplete);
          var $jsingulars = $jcomplete.split('').sort();
          var $jsingular = $j.unique($jsingulars).reverse();
          $j('input#sequence_sequence_singular').val(($jsingular.toString().replace(/,/g,'')));
          var $jsequencetext = $j('#sequencetext').serialize();
          var $jreturn_value = $j.ajax({
            type: "GET", 
            url: "http://localhost:3000/sequences/lexigram_sequenced", 
            data: $jsequencetext,
            async: false,
            dataType: 'script',
            success: function(data) {
              alert(data);
              },
            async: false}).responseText;
          $j("input#sequence_sequence_lexigram").val($jreturn_value);
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