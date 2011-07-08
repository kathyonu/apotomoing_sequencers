$j(document).ready(
  function() {
    $j('forms[0]input#anagram_text').bind({
      focusout: function(event) {
        var firstText = $j('#anagram form input#anagram_text').text();
        $j('forms[1] input#sequence_text').text('here i am');
        $j('forms[1] input#sequence_creation').text('hereiam');
        $j('forms[1] input#sequence_complete').text('aeehimr');
        $j('forms[1] input#sequence_lexigram').text('aeehimr');
        $j('forms[1] input#sequence_singular').text(firstText);
      }
    });
  }
);
