// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(
  function() {
    $('input#sequencerOpen').click(
      function($e) {
        $('#sequencerWidgetDisplay').show('slow');
      }
    );
    
    $('input#sequencerClose').click(
      function($e) {
        $('#sequencerWidgetDisplay').hide('30000');
      }
    );
  }
);

