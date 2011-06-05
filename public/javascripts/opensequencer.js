$j(document).ready(
  function() {
    $j('input#sequencerOpen').click(
      function($e) {
        $j('#sequencerWidgetDisplay').show('fast');
      }
    );
    
    $j('input#sequencerClose').click(
      function($e) {
        $j('#sequencerWidgetDisplay').hide('5000');
      }
    );
  }
);
