$j(document).ready(
  function() {
    $j('input#sequencerOpen').click(
      function($je) {
        $j('#sequencerWidgetDisplay').show();
        $j('#anagramListDisplay').hide();
        $j('input#anagramListOpen').hide();
        $j('input#sequencerOpen').hide();
      }
    );
  });
    
$j(document).ready(
  function() {
    $j('input#sequencerClose').click(
      function($je) {
        $j('.sequenceCreatedWidgetDisplay').show();
        $j('#sequencerWidgetDisplay').hide();
        $j('input#anagramListOpen').show();
        $j('input#sequencerOpen').show();
        $j('#kathyonu').show();
      }
    );
  });
  