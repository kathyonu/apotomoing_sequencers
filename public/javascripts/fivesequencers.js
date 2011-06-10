

  <%= javascript_include_tag "fivesequencers.js" %>
w

$j(document).ready(
  function() {
    $j('#anagram form #anagram_text').bind({
      focusout: function(event) {
      var firstText = $j(event);
        $j('#sequenceCreated form input#sequenceText').text('here i am'),
        $j('#sequenceCreated form input#sequenceCreation').text('hereiam'),
        $j('#sequenceCreated form input#sequenceComplete').text('aeehimr'),
        $j('#sequenceCreated form input#sequenceLexigram').text('aeehimr'),
        $j('#sequenceCreated form input#sequenceSingular').text(firstText);
      }
    });
  }
);
