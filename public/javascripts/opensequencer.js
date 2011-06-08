$j(document).ready(
  function() {
    $j('input#sequencerOpen').click(
      function($je) {
      var anagramdisplay = $j('#anagramListDisplay');
        if (anagramdisplay.is(':visible')) {
          anagramdisplay.hide(),
          $j('#sequencerWidgetDisplay').slideDown();
        }
        else
        {
          $j('#sequencerWidgetDisplay').slideDown();
        }
      });
    
    $j('input#sequencerClose').click(
      function($je) {
        $j('#sequencerWidgetDisplay').slideUp();
        $j('.sequenceCreatedWidgetDisplay').show();
      }
    );
  }); 
