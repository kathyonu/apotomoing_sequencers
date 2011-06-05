//converting javascript to jQuery :
// not finished

$j(document).ready(function() {
  .get('#sequenceCreatedSequenceCreated').value() {
    var sequenceCreated = this.value();
    var output = $j('sequenceCreatedSequenceComplete').text();
    output.textContent = 'Type your entry, it will be sequenced right then!';
    sequenceCreated.form.appendChild(output);
    sequenceCreated.form.onsubmit = function() { return false; }
    sequenceCreated.oninput = function() {
      var v = (sequenceCreated.value.split('').sort()).toString();
      output.textContent = v + "  << this is the sequence_complete";
    };
    var submit = document.getElementById('submit');
    submit.parentNode.removeChild(submit);
    };
  });

// the call
  
  <!--<%= javascript_include_tag "complete.js" %>-->
