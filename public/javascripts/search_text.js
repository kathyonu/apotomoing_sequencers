$j(document).ready(  function() {
    $j('input#sequencetext').bind(
      'focusin',function(event) {    
        if ($j('input#sequencetext').val() === "Enter data, then tab out") {
        $j('input#sequencetext').val("");
      }
      else  if ($j('input#sequencetext').val() === "Please Enter Your Data") {
        $j('input#sequencetext').val("");
      }
      else
      {
      $j('#sequencetext').focus();    }    }    )
      .bind(
        'focusout',function(event) {
          if (this.value !== '') {
            if (this.value !== "Enter data, then tab out") {
              var $jnewsequence = document.getElementById('sequencetext');
              var $jsequencetext = $j('input#sequencetext').serialize();
              var $jsequenceSubmit = document.getElementById('sequence_submit');
              $jnewsequence.form.onsubmit = function() { return false; };
              var $jsearch_text_return_value = $j.ajax({
                type: "GET",
                url: "http://localhost:3000/sequences/search_text",
                data: $jsequencetext,
                async: false,
                dataType: 'script',
                success: function(data) { alert(data); }
              }).responseText;
              
              var $jsingulars = $jsearch_text_return_value
              or
              var $jsingulars = $jsearch_text_return_value.map(  
                function($i) {
                  $i++
                  return $i + $j.(this).val();
                }
              );
              $jsingulars.each(
                function() {
                  $j("").append("<li>" + this + "</li>")
              });


              var singulars_array = $j.makeArray($jsingulars)
              $jsearch_text_return_value.map()
              or
              $j.map($jsearch_text_return_value)




@sequences is what the form to display is expecting



              $j("#search_text").val($jsearch_text_return_value);




            }
            else
            {
              $j('input#sequencetext').val('Please Enter Your Data');
              $j('#search_text').val("");
              $j('#search_creation').val("");
              $j('#search_complete').val("");
              $j('#search_lexigram').val("");
              $j('#search_singular').val("");
            }
          }
        }) 
    });
