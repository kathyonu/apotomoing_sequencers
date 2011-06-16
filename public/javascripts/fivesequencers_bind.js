$j(document).ready(
  function() {
    $j('#anagram form input#anagram_text').bind({
      focusout: function(event) {
        var firstText = $j('#anagram form input#anagram_text').text();
        $j('.formSequenceCreated#sequence_created form input#sequence_text').text('here i am');
        $j('.formSequenceCreated#sequence_created form input#sequence_creation').text('hereiam');
        $j('.formSequenceCreated#sequence_created form input#sequence_complete').text('aeehimr');
        $j('.formSequenceCreated#sequence_created form input#sequence_lexigram').text('aeehimr');
        $j('.formSequenceCreated#sequence_created form input#sequence_singular').text(firstText);
      }
    });
  }
);
