// 20110623 version
// 20110620 version 
// 20110619 version < you are here

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
        var output = document.createElement('p');
        output.textContent = "results show after you tab out";
        var sequenceCreated = document.getElementById('#sequence_created > form > input#sequence_text');
          if (sequenceCreated !== null) { 
            sequenceCreated.form.appendChild(output);
          }
          else
          {
            $j('input#anagram_text').focus('Enter_Your_Data')
          }
        $j('input#sequencerOpen').hide();
        $j('p').show();
        //  alert("AlertThree : " + output + " = " + output.textContent)
        anagramText.form.onsubmit = function() { return false; }
        //  alert("AlertOne : anagramText = " + anagramText)
        //  alert("AlertTwo : anagramText value = " + anagramText.value)
        //  alert("AlertFour : " + output + "+" + output.textContent)
          if (anagramText !== "") {
            //alert("AlertFive, Your anagramText is " + anagramText)
            var v = anagramText.value.split('').sort().toString();
            output.textContent = v + " < your complete sequence";
            $j('input#description').focus()
            //  alert("AlertSix, Your sequence is " + v)
            //$j('p').hide();
            //$j('input#sequencerOpen').show();
          }
          else
          {
              $j('input#anagram_text').focus('Enter_Your_Data');
              $j('input#sequencerOpen').show();
          }
        }
    )
  });
