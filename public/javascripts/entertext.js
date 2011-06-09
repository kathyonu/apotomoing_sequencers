$j(document).ready(
  function() {
    $j('#anagram form #anagram_text').bind({
      focusin: function(event) {
        $j('#anagram form #anagram_text').css('backgroundColor', 'white'),
        $j('#anagramListDisplay').hide(),
        $j('.sequenceCreatedWidgetDisplay').show(),
        $j('.formSequenceCreated #sequence_text').css('backgroundColor', 'white'),
        $j('.formSequenceCreated #sequence_creation').css('backgroundColor', 'white'),
        $j('.formSequenceCreated #sequence_complete').css('backgroundColor', 'white'),
        $j('.formSequenceCreated #sequence_lexigram').css('backgroundColor', 'white'),
        $j('.formSequenceCreated #sequence_singular').css('backgroundColor', 'white');
      }
    });
  }
);

$j(document).ready(
  function() {
    $j('#anagram form #anagram_text').bind({
      focusout: function(event) {
        $j('#anagram form #anagram_text').css('backgroundColor', 'pink');
        $j('.formSequenceCreated #sequence_text').css('backgroundColor', 'pink'),
        $j('.formSequenceCreated #sequence_creation').css('backgroundColor', 'pink'),
        $j('.formSequenceCreated #sequence_complete').css('backgroundColor', 'pink'),
        $j('.formSequenceCreated #sequence_lexigram').css('backgroundColor', 'pink'),
        $j('.formSequenceCreated #sequence_singular').css('backgroundColor', 'pink');
      }
    });
  }
);

$j(document).ready(
  function() {
    $j('#anagram form #anagram_text').bind({
      focusin: function(event) {
        $j('#anagramListDisplay').hide(),
        $j('#sequencerWidgetDisplay').hide(),
        $j('.sequenceCreatedWidgetDisplay').show();
      }
    });
  }
);

$j(document).ready(
  function() {
    $j('#anagram form #description').bind({
      focusin: function(event) {
        $j('#anagramListDisplay').hide(),
        $j('#sequencerWidgetDisplay').hide(),
        $j('.sequenceCreatedWidgetDisplay').show();
      }
    });
  }
);

$j(document).ready(
  function() {
    $j('#anagram form #reference').bind({
      focusin: function(event) {
        $j('#anagramListDisplay').hide(),
        $j('#sequencerWidgetDisplay').hide(),
        $j('.sequenceCreatedWidgetDisplay').show();
      }
    });
  }
);

$j(document).ready(
  function() {
    $j('#anagram > form > input#anagramSubmit').bind({
      click: function() {
        $j('#anagramListDisplay').hide(),
        $j('#sequencerWidgetDisplay').hide(),
        $j('.sequenceCreatedWidgetDisplay').show();
    }});
  }
);
