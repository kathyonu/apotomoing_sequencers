// see app/public/javascript/sequencenewsequencers.js.js
// this is not a working file
// this file name is app/public/javascript/userentrysequencer.js
// this file affects app/views/sequences/new.html.erb
// this js file is not yet fully functional code
// to see working code, see fivesequencers.js which processes the first five sequences from user entry.

$j(document).ready(
  function() {
  var sequenceEntry = document.getElementById('sequenceEntry');
  //var output = document.createElement('p');
  var dataset = document.createElement('sequence_textualed');
  var sequencetext = $j('#sequence_created > form > input#sequence_text');
  sequencetext.textContent = 'Results will show after you press tab.';
  //dataset.textContent = 'Results will show after you press tab.';
  //output.textContent = 'Results will show after you press tab.';
  sequenceEntry.form.appendChild(dataset);
  // sequenceEntry.form.appendChild(output);
  sequenceEntry.form.onsubmit = function() { return false; }
  sequenceEntry.onblur = function() {
    var v = sequenceEntry.value.split('').sort().toString();
    sequence_text.textContent = v + " << this is the sequence_complete";
    //dataset.textContent = v + " << this is the sequence_complete";
    //output.textContent = v + " << this is the sequence_complete";
  };
  var submit = document.getElementById('submit');
  submit.parentNode.removeChild(submit);
  });
