$j(document).ready(
  function() {
    $j('input#anagramListOpen').click(
      function($je) {
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
