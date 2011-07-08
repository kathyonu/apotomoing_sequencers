// 20110623 version < you are here, it now works as of 20110630
// 20110620 version 
// 20110619 version

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
        if (this.value !== '') {
            //alert("the event value = " + this.value)                  //= asdf
          var input = this.value
            //alert("input = " + input)                                 //= asdf
          var input2 = document.getElementById('anagram_text');
            //alert("input2 = " + input2.value)                         //= asdf
          var output = document.createElement('p');
          output.textContent = 'test to create text';
          anagramText = document.getElementById("anagram_text")
          anagramText.form.appendChild(output)
          anagramText.form.onsubmit = function() {return false;}
          var anagramText = this.value;
            //alert("anagramText = " + anagramText)                   //= asdf
            //alert("output = " + output)                             //= [object HTMLParagraphElement]
            //alert("output.textContent = " + output.textContent)     //= test to create text
            //alert("output.nodeName = " + output.nodeName)           //= P
            //alert("output.nodeType = " + output.nodeType)           //= 1
            //alert("output.nodeValue = " + output.nodeValue + " < should be null at this point")
            //alert("output.nodeValue = " + output.nodeValue)         //= null
          var sequenceText = $j('input #sequence_text');
            //alert("sequenceCreates = " + sequenceCreates)             //= [object Object]
            //alert("sequenceCreates = " + sequenceCreates.val())       //= undefined, as it should be
            //alert("sequenceCreates = " + sequenceCreates.nodeValue)   //= undefined, as it should be
            //alert("sequenceCreates = " + sequenceCreates.input)       //= undefined, as it should be
        $j('input#sequencerOpen').hide();
        $j('input#anagramListOpen').hide();
        $j('p').show();
            //alert("what was anagramText = " + this.value)               //= asdf
            //alert("what was anagramText value = " + this.value)         //= asdf
            //alert("your anagramText is " + this.value)                  //= asdf
        var v = anagramText.split('').sort().toString();
          output.textContent = v + " < your complete sequence";       //= a,d,f,s  < your complete sequence
            //alert("AlertThree : " + output + " = " + output.textContent)
          $j('input > #sequence_text').text(output.textContent = v)
          $j('input#description').focus();
            //alert("AlertSix, Your sequence is " + v)                  //= a,d,f,s
        }
        else
        {
          $j('input#anagram_text').focus('Enter_Your_Data');
          $j('input#sequencerOpen').show();
        }
      }
    )
  });
