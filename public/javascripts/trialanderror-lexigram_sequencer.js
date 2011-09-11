// this file name is app/public/javascript/trialanderror-lexigram_sequencer.js
// this file affects app/views/sequences/new.html.erb
// this file affects app/views/sequences/edit.html.erb
    
$j(document).ready(
  function() {
    $j('input#sequenceEntry').bind(
      'focusout',function(event) {
       $this = (this.value);
       if (($this) !== '') {
         alert("alert = " + $this );
       $j.ajax({
    //   url: "sequence_lexigram",
    //   url: "lexigram_sequence",
         url: "lexigraming.js.erb",
    //   url: "../../../app/views/sequences/sequence_lexigram.js.erb",
    //   url: "../../../public/javascript/sequence_lexigram.txt",
         data: $j('input#sequenceEntry').serialize(), 
         dataType: "script"},
         "ajax:success",function(data){
         $j('form input#sequence_sequence_lexigram').val(data);              // works
       //$j('#single').append(data);                                         // works
//       $j('input#sequence_sequence_lexigram').val(data);                 // works
//       sequence.form.onsubmit = function() { return false; }
//       }).bind( 
  //     "ajax:complete",function(evt, xhr, status){
    //   $j('form#new_sequence input#sequence_sequence_lexigram').val(textResponse);
          })
 //       }
        }
      });
    });
