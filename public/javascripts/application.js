// called from app/views/layouts/application.html.erb

// this function affects views/sequencs/new.html.erb by hiding the sequencetext form submit button
$j(document).ready(
  function() {
    $j('input#sequencetext_submit').hide();
  });
  
// this function sets the initial data in the sequencetext box in views/sequences/new.html.erb
$j(document).ready(
  function() {
    $j('input#sequencetext').val("Tab in, enter name, word or phrase here, then tab out", "");
  });

$j(document).ready(
  function() {
    var $jabba = $j('input#sequencetext').val();
    var $jbaab = "Tab in, enter name, word or phrase here, then tab out";
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