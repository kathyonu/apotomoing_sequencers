$(document).ready(
  function() {
    $('#anagramText').bind({
      focusin: function(event) {
        $('#anagramText').css('backgroundColor', 'white')
      }
    });
  }
);

$(document).ready(
  function() {
    $('#anagramText').bind({
      focusout: function(event) {
        $('#anagramText').css('backgroundColor', 'pink')
      }
    });
  }
);

$(document).ready(
  function() {
    $('#anagramText').bind({
      focusin: function(event) {
        $('.formSequenceCreated #sequence_text').css('backgroundColor', 'white'),
        $('.formSequenceCreated #sequence_creation').css('backgroundColor', 'white'),
        $('.formSequenceCreated #sequence_complete').css('backgroundColor', 'white'),
        $('.formSequenceCreated #sequence_lexigram').css('backgroundColor', 'white'),
        $('.formSequenceCreated #sequence_singular').css('backgroundColor', 'white');
      }
    });
  }
);

$(document).ready(
  function() {
    $('#anagramText').bind({
      focusout: function(event) {
        $('.formSequenceCreated #sequence_text').css('backgroundColor', 'pink'),
        $('.formSequenceCreated #sequence_creation').css('backgroundColor', 'pink'),
        $('.formSequenceCreated #sequence_complete').css('backgroundColor', 'pink'),
        $('.formSequenceCreated #sequence_lexigram').css('backgroundColor', 'pink'),
        $('.formSequenceCreated #sequence_singular').css('backgroundColor', 'pink');
      }
    });
  }
);
