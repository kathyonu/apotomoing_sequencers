// resets the forms in the anagram and sequence_created widgets

$j(document).ready(
  function() {
    $j('#reset').bind(
      'click',function(event) {
        $j('#anagram form input#anagram_text').empty();
        $j('#anagram form input#description').empty();
        $j('#anagram form input#reference').empty();
        $j('#sequence_created form input#sequence_text').empty();
        $j('#sequence_created form input#sequence_creation').empty();
        $j('#sequence_created form input#sequence_complete').empty();
        $j('#sequence_created form input#sequence_lexigram').empty();
        $j('#sequence_created form input#sequence_singular').empty();
      }
    );
  });
