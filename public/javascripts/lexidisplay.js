//  this file name is app/public/javascript/lexidisplay.js
//  this file affects this file: app/sequence/views/new.html.erb
//  this code passes JSHint : 20111105:06:07

//  this code below uses : app/views/sequences/_text_sequenced.js.erb in the ajax url call
//  this code below uses : app/views/sequences/_creation_sequenced.js.erb in the ajax url call
//  this code below uses : app/views/sequences/_complete_sequenced.js.erb in the ajax url call
//  this code below uses : app/views/sequences/_lexigram_sequenced.js.erb in the ajax url call
//  this code below uses : app/views/sequences/_singular_sequenced.js.erb in the ajax url call
// 
//  solid gold code, generates all five sequences from any sequencetext entry by the user
//  #TODO : set up all five sequences on an ajax call to its ruby method call : tododate 20111002 : done on 20111029
//  #TODO - app/views/sequences/_text_sequenced.js.erb done
//  #TODO - app/views/sequences/_creation_sequenced.js.erb done
//  #done - app/views/sequences/_lexigram_sequenced.js.erb : completed on 20110928
//  #TODO - app/views/sequences/_complete_sequenced.js.erb done
//  #TODO - app/views/sequences/_singular_sequenced.js.erb done
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
// var  $jsequencetext = "test";

$j(document).ready(
  function() {
    $j('#sequencetext').bind(
      'focusin',function(event) {
        if ($j('sequencetext').val() === "Please Enter Your Data") {
          $j('#sequencetext').val("");
          }
        else
          {
        $j('#sequencetest').focus();
//    $j('#sequencetext').bind(
//      'focusin',function(event) {
//        if (this.value === 'Tab in, enter name, word or phrase here, then tab out') {
//          (this.value = '');
//        }
//        if (this.value === 'Please Enter Your Data') {
//          (this.value = '');
          }
      }
    ).bind(
      'focusout',function(event) {
      //  if (this.value === 'Tab in, enter name, word or phrase here, then tab out') {
     //     (this.value = 'Please Enter Your Data');
    //    }
   //     else if (this.value === 'Please Enter Your Data') {
  //        (this.value = 'Last chance to enter the data grasshopper');
 //       }
//        else if (this.value !== '') {
        if (this.value !== '') {
          if (this.value !== "Please Enter Your Data") {
            var $jnewsequence = document.getElementById('sequencetext');
            var $jsequencetext = $j('input#sequencetext').serialize();
          
////////  $jnewsequence.form.onsubmit = function() { return false; };
///////   ^^ commenting this out, is what got the program going again !!!
//////   ^^^ commenting it out, allowed the new_sequence form to submit !!
/////   ^^^^^ I don't understand why that is : 20111106

//////// these are the original javascript sequencers,
///////  ^ now replaced with the ajax calls to process the sequencings with Ruby
//        $j('input#sequence_sequence_text').val(this.value);  # pure js, no ruby
//        var $jcreation = (this.value).toString();
//        $j('input#sequence_sequence_creation').val($jcreation.toString().replace(/\s/g,''));
//        var $jcomplete = (this.value).split('').sort().join('').trim();  # pure js, no ruby
//        $j('input#sequence_sequence_complete').val($jcomplete);  # pure js, no ruby
//        var $jsingulars = $jcomplete.split('').sort();  # pure js, no ruby
//        var $jsingular = $j.unique($jsingulars).reverse();  # pure js, no ruby
//        $j('input#sequence_sequence_singular').val(($jsingular.toString().replace(/,/g,'')));  # pure js, no ruby
          
//          $j.ajax.setup({
  //          type: "GET", 
    //        data: $jsequencetext,
      //      async: false,
        //    dataType: 'script',
          //  });
         
          var $jtext_return_value = $j.ajax({
            type: "GET", 
            url: "http://localhost:3000/sequences/text_sequenced", 
            data: $jsequencetext,
            async: false,
            dataType: 'script',
            success: function(data) {
            alert(data);
              }
            }).responseText;
          $j("input#sequence_sequence_text").val($jtext_return_value);
          var $jlexi_return_value = $j.ajax({
            type: "GET", 
            url: "http://localhost:3000/sequences/lexigram_sequenced", 
            data: $jsequencetext,
            async: false,
            dataType: 'script',
            success: function(data) {
            alert(data);
              }
            }).responseText;
          $j("input#sequence_sequence_lexigram").val($jlexi_return_value);
          var $jcreation_return_value = $j.ajax({
            type: "GET", 
            url: "http://localhost:3000/sequences/creation_sequenced", 
            data: $jsequencetext,
            async: false,
            dataType: 'script',
            success: function(data) {
            alert(data);
              }
            }).responseText;
          $j("input#sequence_sequence_creation").val($jcreation_return_value);
          var $jcomplete_return_value = $j.ajax({
            type: "GET", 
            url: "http://localhost:3000/sequences/complete_sequenced", 
            data: $jsequencetext,
            async: false,
            dataType: 'script',
            success: function(data) {
            alert(data);
              }
            }).responseText;
          $j("input#sequence_sequence_complete").val($jcomplete_return_value);
          var $jsingular_return_value = $j.ajax({
            type: "GET", 
            url: "http://localhost:3000/sequences/singular_sequenced", 
            data: $jsequencetext,
            async: false,
            dataType: 'script',
            success: function(data) {
            alert(data);
              }
            }).responseText;
          $j("input#sequence_sequence_singular").val($jsingular_return_value);
          $j('input#sequence_description').focus();
          }
        }
        else
        {
          $j('input#sequencetext').val('Please Enter Your Data');
          $j('input#sequence_sequence_text').val("");
          $j('input#sequence_sequence_creation').val("");
          $j('input#sequence_sequence_complete').val("");
          $j('input#sequence_sequence_lexigram').val("");
          $j('input#sequence_sequence_singular').val("");
          }
        });
  });
  