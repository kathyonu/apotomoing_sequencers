// this file name is app/public/javascript/trialanderror-lexigram_sequencer.js
// this file affects app/views/sequences/new.html.erb
// this file affects app/views/sequences/edit.html.erb
    
$j(document).ready(
  function() {
    $j('input#sequence_sequence_lexigram').val(' escape_javascript(<%= @lexigram_sequenced %>) ');
  });
  // [22:20:41.646] ({0:#1=({}), context:#1#, length:1})
  
// 
// 
  $j(document).ready(
    function() {
      $j('#sequenceEntry').bind(
        'focusout',function(event) {
        sequence.form[0].onsubmit = function() { return false; };
        sequenceEntry.form[0].onsubmit = function() { return false; };
          $this = (this.value);
          if (($this) !== '') {
            $j.ajax({
              url: "sequencing_lexigram",
              type: 'GET',
              data: $j('#sequenceEntry').serialize(), 
              dataType: 'text'
            }).bind(
              "success",function(event, data, status, xhr) {
                $j('#sequence_sequence_lexigram').val(data);
            });
          }
        });
    });
  // [20:07:22.930] ({length:1, 0:({}), context:({}), selector:"#sequenceEntry"})