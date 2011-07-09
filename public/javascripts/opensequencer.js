$j(document).ready(
  function() {
    $j('input#sequencerOpen').click(
      function($je) {
        $j('.sequenceCreatedWidgetDisplay').show();
        $j('#anagramListDisplay').hide();
        $j('#sequencerWidgetDisplay').show();  /* to keep distance below bottom of display for the open sequencer widget button */
      }
    );
  });
    
$j(document).ready(
  function() {
    $j('input#sequencerClose').click(
      function($je) {
        $j('.sequenceCreatedWidgetDisplay').show();
        $j('#sequencerWidgetDisplay').hide();
      }
    );
  });
  