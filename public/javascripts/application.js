// called from app/views/layouts/application.html.erb

// this function affects the anagram widget, which works with sequence_createds widget
$j(document).ready(
  function() {
    $j('#anagram form input#submit').hide();
  });

// this function affects views/sequencs/new.html.erb by hiding the sequencetext form submit button
$j(document).ready(
  function() {
    $j('input#sequencetext_submit').hide();
  });
  
$j(document).ready(
  function() {
    var $jabba = $j('input#sequencetext').val();
    var $jbaab = "";
    if ($jabba === $jbaab) { 
      $j('input#sequencetext').fadeTo(500, 0.3).delay(100).end();
      $j('input#sequencetext').val("");
      $j('input#sequencetext').fadeTo(200, 1.0).end();
      $j('input#sequencetext').focus();
      }
        else
      {
        $j('input#sequencetext').val("");
        $j('input#sequencetext').focus();
      }
  });