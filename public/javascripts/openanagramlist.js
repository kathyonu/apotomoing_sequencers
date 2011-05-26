$(document).ready(
  function() {
    $('input#anagramListOpen').click(
      function($e) {
        $('#anagramListDisplay').show('fast');
      }
    );
    
    $('input#anagramListClose').click(
      function($e) {
        $('#anagramListDisplay').hide('10000');
      }
    );
  }
);
