// this js prevents the computed sequences from being changed by user
// this file affects the sequence_created widget
//
// these blurs can be replaced with the :readOnly attribute on the form input text elements, as used in sequences

$j(document).ready(
  function() {
    $j('#sequence_created form input#sequence_text').bind({
      focusin: function(event) {
        $j('#sequence_created form input#sequence_text').blur();
        $j('#sequence_created form input#sequence_creation').blur();
        $j('#sequence_created form input#sequence_complete').blur();
        $j('#sequence_created form input#sequence_lexigram').blur();
        $j('#sequence_created form input#sequence_singular').blur();
        $j('#sequence_created form input#submit').removeClass('.sequencesubmit');
        $j('#sequence_created form input#submit').addClass('.submitsequence');
        $j('#sequence_created form input#submit').focus();
      }
    });
  });
  

$j(document).ready(
  function() {
    $j('#sequence_created form input#sequence_creation').bind({
      focusin: function(event) {
        $j('#sequence_created form input#sequence_text').blur();
        $j('#sequence_created form input#sequence_creation').blur();
        $j('#sequence_created form input#sequence_complete').blur();
        $j('#sequence_created form input#sequence_lexigram').blur();
        $j('#sequence_created form input#sequence_singular').blur();
        $j('#sequence_created form input#submit').removeClass('.sequencesubmit');
        $j('#sequence_created form input#submit').addClass('.submitsequence');
        $j('#sequence_created form input#submit').focus();
      }
    });
  });
  
$j(document).ready(
  function() {
    $j('#sequence_created form input#sequence_complete').bind({
      focusin: function(event) {
        $j('#sequence_created form input#sequence_text').blur();
        $j('#sequence_created form input#sequence_creation').blur();
        $j('#sequence_created form input#sequence_complete').blur();
        $j('#sequence_created form input#sequence_lexigram').blur();
        $j('#sequence_created form input#sequence_singular').blur();
        $j('#sequence_created form input#submit').removeClass('.sequencesubmit');
        $j('#sequence_created form input#submit').addClass('.submitsequence');
        $j('#sequence_created form input#submit').focus();
      }
    });
  });
  
$j(document).ready(
  function() {
    $j('#sequence_created form input#sequence_lexigram').bind({
      focusin: function(event) {
        $j('#sequence_created form input#sequence_text').blur();
        $j('#sequence_created form input#sequence_creation').blur();
        $j('#sequence_created form input#sequence_complete').blur();
        $j('#sequence_created form input#sequence_lexigram').blur();
        $j('#sequence_created form input#sequence_singular').blur();
        $j('#sequence_created form input#submit').removeClass('.sequencesubmit');
        $j('#sequence_created form input#submit').addClass('.submitsequence');
        $j('#sequence_created form input#submit').focus();
      }
    });
  });
  
$j(document).ready(
  function() {
    $j('#sequence_created form input#sequence_singular').bind({
      focusin: function(event) {
        $j('#sequence_created form input#sequence_text').blur();
        $j('#sequence_created form input#sequence_creation').blur();
        $j('#sequence_created form input#sequence_complete').blur();
        $j('#sequence_created form input#sequence_lexigram').blur();
        $j('#sequence_created form input#sequence_singular').blur();
        $j('#sequence_created form input#submit').removeClass('.sequencesubmit');
        $j('#sequence_created form input#submit').addClass('.submitsequence');
        $j('#sequence_created form input#submit').focus();
      }
    });
  });

$j(document).ready(
  function() {
    $j('#sequence_created form input#submit').bind({
      focusin: function(event) {
        $j('#sequence_created form input#sequence_text').blur();
        $j('#sequence_created form input#sequence_creation').blur();
        $j('#sequence_created form input#sequence_complete').blur();
        $j('#sequence_created form input#sequence_lexigram').blur();
        $j('#sequence_created form input#sequence_singular').blur();
        $j('#sequence_created form input#submit').removeClass('.sequencesubmit');
        $j('#sequence_created form input#submit').addClass('.submitsequence');
      }
    });
  });
