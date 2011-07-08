// this file affects app/widgets/anagram/_form.html.haml
// this file affects app/widgets/sequence_created/_form.html.haml
// 201107081200 : first time sequencer places processed userentry into sequence_text form input.  it's a good day.
// i leave in these alerts, and other unnecessary codes for the time being as record of first time that sequence_texts lights up with data.

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
          output.textContent = 'results show after you tab out';
          //  alert("output.textContent = " + output.textContent)           //= results show after you tab out
          //  alert("output.nodeName = " + output.nodeName)                 //= P
          //  alert("output.nodeType = " + output.nodeType)                 //= 1
          // alert("output.nodeValue = " + output.nodeValue + " < should be null at this point")  //= null < should be null at this point
          //  alert("output = " + output)                                  //= [object HTMLParagraphElement]
          //  alert("output.textContent = " + output.textContent)          //= results show after you tab out
          anagramtext.form.onsubmit = function() { return false; }
          //  alert("anagramtext = " + anagramtext)                        //= [object HTMLInputElement]
          //  alert("AlertTwo : anagramtext.value = " + anagramtext.value) //= asdf
          //  $j('#anagram form input#submit').hide();
          //  $j('#anagram form input#submit').show();
          $j('input#anagramListOpen').hide();
          $j('input#sequencerOpen').hide();
          var v = anagramtext.value.split('').sort().toString();
          //  alert("v = " + v)                                              //= v = a,d,f,s
          output.textContent = v + " < your complete sequence";
          $j('form[0] > input#sequence_text').val(v);
            alert("Your sequence sent to sequence_text is " + $j('form[0] > input#sequence_text').val())  //= AlertSix, Your sequence is a,d,f,s
          $j('p').show(v);
          $j('input#description').focus();
        }
        else
        {
          $j('form[0] > input#anagram_text').val("Please Enter Your Data");
        }
      })
      var submit = document.getElementById('submit');
      submit.parentNode.removeChild(submit);
    });