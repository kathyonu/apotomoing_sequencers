$j(document).ready(
  function() {
    $j('input#anagramListOpen').click(
      function($e) {
        $j('#anagramListDisplay').show('fast');
      }
    );
    
    $j('input#anagramListClose').click(
      function($e) {
        $j('#anagramListDisplay').hide('10000');
      }
    );
  }
);
