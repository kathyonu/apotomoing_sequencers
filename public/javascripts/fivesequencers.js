$j(document).ready(
  function() {
    $j('#anagram form #anagram_text').bind({
      blur: function($je) {
        var firstText =  $j($je);
        $j('.formSequenceCreated #sequence_text').text('here i am'),
        $j('.formSequenceCreated #sequence_creation').text('hereiam'),
        $j('.formSequenceCreated #sequence_complete').text('aeehimr'),
        $j('.formSequenceCreated #sequence_lexigram').text('aeehimr'),
        $j('.formSequenceCreated #sequence_singular').text(firstText);
      }
    });
  }
);
