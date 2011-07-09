// this js prevents the computed sequences from being changed by user

$j(document).ready(
  function() {
    $j('.formSequenceCreated input#sequence_text').bind({
      focusin: function(event) {
        $j('.formSequenceCreated input#sequence_text').blur(),
        $j('.formSequenceCreated input#sequence_creation').blur(),
        $j('.formSequenceCreated input#sequence_complete').blur(),
        $j('.formSequenceCreated input#sequence_lexigram').blur(),
        $j('.formSequenceCreated input#sequence_singular').blur(),
        $j('#sequence_created form input#submit').removeClass('.sequencesubmit'),
        $j('#sequence_created form input#submit').addClass('.submitsequence'),
        $j('#sequence_created form input#submit').focus();
      }
    });
  });
  

$j(document).ready(
  function() {
    $j('.formSequenceCreated input#sequence_creation').bind({
      focusin: function(event) {
        $j('.formSequenceCreated input#sequence_text').blur(),
        $j('.formSequenceCreated input#sequence_creation').blur(),
        $j('.formSequenceCreated input#sequence_complete').blur(),
        $j('.formSequenceCreated input#sequence_lexigram').blur(),
        $j('.formSequenceCreated input#sequence_singular').blur(),
        $j('#sequence_created form input#submit').removeClass('.sequencesubmit'),
        $j('#sequence_created form input#submit').addClass('.submitsequence'),
        $j('#sequence_created form input#submit').focus();
      }
    });
  });
  
$j(document).ready(
  function() {
    $j('.formSequenceCreated input#sequence_complete').bind({
      focusin: function(event) {
        $j('.formSequenceCreated input#sequence_text').blur(),
        $j('.formSequenceCreated input#sequence_creation').blur(),
        $j('.formSequenceCreated input#sequence_complete').blur(),
        $j('.formSequenceCreated input#sequence_lexigram').blur(),
        $j('.formSequenceCreated input#sequence_singular').blur(),
        $j('#sequence_created form input#submit').removeClass('.sequencesubmit'),
        $j('#sequence_created form input#submit').addClass('.submitsequence'),
        $j('#sequence_created form input#submit').focus();
      }
    });
  });
  
$j(document).ready(
  function() {
    $j('.formSequenceCreated input#sequence_lexigram').bind({
      focusin: function(event) {
        $j('.formSequenceCreated input#sequence_text').blur(),
        $j('.formSequenceCreated input#sequence_creation').blur(),
        $j('.formSequenceCreated input#sequence_complete').blur(),
        $j('.formSequenceCreated input#sequence_lexigram').blur(),
        $j('.formSequenceCreated input#sequence_singular').blur(),
        $j('#sequence_created form input#submit').removeClass('.sequencesubmit'),
        $j('#sequence_created form input#submit').addClass('.submitsequence'),
        $j('#sequence_created form input#submit').focus();
      }
    });
  });
  
$j(document).ready(
  function() {
    $j('.formSequenceCreated input#sequence_singular').bind({
      focusin: function(event) {
        $j('.formSequenceCreated input#sequence_text').blur(),
        $j('.formSequenceCreated input#sequence_creation').blur(),
        $j('.formSequenceCreated input#sequence_complete').blur(),
        $j('.formSequenceCreated input#sequence_lexigram').blur(),
        $j('.formSequenceCreated input#sequence_singular').blur(),
        $j('#sequence_created form input#submit').removeClass('.sequencesubmit'),
        $j('#sequence_created form input#submit').addClass('.submitsequence'),
        $j('#sequence_created form input#submit').focus();
      }
    });
  });

$j(document).ready(
  function() {
    $j('#sequence_created form input#submit').bind({
      focusin: function(event) {
        $j('.formSequenceCreated input#sequence_text').blur(),
        $j('.formSequenceCreated input#sequence_creation').blur(),
        $j('.formSequenceCreated input#sequence_complete').blur(),
        $j('.formSequenceCreated input#sequence_lexigram').blur(),
        $j('.formSequenceCreated input#sequence_singular').blur(),
        $j('#sequence_created form input#submit').removeClass('.sequencesubmit'),
        $j('#sequence_created form input#submit').addClass('.submitsequence');
      }
    });
  });
