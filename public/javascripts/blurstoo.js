// this js prevents the computed sequences from being changed by user
// these below affect the app/views/sequences/_form.html.erb

$j(document).ready(
  function() {
    $j('#new_sequence input#sequence_sequence_text').bind({
      focusin: function(event) {
        $j('#new_sequence input#sequence_sequence_text').blur();
        $j('#new_sequence input#sequence_sequence_creation').blur();
        $j('#new_sequence input#sequence_sequence_complete').blur();
        $j('#new_sequence input#sequence_sequence_lexigram').blur();
        $j('#new_sequence input#sequence_sequence_singular').blur();
      }
    });
  });
  

$j(document).ready(
  function() {
    $j('#new_sequence input#sequence_sequence_creation').bind({
      focusin: function(event) {
        $j('#new_sequence input#sequence_sequence_text').blur();
        $j('#new_sequence input#sequence_sequence_creation').blur();
        $j('#new_sequence input#sequence_sequence_complete').blur();
        $j('#new_sequence input#sequence_sequence_lexigram').blur();
        $j('#new_sequence input#sequence_sequence_singular').blur();
      }
    });
  });
  
$j(document).ready(
  function() {
    $j('#new_sequence input#sequence_sequence_complete').bind({
      focusin: function(event) {
        $j('#new_sequence input#sequence_sequence_text').blur();
        $j('#new_sequence input#sequence_sequence_creation').blur();
        $j('#new_sequence input#sequence_sequence_complete').blur();
        $j('#new_sequence input#sequence_sequence_lexigram').blur();
        $j('#new_sequence input#sequence_sequence_singular').blur();
      }
    });
  });
  
$j(document).ready(
  function() {
    $j('#new_sequence input#sequence_sequence_lexigram').bind({
      focusin: function(event) {
        $j('#new_sequence input#sequence_sequence_text').blur();
        $j('#new_sequence input#sequence_sequence_creation').blur();
        $j('#new_sequence input#sequence_sequence_complete').blur();
        $j('#new_sequence input#sequence_sequence_lexigram').blur();
        $j('#new_sequence input#sequence_sequence_singular').blur();
      }
    });
  });
  
$j(document).ready(
  function() {
    $j('#new_sequence input#sequence_sequence_singular').bind({
      focusin: function(event) {
        $j('#new_sequence input#sequence_sequence_text').blur();
        $j('#new_sequence input#sequence_sequence_creation').blur();
        $j('#new_sequence input#sequence_sequence_complete').blur();
        $j('#new_sequence input#sequence_sequence_lexigram').blur();
        $j('#new_sequence input#sequence_sequence_singular').blur();
      }
    });
  });
