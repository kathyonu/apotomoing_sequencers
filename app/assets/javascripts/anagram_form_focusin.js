// FOCUSIN on #anagram form input#ANAGRAM_TEXT
$(document).ready(
  function() {
    $('#anagram form input#anagram_text').bind({
      focusin:function(event) {
        $('#anagramListDisplay').hide();
        $('#sequencerWidgetDisplay').hide();
        $(this).css('backgroundColor', 'white');
        $('.sequenceCreatedWidgetDisplay').show();
        $('.formSequenceCreated input#sequence_text').css('backgroundColor', 'white');
        $('.formSequenceCreated input#sequence_creation').css('backgroundColor', 'white');
        $('.formSequenceCreated input#sequence_complete').css('backgroundColor', 'white');
        $('.formSequenceCreated input#sequence_lexigram').css('backgroundColor', 'white');
        $('.formSequenceCreated input#sequence_singular').css('backgroundColor', 'white');
        }
    });
  });
