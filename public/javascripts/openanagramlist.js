$j(document).ready(
  function() {
    $j('input#anagramListOpen').click(
      function($je) {
        $j('#anagramListDisplay').show('fast');
        $j('.sequenceCreatedWidgetDisplay').hide('slow');
      }
    );
    
    $j('input#anagramListClose').click(
      function($je) {
        $j('#anagramListDisplay').hide('slow');
        $j('.sequenceCreatedWidgetDisplay').show('fast');
      }
    );
  }
);
