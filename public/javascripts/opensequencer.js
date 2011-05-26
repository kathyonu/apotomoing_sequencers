$(document).ready(
  function() {
    $('input#sequencerOpen').click(
      function($e) {
        $('#sequencerWidgetDisplay').show('fast');
      }
    );
    
    $('input#sequencerClose').click(
      function($e) {
        $('#sequencerWidgetDisplay').hide('5000');
      }
    );
  }
);
