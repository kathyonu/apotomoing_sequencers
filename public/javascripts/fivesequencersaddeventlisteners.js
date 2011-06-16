$j(document).ready(
  function() {
    element = $j('input#anagram_text');      
    element.bind(
      'focusout',function(event) {
       text = ($je).text();
         if (text == $je(!this.value)) {
           alert("the value of your entry is " + this.text);
           this.value = 'Enter_Your_Data';
         }
       }
    ).bind(
      'focusin',function(event) {
         if (this.value == 'Enter_Data') {
           (this.value = '');
         }
       }
    );
  });
