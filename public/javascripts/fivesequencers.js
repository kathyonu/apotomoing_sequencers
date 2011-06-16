/* not in use, except to hold examples

window.addEventListener(
  'load',
  function() {
      document.getElementById('input#anagram_text').addEventListener(
        'focus',
         function() {
            if (this.value == "Enter Data") {
              this.value = "";
            }
          }, false
      );

      document.getElementById('input#anagram_text').addEventListener(
        'blur',
         function() {
          if (!this.value) {
              this.value = 'poooo';
          }
        }, false
      );
  }, false
);




==========================================================================================================================================================================================================







$j(document).ready(function() {
  var element = $j('#anagram form input#anagram_text');
  element.addEventListener('focusout',function(e) {
    var anagramText = $this.value();
    var output = $j('.formSequenceCreated#sequenceCreated form input#sequence_text').text();
     anagramText.form.onsubmit = function() { return false; }
      function() {
        var text = (anagramText.value.split('').sort()).toString();
        output.textContent = text;
      };
  }, false);
  element.addEventListener('focusout',function(event) {
    var anagramText = $this.value();
    var output = $j('.formSequenceCreated#sequenceCreated form input#sequence_creation').text();
      anagramText.form.onsubmit = function() { return false; }
        function() {
          var creation = (anagramText.value.split('').sort()).toString();
          output.textContent = creation;
        };
  }, false);
  element.addEventListener('focusout',function(event) {
    var anagramText = $this.value();
    var output = $j('.formSequenceCreated#sequenceCreated form input#sequence_complete').text();
      anagramText.form.onsubmit = function() { return false; }
        function() {
          var complete = (anagramText.value.split('').sort()).toString();
          output.textContent = complete;
        };
  }, false);
  element.addEventListener('focusout',function(event) {
    var anagramText = $this.value();
    var output = $j('.formSequenceCreated#sequenceCreated form input#sequence_lexigram').text();
    anagramText.form.onsubmit = function() { return false; }
      function() {
        var lexigram = (anagramText.value.split('').sort()).toString();
        output.textContent = lexigram;
      };
  },false);
  element.addEventListener('focusout',function(event) {
    var anagramText = $this.value();
    var output = $j('.formSequenceCreated#sequenceCreated form input#sequence_singular').text();
    anagramText.form.onsubmit = function() { return false; }
      function() {
        var singular = (anagramText.value.split('').sort()).toString();
        output.textContent = singular;
      };
  },false);
  var submit = document.getElementById('formAnagram input#submit');
  submit.parentNode.removeChild(submit);
});














another option >

====================================================


  <%= javascript_include_tag "fivesequencers.js" %>
---------------------------------------------------

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



another option
--------------------------------------------------


$j(document).ready(
  function() {
    $j('.formanagram#anagram form input#anagram_text').bind(
      'onblur', 
      function() {
        var anagramText = $j.this.value();
        var output = $j('.formSequenceCreated#sequenceCreated form input#sequence_text').text();
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
        var output = $j('.formSequenceCreated#sequenceCreated form input#sequence_creation').text();
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
        var output = $j('.formSequenceCreated#sequenceCreated form input#sequence_complete').text();
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
        var output = $j('.formSequenceCreated#sequenceCreated form input#sequence_lexigram').text();
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
        var output = $j('.formSequenceCreated#sequenceCreated form input#sequence_singular').text();
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
*/


