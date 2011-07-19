// working on script that will prevent submission if the 
// anagram_text is empty, or two other preset values.

$j(document).ready(
  function() {
    $j('#anagram form input#submit').bind(
      'click',function(event) {
        var anagramtext = document.getElementById('anagram_text'); 
        var sequencetext = document.getElementById('sequence_text'); 
        sequencetext.form.onsubmit = function() { return false; }
        if (anagramtext.value == '') {
          $j('anagram form input#anagram_text').val('');
          $j('anagram form input#anagram_text').focus();
          }
        if (anagramtext.value == 'Enter_Your_Data') {
          $j('anagram form input#anagram_text').val('');
          $j('anagram form input#anagram_text').focus();
          }
        if (anagramtext.value == 'Please Enter Your Data') {
          $j('anagram form input#anagram_text').val('');
          $j('anagram form input#anagram_text').focus();
        }
      })
    });
    
$j(document).ready(
  function() {
    $j('#anagram form input#description').bind(
      'focusin',function(event) {
        var anagramtext = document.getElementById('anagram_text'); 
          alert("$anagramtext = " + anagramtext )
        var sequencetext = document.getElementById('sequence_text'); 
          alert("sequencetext = " + sequencetext )
        sequencetext.form.onsubmit = function() { return false; }
        if (anagramtext.value == '') {
          $j('anagram form input#anagram_text').focus('');
        }
        if (anagramtext.value == 'Enter_Your_Data') {
          $j('anagram form input#anagram_text').focus('');
        }
        if (anagramtext.value == 'Please Enter Your Data') {
          $j('anagram form input#anagram_text').focus('');
        }
        return
      })
    });
    
