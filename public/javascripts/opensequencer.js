$j(document).ready(
  function() {
    $j('input#sequencerOpen').click(
      function($je) {
        $j('#anagramListDisplay').hide(),
        $j('#sequencerWidgetDisplay').show(),
        $j('#sequencerWidgetDisplay').show(),
        $j('.sequenceCreatedWidgetDisplay').hide();
      }
    );
  });
    
$j(document).ready(
  function() {
    $j('input#sequencerClose').click(
      function($je) {
        $j('.sequenceCreatedWidgetDisplay').show(),
        $j('#sequencerWidgetDisplay').hide();
      }
    );
  });
  