//  this file name is app/public/javascript/textdisplay.js
//  this file WILL affect these files: 
//      app/widgets/anagrams/display.html.haml
//      app/widgets/sequence_createds/display.html.haml   <<<<<<<<<<<< ??
//      app/widgets/sequence_createds/form.html.erb       <<<<<<<<<<<< ?? 
//  #TODO after rewriting this below for the textdisplay.js, verify any files affected by this code : 20111004
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
// > require "./lib/sequencerings/textualfibers.rb"
// > :javascript
// > var $j = jQuery;jQuery.noConflict();
// > var $jsequencetext = "test";
//
// Now various parts of this code below can be run in the Ruby Console for testing changes 
//  using the jQuery console and the localhost browswer

$j(document).ready(
  function() {
    $j('#lexi form input#submit').hide();
  });

$j(document).ready(
  function() {
    $j('#lexi form input#sequencetext').bind(
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
          sequence_created.form.onsubmit = function() { return false; };

          var return_value = $j.ajax({
          type: "GET", 
          url: "http://localhost:3000/widgets/sequence_createds/display",    //        <<<<<<<<<<<<<<<<<<<<<<<<< 20111010 
        //  url: "http://localhost:3000/sequence_createds/_lexigram_sequencing", 
            data: $j('#sequencetext').serialize(),
            async: false,
            success: function(data, textStatus, xhr) {
              alert(data);
              alert(textStatus);
              alert(eval(xhr.responseText)); 
              }
            dataType: 'script',                                              //        <<<<<<<<<<<<<<<<<<<<<<<<< 20111010 moved down here    
            }).responseText;
          $j('input#sequence_sequence_text').val(return_value);
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