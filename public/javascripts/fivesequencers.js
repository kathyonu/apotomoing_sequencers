// this file affects app/widgets/anagram/_form.html.haml
// this file affects app/widgets/sequence_created/_form.html.haml

$j(document).ready(
  function() {
    $j('form[0] > input#anagram_text').bind(
      'focusin',function(event) {
         if (this.value == 'Enter_Your_Data') {
           (this.value = '')
         }
       }
    ).bind(
      'focusout',function(event) {
        if (this.value !== '') {
          var userentry = (this.value)
          var anagramtext = document.getElementById('anagram_text'); 
          anagramtext.form.onsubmit = function() { return false; }
          $j('#anagram form input#submit').hide();
          $j('input#anagramListOpen').hide();
          $j('input#sequencerOpen').hide();
          $j('p').removeClass('explain');
          $j('p').addClass('explains');
          var text = anagramtext.value.toString();
          $j('form[0] > input#sequence_text').val(text);
          var creation = anagramtext.value.toString();
          $j('form[0] > input#sequence_creation').val(creation);
          var complete = anagramtext.value.split('').sort().join('');    //  aaddffss    < it has on leading white space that needs to be stripped.
          $j('form[0] > input#sequence_complete').val(complete);
          var lexigrammic = anagramtext.value.split('').sort();
          var lexigrams = $j.unique(lexigrammic);
          $j('form[0] > input#sequence_lexigram').val(lexigrams);         // s,f,d,a     < not the finished code
          var singles = anagramtext.value.split('').sort();
          var singular = $j.unique(singles);
          $j('form[0] > input#sequence_singular').val(singular);          // s,f,d,a     < not the finished code
          $j('input#description').focus();
        }
        else
        {
          $j('form[0] > input#anagram_text').val("Please Enter Your Data");
        }
      })
    });
