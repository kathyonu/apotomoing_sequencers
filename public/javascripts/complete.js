$(document).ready(function() {
  var anagramEntry = document.getElementById('anagramEntry');
  var output = document.createElement('p');
  output.textContent = 'Type your entry, it will be sequenced right then!';
  anagramEntry.form.appendChild(output);
  anagramEntry.form.onsubmit = function() { return false; }
  anagramEntry.oninput = function() {
    var v = (anagramEntry.value.split('').sort()).toString();
    output.textContent = v + "  << this is the sequence_complete";
  };
  var submit = document.getElementById('submit');
  submit.parentNode.removeChild(submit);
