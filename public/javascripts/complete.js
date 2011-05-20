$j(document).ready(function() {
  $j().get('#sequenceCreatedSequenceCreated').value() {
    var sequenceCreated = this.value();
    var output = $('sequenceCreatedSequenceComplete').text();
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
  };