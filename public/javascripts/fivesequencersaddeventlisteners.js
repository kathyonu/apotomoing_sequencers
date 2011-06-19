$j(document).ready(
  function() {
    $j('form[0] > input#anagram_text').bind(
      'focusin',function(event) {
         if (this.value == 'Enter_Your_Data') {
           (this.value = '');
         }
       }
    ).bind(
      'focusout',function(event) {
        var anagramText = document.getElementById('anagram_text');
        var sequenceText = document.getElementById('sequence_text');
        var output = document.createElement('p');
        output.textContent = 'results show after you tab out';
        
        sequenceText.form.appendChild(output);
        $j('input#sequencerOpen').hide();
        $j('p').show();
        //  alert("AlertThree : " + output + " = " + output.textContent)
        //  alert("AlertOne : anagramText = " + anagramText)
        //  alert("AlertTwo : anagramText value = " + anagramText.value)
        anagramText.form.onsubmit = function() { return false; }
        //  alert("AlertFour : " + output + "+" + output.textContent)
          if (anagramText != "") {
            //alert("AlertFive, Your anagramText is " + anagramText)
            var v = anagramText.value.split('').sort().toString();
            output.textContent = v + " < your complete sequence";
            $j('input#description').focus()
            //  alert("AlertSix, Your sequence is " + v)
            //$j('p').hide();
            //$j('input#sequencerOpen').show();
          {
          else
          {
              $j('input#anagram_text').focus('Enter_Your_Data')
          }
        }
    )
  });
