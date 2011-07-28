$j(document).ready(
  function() {
    $j('#anagram form input#anagram_text').bind({
      focusin: function(event) {
        $j('#anagram form input#anagram_text').css('backgroundColor', 'white'),
        $j('#anagramListDisplay').hide(),
        $j('#sequencerWidgetDisplay').hide(),
        $j('.sequenceCreatedWidgetDisplay').show(),
        $j('.formSequenceCreated input#sequence_text').css('backgroundColor', 'white'),
        $j('.formSequenceCreated input#sequence_creation').css('backgroundColor', 'white'),
        $j('.formSequenceCreated input#sequence_complete').css('backgroundColor', 'white'),
        $j('.formSequenceCreated input#sequence_lexigram').css('backgroundColor', 'white'),
        $j('.formSequenceCreated input#sequence_singular').css('backgroundColor', 'white');
      }
    });
  }
);

$j(document).ready(
  function() {
    $j('#anagram form input#anagram_text').bind({
      focusout: function(event) {
        $j('#anagram form input#anagram_text').css('backgroundColor', 'pink'),
        $j('.formSequenceCreated input#sequence_text').css('backgroundColor', 'pink'),
        $j('.formSequenceCreated input#sequence_creation').css('backgroundColor', 'pink'),
        $j('.formSequenceCreated input#sequence_complete').css('backgroundColor', 'pink'),
        $j('.formSequenceCreated input#sequence_lexigram').css('backgroundColor', 'pink'),
        $j('.formSequenceCreated input#sequence_singular').css('backgroundColor', 'pink');
      }
    });
  }
);

$j(document).ready(
  function() {
    $j('#anagram form input#description').bind({
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
    $j('#anagram form input#reference').bind({
      focusin: function(event) {
        $j('#anagramListDisplay').hide(),
        $j('#sequencerWidgetDisplay').hide(),
        $j('.sequenceCreatedWidgetDisplay').show();
      }
    });
  }
);

// this code below is no longer required as we hide the anagram submit button entirely..
//  submitting it after the sequence_created form completes.
$j(document).ready(
  function() {
    $j('#anagram > form[0] > input#submit').click(
    //$j('#anagram > form > input#submit').click(
      function($je) {
        $j('#anagramListDisplay').hide(),
        $j('#sequencerWidgetDisplay').hide(),
        $j('.sequenceCreatedWidgetDisplay').show(),
        $j('#kathyonu').show();
    });
  }
);
