//  entered into all.js on 20111119

$j(document).ready(
  function() {
    $j('input#anagramListOpen').click(
      function($je) {
        $j('input#anagramListClose').show();
        $j('#anagramListDisplay').show();
        $j('.sequenceCreatedWidgetDisplay').hide();
      }
    );
    
    $j('input#anagramListClose').click(
      function($je) {
        $j('#anagramListDisplay').hide();
        $j('.sequenceCreatedWidgetDisplay').show();
      }
    );
  }
);
