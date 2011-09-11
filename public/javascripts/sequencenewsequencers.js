// this file name is app/public/javascript/sequencenewsequencers.js
// this file affects app/views/sequences/new.html.erb
// this file affects app/views/sequences/edit.html.erb

$j(document).ready(
  function() {
    $j('input#sequenceEntry').bind(
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
          var sequence = document.getElementById('sequence_sequence_text');
          var $jsequenceEntry = sequence.nodeValue;
          var $jsequenceEntry = (this.value);
          sequence.form.onsubmit = function() { return false; }
          $j('input#sequence_sequence_text').val(this.value);
          var $jcreation = (this.value).toString();
          $j('input#sequence_sequence_creation').val(($jcreation.toString().replace(/\s/g,'')));
          var $jcomplete = (this.value).split('').sort().join('').trim();
          $j('input#sequence_sequence_complete').val($jcomplete);
          var $jsingulars = $jcomplete.split('').sort();
          var $jsingular = $j.unique($jsingulars).reverse();
          $j('input#sequence_sequence_singular').val(($jsingular.toString().replace(/,/g,'')));
          $j('input#sequence_description').focus();
        }
          else
        {
          $j('input#sequenceEntry').val('Please Enter Your Data');
          $j('#sequence form input#sequence_sequence_text').val("");
          $j('#sequence form input#sequence_sequence_creation').val("");
          $j('#sequence form input#sequence_sequence_complete').val("");
          $j('#sequence form input#sequence_sequence_lexigram').val("");
          $j('#sequence form input#sequence_sequence_singular').val("");
       }
    })
  });

        //var $jlexigramoptions = {type: 'POST', url: '../../app/helpers/lexigram.rb', data: $jsequenceEntry, dataType: 'text', 
//          var $jlexigramoptions = $j.ajax({
//            type: 'GET', 
//           url: 'sequence_lexigram',
       //   url: '../../app/helpers/lexigram/sequence_lexigram',
//            data: $jsequenceEntry, 
      //    data: 'sequencetext'=> $jsequenceEntry, 
      //    data: { 'sequencetext'=> $jsequenceEntry }, 
//            dataType: 'text', 
      // 1        error: function(xhrResponse) {
      // 1        alert('Failed tranaction');
      // 1      },
      // 2     error: function(xhr, textStatus, errorThrown ) {
      // 2     alert('an error occurred : here\'s the info\n\n' + 'xhr =  ' + xhr + '\textStatus = ' + textStatus + '\nerrorThrown =  ' +  errorThrown);},
//          error: function(evt, xhr, status, error) {
//            alert('an error occurred : here\'s the info\n\n' 
//            + 'evt = ' 
//            + evt 
//            + '\nxhr =  ' 
//            + xhr 
//            + '\nstatus = ' 
//            + xhr.status 
//            + '\nerror =  ' 
//            +  xhr.error
//            );
//            },
      // 3    alert('an error occurred : here\'s the info\n\n' + 'xhr =  ' + xhr + '\nStatus = ' + status + '\nError =  ' +  error);},
      // 3      xhr =  error
      // 3      Status = undefined
      // 3      Error =  undefined
//            success: function(text, textStatus) {$j('body').append(text)},
           // success: function(xhrResponse) { alert('Completed tranaction');},
           // success: function(text, textStatus) {$j('input#sequence_sequence_lexigram').val(text);},
           //   alert('function text = ' + text + '\ntextStatus = ' + textStatus);
//        });
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

          //     var completereverse = (this.value).split('').sort().reverse().join('').trim();
          //     $j('input#sequence_sequence_compltete_reverse').val(completereverse);
//        $j.post('<%= sequence_lexigram_path %>'), function(data) {
  //        $j('input#sequence_sequence_lexigram').text(data);
    //    };
////////  var lexigrams = $j.ajax( write the call to > lexigram_sequencer(this.value);
  //      var lexigrams = (this.value).split('').sort().reverse().join('').trim();
   //     $j('input#sequence_sequence_lexigram').val(lexigrams);
////////  var lexigrams = $j.ajax( :url => :lexigram, :action => :lexigram_sequencers(anagramtext.value), :remote => true )
    //    var lexigrams = $j.ajax({url: "helpers/lexigram.rb", :type => 'GET', :action => :lexigram_sequencer(anagramtext.value), :remote => true);
     //   var lexigrams = $j.ajax({url: "../../../app/helpers/lexigram.rb", :type => 'GET', :action => :lexigram_sequencer(anagramtext.value), :remote => true);
   ///////var $lexigrams = $j.ajax( $jlexigramoptions );
      //  $j('input#sequence_sequence_lexigram').val($jlexigramoptions.responseText);   // same thing : $j('form[0] > input#sequence_lexigram').val(lexigrams);
