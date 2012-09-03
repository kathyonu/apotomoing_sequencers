// not in use right now


///  <%= javascript_include_tag "search_singular.js", :cache => false %>




$j(document).ready(  function() {
   
    $j('#search_sequence_singulars form input#sequencetext').bind(
      'focusin',function(event) {    
        $j('#search_sequence_singulars form input#sequencetext').val("");
      })
      .bind(
        'focusout',function(event) {
          if (this.value !== '') {
            if (this.value !== "Enter data, then tab out") {
              if (this.value !== "Please Enter Your Data") {
                var $jnewsequence = document.getElementById('sequencetext');
                var $jsequencetext = $j('input#sequencetext').serialize();
                var $jsequenceSubmit = document.getElementById('singular_search_submit');
                $jnewsequence.form.onsubmit = function() { return false; };
                var $jsearch_singular_return_value = $j.ajax({
                  type: "get",
                  url: "http://localhost:3000/sequences/search_singular",
                  data: $jsequencetext,
                  async: false,
                  dataType: 'none',
                  success: function(data) {
                    alert("your data is : " + data);
                    }
                    });
//                  }).responseText;
                  $j("#search_singular").append( $jsearch_singular_return_value );
                  $j("#search_singular").show();
               // $j("#search_singular").hide();
               // $j("#search_singular").val($jsearch_singular_return_value);
              }
            }
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
    });
  });