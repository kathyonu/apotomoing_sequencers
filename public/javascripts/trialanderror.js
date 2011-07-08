// this file affects app/widgets/anagram/_form.html.haml
// this file affects app/widgets/sequence_created/_form.html.haml
// 201107081200 : first time sequencer places processed userentry into sequence_text form input.  it's a good day.
// 201107081430 : all five sequencers now in place, and processing text to the sequence_created form input windows.
// processing codes of all five have to be written in pure javascript.
// i leave in these alerts, and other unnecessary codes for the time being as record of first time that sequence_texts lights up with data.
// and now all five sequences light up when the user tabs out of the Enter Anagram box.
// it's a good day.

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
          //  alert("userEntry = " + (this.value))                         //= asdf
          //alert("this.value = " + (this.value))
          var anagramtext = document.getElementById('anagram_text');       // same as userentry variable
          //  alert("anagramtext = " + anagramtext.value)                  //= asdf
          //  alert("anagramtext.nodeName = " + anagramtext.nodeName)       //= INPUT
          //  alert("anagramtext.nodeValue = " + anagramtext.value)         //= asdf
          var output = document.createElement('p');
          //  alert("output = " + output)                                   //= [object HTMLParagraphElement]
          //  alert("output.nodeName = " + output.nodeName)                 //= P
          //  alert("output.nodeType = " + output.nodeType)                 //= 1
          //  alert("output.nodeValue = " + output.nodeValue)               //= null  as it should be
          ////output.textContent = 'results show after you tab out';
          //  alert("output.textContent = " + output.textContent)           //= results show after you tab out
          //  alert("output.nodeName = " + output.nodeName)                 //= P
          //  alert("output.nodeType = " + output.nodeType)                 //= 1
          //  alert("output.nodeValue = " + output.nodeValue + " < should be null at this point")  //= null < should be null at this point
          //  alert("output = " + output)                                  //= [object HTMLParagraphElement]
          //  alert("output.textContent = " + output.textContent)          //= results show after you tab out
          anagramtext.form.onsubmit = function() { return false; }
          //  alert("anagramtext = " + anagramtext)                        //= [object HTMLInputElement]
          //  alert("AlertTwo : anagramtext.value = " + anagramtext.value) //= asdf
          $j('#anagram form input#submit').hide();
          //  $j('#anagram form input#submit').show();
          $j('input#anagramListOpen').hide();
          $j('input#sequencerOpen').hide();
          var text = anagramtext.value.toString();
          //  alert("v = " + v)                                              //= v = a,d,f,s
          ////output.textContent = v + " < your complete sequence";
          $j('form[0] > input#sequence_text').val(text);
          //  alert("Your sequence sent to sequence_text is " + $j('form[0] > input#sequence_text').val())  //= AlertSix, Your sequence is a,d,f,s
          var creation = anagramtext.value.toString();
          //  alert("v = " + v)    
          $j('form[0] > input#sequence_creation').val(creation);
          var complete = anagramtext.value.split('').sort().toString();
          //  alert("v = " + v)    
          $j('form[0] > input#sequence_complete').val(complete);
          var lexigrammic = anagramtext.value.split('').sort();
          var lexigram = $j.unique(lexigrammic) ;
          //  alert("v = " + v)    
          $j('form[0] > input#sequence_lexigram').val(lexigram);
          var singles = anagramtext.value.split('').sort();
          var singular = $j.unique(singles);
          //  alert("v = " + v)   
          $j('form[0] > input#sequence_singular').val(singular);
          $j('input#description').focus();
        }
        else
        {
          $j('form[0] > input#anagram_text').val("Please Enter Your Data");
        }
      })
      //var submit = $j('form[0] > input#submit');           // \/ same thing
      //  var submit = document.getElementById('submit');     /\ same thing
      //submit.parentNode.removeChild(submit);
    });