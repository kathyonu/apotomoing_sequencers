$(document).ready(
  function() {
    $('#text').bind({
      focusin: function(event) {
        $('#text').css('backgroundColor', 'white')
      }
    });
  }
);

$(document).ready(
  function() {
    $('#text').bind({
      focusout: function(event) {
        $('#text').css('backgroundColor', 'pink')
      }
    });
  }
);

$(document).ready(
  function() {
    $('#text').bind({
      focusin: function(event) {
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
    $('#text').bind({
      focusout: function(event) {
        $('.formSequenceCreated #sequence_creation').css('backgroundColor', 'pink'),
        $('.formSequenceCreated #sequence_complete').css('backgroundColor', 'pink'),
        $('.formSequenceCreated #sequence_lexigram').css('backgroundColor', 'pink'),
        $('.formSequenceCreated #sequence_singular').css('backgroundColor', 'pink');
      }
    });
  }
);
