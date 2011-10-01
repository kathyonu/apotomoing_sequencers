// this file name is app/public/javascript/fivesequencers.js
// this file affects app/widgets/anagram/_form.html.haml
// this file affects app/widgets/sequence_created/_form.html.haml

$j(document).ready(
  function() {
    $j('#anagram > form > input#anagram_text').bind(
      'focusin',function(event) {
        if (this.value == 'Enter_Your_Data') {
          (this.value = '')
        }
        if (this.value == 'Please Enter Your Data') {
            (this.value = '')
        }
      }
    ).bind(
      'focusout',function(event) {
        if (this.value !== '') {
          $j('input#anagramListOpen').hide();
          $j('input#sequencerOpen').hide();
          var anagramtext = document.getElementById('anagram_text');
          anagramtext.form.onsubmit = function() { return false; }
          var $juserentry = $j('#anagram > form > input#anagram_text').val();
          $j('input#sequence_text').val($juserentry);
          var $jcreation = $juserentry.toString();
          $j('input#sequence_creation').val(($jcreation.toString().replace(/\s/g,'')));
          var complete = $juserentry.split('').sort().join('').trim();
          $j('input#sequence_complete').val(complete);
          var $jsingulars = complete.split('').sort(); 
          var $jsingular = $j.unique($jsingulars).reverse();
          $j('input#sequence_singular').val(($jsingular.toString().replace(/,/g,'')));
          var $jsequencetext = $('#anagram > form > input#anagram_text').val();
          var return_value = $j.ajax({
            type: "POST", 
            url: "http://localhost:3000/sequence_createds/lexigram_sequenced", 
            data: "sequencetext="+$jsequencetext,
            dataType: 'script', 
            async: false,
            success: function(data, textStatus, xhr) {
              alert(data);
              alert(textStatus);
              alert(eval(xhr.responseText)); 
              }
            }).responseText;
          $j('input#sequence_lexigram').val(return_value);
          $j('input#description').focus();
        }
          else
        {
          $j('form[0] > input#anagram_text').val('Please Enter Your Data');
          $j('#sequence_created form input#sequence_text').val("");
          $j('#sequence_created form input#sequence_creation').val("");
          $j('#sequence_created form input#sequence_complete').val("");
          $j('#sequence_created form input#sequence_lexigram').val("");
          $j('#sequence_created form input#sequence_singular').val("");
        }
      })
    });
    
//        $j('#anagram > form > input#submit').show();
//        $j('#anagram > form > input#submit').hide();
//
//        $j('p').removeClass('explain');
//        $j('p').addClass('explains');
//
//        var $jcreation = anagramtext.value.toString();
//        var $jcreation = $juserentry.toString();
//
//        var complete = anagramtext.value.split('').sort().join('').trim();
//        var complete = $juserentry.split('').sort().join('').trim();
//
//        var completereverse = anagramtext.value.split('').sort().reverse().join('').trim();
//        $j('form[0] > input#sequence_complete_reverse').val(completereverse);

//        data: $j('#anagramtext').serialize(),   : can be tested in jQuery console as shown below
//        data = $j('#anagramtext').serialize();  : returns : [13:14:38.056] data = $j('#anagramtext').serialize()


//        data = $j('#sequence_lexigram').val(sequencetext=$jsequencetext);     <<<<<<<<<<< this one does it all
//        data: $j('sequencetext = $jsequencetext'),
//        data: $j('#anagram_text').serialize(),

//        url: "http://localhost:3000/sequences/lexigram_sequenced", 
//        url: "http://localhost:3000/sequence_createds/lexigram_sequenced", 

