// this file has been replaced by app/public/javascripts/lexidisplay.js : 20110929
//
// this file is no longer in use
//
// this file name is app/public/javascript/fivesequencers.js
// this file affects app/widgets/anagram/_form.html.haml
// this file affects app/widgets/sequence_created/_form.html.haml

$j(document).ready(
  function() {
    $j('form[0] > input#anagram_text').bind(
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
          var userentry = (this.value)
          var anagramtext = document.getElementById('anagram_text'); 
          anagramtext.form.onsubmit = function() { return false; }
          $j('#anagram > form[0] > input#submit').show();
          $j('input#anagramListOpen').hide();
          $j('input#sequencerOpen').hide();
          $j('p').removeClass('explain');
          $j('p').addClass('explains');
          var text = anagramtext.value.toString();
          $j('form[0] > input#sequence_text').val(text);
          var $jcreation = anagramtext.value.toString();
          $j('form[0] > input#sequence_creation').val(($jcreation.toString().replace(/\s/g,'')));
          var complete = anagramtext.value.split('').sort().join('').trim();
          $j('form[0] > input#sequence_complete').val(complete);

          var completereverse = anagramtext.value.split('').sort().reverse().join('').trim();
          $j('form[0] > input#sequence_complete_reverse').val(completereverse);


        //var lexigrams = anagramtext.value.split('').sort().reverse().join('').trim();
        //$j('form[0] > input#sequence_lexigram').val(lexigrams);

        //var lexigrams = $j.ajax({url: "helpers/lexigram.rb", :action => :lexigram_sequencer(this.value), :remote => true);
        //var lexigrams = $j.ajax({url: "helpers/lexigram.rb", :action => :lexigram_sequencer(anagramtext.value), :remote => true);
        //var lexigrams = $j.ajax({url: "../../../app/helpers/lexigram.rb", :action => :lexigram_sequencer(anagramtext.value), :remote => true);
        //var lexigrams = $j.ajax({url: "../../../app/helpers/lexigram.rb", data: lexigram_sequencer(anagramtext.value), :remote => true);
        //var lexigrams = $j.ajax({url: "../../../app/helpers/lexigram.rb", data: (anagramtext.value), :remote => true);
          var lexigrams = $j.ajax({url: "../../../app/helpers/lexigram.rb", data: $j('#sequenceEntry').serialize()});      //  \/
//20110912var lexigrams = $j.ajax({url: "../../../app/helpers/lexigram.rb", data: $j('input#sequenceEntry').serialize()});     /\
          $j('form[0] > input#sequence_lexigram').val(lexigrams);

          var $jsingulars = lexigrams.split('').sort(); 
          var $jsingular = $j.unique($jsingulars).reverse();
          $j('form[0] > input#sequence_singular').val(($jsingular.toString().replace(/,/g,'')));
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
