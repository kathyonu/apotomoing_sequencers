// this js prevents the computed sequences from being changed by user
// these below affect the app/views/sequences/edit.html.erb

$j(document).ready(
  function() {
    $j('form input#sequence_sequence_text').bind({
      focusin: function(event) {
        $j('form input#sequence_sequence_text').blur(),
        $j('form input#sequence_sequence_creation').blur(),
        $j('form input#sequence_sequence_complete').blur(),
        $j('form input#sequence_sequence_lexigram').blur(),
        $j('form input#sequence_sequence_singular').blur();
      }
    });
  });
  

$j(document).ready(
  function() {
    $j('form input#sequence_sequence_creation').bind({
      focusin: function(event) {
        $j('form input#sequence_sequence_text').blur(),
        $j('form input#sequence_sequence_creation').blur(),
        $j('form input#sequence_sequence_complete').blur(),
        $j('form input#sequence_sequence_lexigram').blur(),
        $j('form input#sequence_sequence_singular').blur();
      }
    });
  });
  
$j(document).ready(
  function() {
    $j('form input#sequence_sequence_complete').bind({
      focusin: function(event) {
        $j('form input#sequence_sequence_text').blur(),
        $j('form input#sequence_sequence_creation').blur(),
        $j('form input#sequence_sequence_complete').blur(),
        $j('form input#sequence_sequence_lexigram').blur(),
        $j('form input#sequence_sequence_singular').blur();
      }
    });
  });
  
$j(document).ready(
  function() {
    $j('form input#sequence_sequence_lexigram').bind({
      focusin: function(event) {
        $j('form input#sequence_sequence_text').blur(),
        $j('form input#sequence_sequence_creation').blur(),
        $j('form input#sequence_sequence_complete').blur(),
        $j('form input#sequence_sequence_lexigram').blur(),
        $j('form input#sequence_sequence_singular').blur();
      }
    });
  });
  
$j(document).ready(
  function() {
    $j('form input#sequence_sequence_singular').bind({
      focusin: function(event) {
        $j('form input#sequence_sequence_text').blur(),
        $j('form input#sequence_sequence_creation').blur(),
        $j('form input#sequence_sequence_complete').blur(),
        $j('form input#sequence_sequence_lexigram').blur(),
        $j('form input#sequence_sequence_singular').blur();
      }
    });
  });
