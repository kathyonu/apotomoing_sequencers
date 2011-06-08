$j(document).ready(
  function() {
    $j('formanagram#anagram form #anagram_text').bind(
      'onblur',
      function() {
        var anagramText = this.value();
        var output = $j('formSequenceCreated#sequenceCreated form #sequence_text').text();
        // output.textContent = 'Type your entry, it will be sequenced right then!';
        // sequenceCreated.form.appendChild(output);
        anagramText.form.onsubmit = function() { return false; }
          function() {
            var text = (anagramText.value.split('').sort()).toString();
            output.textContent = text;
          };
        //var submit = document.getElementById('submit');
        //submit.parentNode.removeChild(submit);
      },
      function() {
        var anagramText = this.value();
        var output = $j('formSequenceCreated#sequenceCreated form #sequence_creation').text();
        // output.textContent = 'Type your entry, it will be sequenced right then!';
        anagramText.form.onsubmit = function() { return false; }
          function() {
            var creation = (anagramText.value.split('').sort()).toString();
            output.textContent = creation;
          };
        //var submit = document.getElementById('submit');
        //submit.parentNode.removeChild(submit);
      },
      function() {
        var anagramText = this.value();
        var output = $j('formSequenceCreated#sequenceCreated form #sequence_complete').text();
        // output.textContent = 'Type your entry, it will be sequenced right then!';
        anagramText.form.onsubmit = function() { return false; }
          function() {
            var complete = (anagramText.value.split('').sort()).toString();
            output.textContent = complete;
          };
        //var submit = document.getElementById('submit');
        //submit.parentNode.removeChild(submit);
      },
      function() {
        var anagramText = this.value();
        var output = $j('formSequenceCreated#sequenceCreated form #sequence_lexigram').text();
        // output.textContent = 'Type your entry, it will be sequenced right then!';
        anagramText.form.onsubmit = function() { return false; }
          function() {
            var lexigram = (anagramText.value.split('').sort()).toString();
            output.textContent = lexigram;
          };
        //var submit = document.getElementById('submit');
        //submit.parentNode.removeChild(submit);
      },
      function() {
        var anagramText = this.value();
        var output = $j('formSequenceCreated#sequenceCreated form #sequence_singular').text();
        // output.textContent = 'Type your entry, it will be sequenced right then!';
        anagramText.form.onsubmit = function() { return false; }
          function() {
            var singular = (anagramText.value.split('').sort()).toString();
            output.textContent = singular;
          };
        var submit = document.getElementById('submit');
        submit.parentNode.removeChild(submit);
      });
    });
