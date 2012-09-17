// FOCUS OUT on anagram widget text entry
$(document).ready(  function() {
       $('#anagram form input#anagram_text').bind({
       focusout:function(event) {
       $('#anagram form input#anagram_text').css('backgroundColor', 'pink');
       $('.formSequenceCreated input#sequence_text').css('backgroundColor', 'pink');
       $('.formSequenceCreated input#sequence_creation').css('backgroundColor', 'pink');
       $('.formSequenceCreated input#sequence_complete').css('backgroundColor', 'pink');
       $('.formSequenceCreated input#sequence_lexigram').css('backgroundColor', 'pink');
       $('.formSequenceCreated input#sequence_singular').css('backgroundColor', 'pink');
       $('#anagram form input#description').focus();
       }
       });
       });

