// this file name is app/public/javascript/sequencenewsequencers.js
// this file affects app/views/sequences/new.html.erb
// this file affects app/views/sequences/edit.html.erb


// see code at very bottom, see whats what : 20110917



// SOLID GOLD IN app/views/lexigram_sequenced.js.erb
$j("input#sequence_sequence_lexigram").val("this text comes through to the selected input!"); // this works ; from app/views/lexigram_sequenced.js.erb
$j("input#sequence_sequence_lexigram").val("this text comes through to the selected input!"); // this works : in the console too, as it is not doing any ruby method
$j("input#sequence_sequence_lexigram").val("this text comes through to the selected input!"); // always works
// NOW THE TRICK is to convert it from .val("text") to .html(escape_javascript(render(@sequence_lexigram))


$j("input#sequence_sequence_lexigram").html(escape_javascript(render(@sequence_lexigram));



$j(document).ready(
  function() {
    $jthis = $j('#sequencetest').val();
//  $jthis = $j('input#sequencetext').val();
    if ($jthis.value !== '')
//    $j.ajax({url: '/lexigram_sequence', type:'POST', data: $j('#sequencetext').serialize());
      $j('form#new_sequence input#sequence_sequence_lexigram').val($jthis);
    });
  });



  var sequencetext = $j("#lexi > form > input#sequencetext").val();
  var forma = $j("#lexi > form");

  forma.submit(function() {
    lexi.forma.onsubmit = function() { return false; };
    sequence.forma.onsubmit = function() { return false; };
    $j("input#sequence_sequence_lexigram").append("<%=escape_javascript(render(:template => "lexigram_sequenced.js.erb" :locals => {:lexigram_sequence => @lexigram_sequence})) %>");
    $j("input#sequence_sequence_lexigram").update("<%=escape_javascript(render(:template => "/lexigram_sequenced.js.erb" :locals => {:lexigram_sequence => @lexigram_sequence})) %>");
    return false;
//  $j.ajax({url:"/sequences/lexigram_sequenced",data:forma.serialize()});

  });
  //  $j.ajax({url:"/sequences/lexigram_sequenced",data:forma.serialize(),success:function(evt, data, status, xhr){alert(data)}}).responseText;
  //  $j.ajax({url:"/sequences/lexigram_sequenced",data:forma.serialize(), success:functrion(data){alert(data)}});
  // $j.ajax({url:form_attr("data-event-url"),data:forma.serialize(),success:function(data){alert(data)}});
  // $j.ajax({url:"http://localhost:3000/app/helpers/lexigram.rb",type:"post",data:$j("#lexi > form").first().serialize(),success:function(data){alert(data)}});
  // $j.ajax({url:"http://localhost:3000/sequences/lexigram_sequenced",type:"post",data:$j("#lexi > form").first().serialize(),success:function(data){alert(data)}});
  // $j.ajax({url: form.attr("data-event-url"), data: form.serialize()})






// SOLID GOLD : USE THIS AS TEMPLATE FOR INSERTING THE AJAX CALL
$j(document).ready(
  function() {
    $this = $j('#sequenceEntry').val();
//    $this = $j('input#sequenceEntry').val();
    if ($this.value !== '')
//    $j.ajax({'lexigram_sequence', 'GET'}, data: $j('#sequenceEntry').serialize());
    $j('form#new_sequence input#sequence_sequence_lexigram').val($this);
  });
});

 // $j('form#new_sequence input#sequence_sequence_lexigram').val("a");               // <<<<<<<<<<<<<<< inserts a properly
 // $j('form[0]#new_sequence input#sequence_sequence_lexigram').val("ab");            // <<<<<<<<<<<<<<< inserts ab properly
 // $j('form[0]#new_sequence input#sequence_sequence_lexigram').val("abc");            // <<<<<<<<<<<<<<< inserts abc properly
 // $j('form[0]#new_sequence input#sequence_sequence_complete').val('abcde');           // <<<<<<<<<<<<<<< inserts abc properly
  });
});



$j("#sequence_sequence_lexigram").html(escape_javascript(<%= "#{@sequence_lexigram = lexigram_sequencer("$j("#sequencetext").val()")}" %>) %>);
$j("#sequence_sequence_lexigram").html(escape_javascript(<%= "#{@sequence_lexigram = lexigram_sequencer("testing")}" %>));
$j("#sequence_sequence_lexigram").html(escape_javascript(<%= "#{lexigram_sequencer("testing")}" %>));




$j(document).ready(function() {
  var sequencetext = $j('#sequencetext').val();
  console.log( $j('#sequencetext').val(); );
  console.log( sequencetext );
  $j.ajax({ 
    url: 'lexigram_sequenced', 
    type: 'GET', 
    data: $j('#sequencetext').serialize(),
    'ajax:success': $j('input#sequence_sequence_lexigram').html(data);
    });
  });
  // returns : [22:32:59.710] SyntaxError: missing ) after argument list
/\ =========================================================================================================================================================================================================

THIS WORKS : $j("lexigram_sequenced", { sequencetext: $j('#sequenceEntry').val() });
RESULTS    : ({length:0, prevObject:{0:{sequencetext:"sadf asdf asdf asdf "}, length:1}, context:(void 0), selector:"lexigram_sequenced"})

//\/\\ // 20110906 working the ajax call and response





// SOLID GOLD : ONE STEP CLOSER as we now show a correct responseText, showing an incorrect response from lexigram_sequenced.js.rb.
var $jlexigram_sequence = $j.post("lexigram_sequenced", { sequencetext: $j('#sequencetext').serialize(),success:function(data){alert(data)}});                          // 20110927    : undefined alert
var $jlexigram_sequence = $j.post("lexigram_sequenced", { sequencetext: $j('#sequencetext').serialize(),success:function(data){alert(data)}}).responseText;             // alert shows : undefined
var $jlexigram_sequence = $j.post("lexigram_sequenced", { sequencetext: $j('#sequencetext').serialize(),success:function(data){alert("your data is " + data)}});        // alert shows : your data is undefined
var $jlexigram_sequence = $j.post("lexigram_sequenced", { sequencetext: $j('#sequencetext').serialize(),success:function(data){alert("your data is " + data)}});
 ^^ $jlexigram_sequence.status         =>    200
 ^^ $jlexigram_sequence.responseText   =>    [00:00:32.977] "$j(\"input#sequence_sequence_lexigram\").html(\"\");\n"            // <<<< solid gold, we have a response !! // 201109270001



// in lexigram_sequenced.js.erb
$j("input#sequence_sequence_lexigram").html(<span><%= @lexigram_sequenced %></span>);  // returns
$j("input#sequence_sequence_lexigram").html(<span><%= @lexigram_sequenced %></span>);

// These return no value:
$j("input#sequence_sequence_lexigram").html(escape_javascript("<%= @lexigram_sequenced %>"));
$j("input#sequence_sequence_lexigram").html("<%= @lexigram_sequence %>");        // : 20110927 lexigram_sequenced.js.erb 
$j("input#sequence_sequence_lexigram").html("<%= @lexigram_sequence %>");        // : app/views/sequences/lexigram_sequenced.js.erb




$j.post("lexigram_sequenced", { sequencetext: $j('#sequencetext').serialize()}) 

$j.post("sequences/lexigram_sequenced", { sequenceEntry: $j('#sequenceEntry').serialize() },
$j.post("lexigram_sequenced", { sequenceEntry: $j('#sequenceEntry').serialize() });
$j.post("lexigram.js.erb", { sequenceEntry: $j('#sequenceEntry').serialize() });

$j.post("lexigram_sequenced", { sequencetext: $j('#sequenceEntry').serialize() });

$j.post("lexigram_sequenced", { sequencetext: $j('#sequenceEntry').val() },
  function(data) {
    alert(data);
  }
  );






$j(document).ready(
  function() {
    $j('#sequenceEntry').bind(
//    $j('input#sequenceEntry').bind(
      'focusout',function(event) {
       $this = (this.value);
       if (($this) !== '') {
         alert("alert = " + "true " + $this );}})});






$j(document).ready(
    function() {
  $j('#sequenceEntry').bind(
//$j('input#sequenceEntry').bind(
    'focusout',function(event) {
    var $jdatum = $j('#sequenceEntry').serialize();
//  var $jdatum = $j('input#sequenceEntry').serialize();
//      console.log($jdatum);                              // sequenceEntry=Enter_Your_Data
      if ($jdatum !== '') {
//        alert('alert = ' + "true " + $jdatum );          // alert = true sequenceEntry=Enter_Your_Data
          $j.ajax({
            url: 'lexigram_sequence'
            type: 'GET', 
            data: $jdatum, 
//          dataType: text/javascript
            dataType: text
          });
          'ajax:success',function(event, data, status, xhr) { 
            $j('body').append(data);
          }, 
          'ajax:complete',function(event, data, status, xhr) {
            $j('form#new_sequence input#sequence_sequence_lexigram').val(data);
          };
        };
      });
    });
 


-------------------------------------------------------------
file name is sequence_lexigram.js.erb

$j(function($) {
  $j("#sequenceEntry").focusout(function() {
    $j.post( escape_javascript <%= lexigrams_sequence_path %>), function(data) {
      $j('input#sequence_sequence_lexigram').html(data);
    }
  });
});
---------------------------------------------------------








 $j(function($) {
  $j("#sequenceEntry").focusout(function() {
    $j.post( escape_javascript( <%= lexigrams_sequence_path %> )), function(data) {
      $j('input#sequence_sequence_lexigram').html(data);
    }
  });
});

../../../app/helpers/lexigram.rb


$j('#sequence_sequence_lexigram').val("<%= escape_javascript(render(@lexigram_sequencer(sequenceEntry)) %>");
$j('#sequence_sequence_lexigram').val("<%= escape_javascript(render(lexigram_sequenced(sequenceEntry)) %>");



data = "textings"
 var client = new XMLHttpRequest();
client.open("GET", "../../../app/public/javascript/sequence_lexigram.js.erb", true);   // undefined
client.open("GET", "../../../app/helpers/lexigram.rb", true);   // undefined
client.open("GET", "../../../app/public/javascript/sequence-lexigram.txt", true);   // undefined
client.open("GET", "./sequence-lexigram.txt", true);   // undefined
client.open("GET", "./sequence-lexigram.html", true);   // undefined
client.send();                                          // undefined
client                                                  // [object XMLHttpRequest]
client.status                                           // 404
client.statusText                                       // "Not Found"
client.onreadystatechange = function() {
 if(this.readyState == 2) {
  print(this.getAllResponseHeaders());
 }
}



=== XHTTMLRrequest Commands -----------------------


client . open(method, url, async, user, password) 
client.send(data) 
print(this.getAllResponseHeaders());
client.getResponseHeader(header) 
client.getAllResponseHeaders() 
client.setRequestHeader(header, value) 

Source : http://www.w3.org/TR/XMLHttpRequest/#dom-xmlhttprequest-readystate














































$j(document).ready(
    function() {
      $j('#sequenceEntry').val().bind(
//      $j('input#sequenceEntry').val().bind(
        'focusout',function(event) {
          $this = (this.value);
          if (this.value !== '') {
            var $jsequencetext = (this.value);
            var $jthis = (this.value);
            $j.ajax({'lexigram_sequence', 'GET'}, data: $j('#sequenceEntry'), ('ajax:complete',function(event) {eval(xhr.responseText)});
            $j('input#sequence_sequence_lexigram').text(data);
           )
        }
      });
  });








  $this = (this.value);


'ajax:complete' {eval(xhr.responseText)});






$j(document).ready(
    function() {
  $j('#sequenceEntry').val();
//$j('input#sequenceEntry').val();
    if (this.value !== '') {
      var $jsequencetext = (this.value);
      var $jthis = (this.value);
      $j.ajax({'lexigram_sequence', 'GET', data: $j('#sequenceEntry').serialize()})
        return false;
   // $j.ajax({'lexigram_sequence', 'GET'}, data: $j('#sequenceEntry').serialize(););
      $j('input#sequence_sequence_lexigram').html(data.value);
      $j('input#sequence_sequence_lexigram').text(data);
      $j('input#sequence_sequence_lexigram').val(data);
    };
  });


















$j(document).ready(
    function() {
      //  var inputsequenceEntry = "this is a test"
      $j('#sequenceEntry').bind(
//    $j('input#sequenceEntry').bind(
        'focusout',function(event) {
          if (this.value !== '') {
            var sequence = document.getElementById('sequence_sequence_text');
            sequence.form.onsubmit = function() { return false; }
            var $jsequencetext = (this.value);
            var $jthis = (this.value); // {
            //  alert('$jsequencetext = ' + $jsequencetext);
            //  alert('this.value = ' + (this.value));
            //  alert('$jthis = ' + $jthis);
            //};
        //$j.get('lexigram_sequencer'), function($jsequenctext) {
        //route not found  $j.get('sequence_lexigram'), function($jsequenctext) {$j('input#sequence_sequence_lexigram').text(data);};
        //route not found  $j.get('sequence_lexigram.js.erb'), function($jsequenctext) {$j('input#sequence_sequence_lexigram').text(data);};
        //route not found  $j.post('../../app/views/sequence_lexigram.js.erb'), function($jsequenctext) {$j('input#sequence_sequence_lexigram').text(data);};
/////   $j.ajax('lexigram_sequencer.js.erb'), function(data) {$j('input#sequence_sequence_lexigram').text(data);};
//    $j.ajax({url: 'lexigram_sequencer.js.erb',  
//      $j.ajax({url: 'sequence_lexigram',  
//    $j.ajax({url: 'lexigram_sequence',  







------------------
$j(function($) { $j("#sequenceEntry").focusout(function() { $j.post('sequence_lexigram'), function(data) { $j('input#sequence_lexigram').text(data); $j('input#sequence_lexigram').text(data); }; }); });
  /\ returns : ?

$j(function($) { $j("input#sequenceEntry").focusout(function() { $j.post('sequence_lexigram'), function(data) { $j('input#sequence_lexigram').text(data); $j('input#sequence_lexigram').text(data); }; }); });
  /\ RETURNS : ({0:#1=({}), context:#1#, length:1})
------------------

  // this works : 20110903 : produces [23:36:55.707] ({length:1, prevObject:{0:#1=({}), context:#1#, length:1}, context:#1#, selector:"input#sequenceEntry", 0:({})})
$j('input#sequenceEntry').bind(
  'focusout',function(event) {
     if (this.value !== '') {
       $j.ajax('#sequenceEntry', 'POST'), function(data) {
         $j('input#sequence_lexigram').text(data);                   // should be input#sequence_sequence_lexigram
           alert("data = " + data);
       };
     };
  });





  // this works : 20110903 : produces [23:35:53.071] ({length:1, prevObject:{0:#1=({}), context:#1#, length:1}, context:#1#, selector:"input#sequenceEntry", 0:({})})
$j('input#sequenceEntry').bind(

  // this works : 20110912 : produces ???????????????????
$j('#sequenceEntry').bind(
  'focusout',function(event) {
     if (this.value !== '') {
       $j.ajax('#sequenceEntry', 'POST'), function(data) {
         $j('input#sequence_lexigram').text(data.value);              // should be input#sequence_sequence_lexigram
       };
     };
  });
RETURNS : ({length:1, prevObject:{0:#1=({}), context:#1#, length:1}, context:#1#, selector:"input#sequenceEntry", 0:({})})
RETURNS : ({length:1, prevObject:{0:#1=({}), context:#1#, length:1}, context:#1#, selector:"#sequenceEntry", 0:({})})


//        };
//      }
//    );
//  });         
//          function(data) {$j('input#sequence_sequence_lexigram').text(data);},
  //          onSuccess: function(xhrResponse) {alert('completed the transaction');},
    //        onFailure function(xhrResponse) {alert('an exception occurred within the client');},
      //      on404 function(xhrResponse) {alert('the application is experiencing technical difficulty');},
        //    on503 function(xhrResponse) {alert('the application is experiencing heavy traffic, please try again');}
      //    }
    //    }
  //    });
//    }); 
     //     $j.post('sequence_lexigram'), function(data) {
//            $j.post('sequence_lexigram'), function($jsequenctext) {
       //   $j.get('sequence_lexigram'), function($jsequenctext) {
        //  $j.get('lexigram_sequencer'), function($jsequenctext) {
//              $j('input#sequence_sequence_lexigram').text(data);
//           }
//          }
//      });
//  });







$j(document).ready(
    function() {
      $j('input#sequenceEntry').bind(
        'focusout',function(event) {
          $this = (this.value);
          if (this.value !== '') {
            var sequence = document.getElementById('sequence_sequence_text');
            sequence.form.onsubmit = function() { return false; }
            var $jsequencetext = (this.value);
            var $jthis = (this.value);
            $j.ajax({'lexigram_sequence', 'GET'}, data: $j('#sequenceEntry'),
              'ajax:complete',function(event) , xhr status) {eval(xhr.responseText)};
              $j('input#sequence_sequence_lexigram').text(data);
            };
      });
  });






            $j.ajax('lexigram_sequence', 'GET'), function('ajax:complete'event, data) {
              $j('input#sequence_sequence_lexigram').text(data);
            };



















   $j.ajax({url: 'lexigram_sequence', method: 'GET'},
            data: $j('input#sequenceEntry').serialize();,
            dataType: 'text',
            "ajax:success", function(event, data, status, xhr) {$j('input#sequence_sequence_lexigram').text(data);
          });

   $j.ajax({url: 'lexigram_sequence', method: 'GET'},
            data: $j('input#sequenceEntry').serialize();,
            dataType: 'text',
            "ajax:success", function(event, data, status, xhr) {$j('input#sequence_sequence_lexigram').text(data);});

$j.ajax(url: 'lexigram_sequence', method: 'GET',
            data: $j('input#sequenceEntry').serialize();,
            dataType: 'text',
            "ajax:success", function(data) {$j('input#sequence_sequence_lexigram').text(data);});



$j.ajax(url: 'lexigram_sequence', method: 'GET') {
            data: $j('input#sequenceEntry').serialize();,
            dataType: 'text',
            "ajax:success", function(data) {$j('input#sequence_sequence_lexigram').text(data);}};







$j.ajax({
  url: 'lexigram_sequence', 
  method: 'GET', 
  data:   $j('#sequenceEntry').serialize(),
//data: $j('input#sequenceEntry').serialize(),
  dataType: 'text',
  'ajax:success', function(data) {$j('input#sequence_sequence_lexigram').text(data);}});





















            //  alert('$jsequencetext = ' + $jsequencetext);
            //  alert('this.value = ' + (this.value));
            //  alert('$jthis = ' + $jthis);
            //};
        //$j.get('lexigram_sequencer'), function($jsequenctext) {
        //route not found  $j.get('sequence_lexigram'), function($jsequenctext) {$j('input#sequence_sequence_lexigram').text(data);};
        //route not found  $j.get('sequence_lexigram.js.erb'), function($jsequenctext) {$j('input#sequence_sequence_lexigram').text(data);};
        //route not found  $j.post('../../app/views/sequence_lexigram.js.erb'), function($jsequenctext) {$j('input#sequence_sequence_lexigram').text(data);};
/////   $j.ajax('lexigram_sequencer.js.erb'), function(data) {$j('input#sequence_sequence_lexigram').text(data);};
//    $j.ajax({url: 'lexigram_sequencer.js.erb',  
//      $j.ajax({url: 'sequence_lexigram',  
//    $j.ajax({url: 'lexigram_sequence',  
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
///
////
    //        $j.ajax('#sequenceEntry', 'POST'), function(data) {
    //          $j('input#sequence_sequence_lexigram').text(data);
    //        }; // RETURNS : [09:04:48.822] GET http://localhost:3000/sequences/new [HTTP/1.1 304 Not Modified 431ms]
    //      };
    //    });
    // });
////
///
//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
///
////
    //        $j.ajax('#sequenceEntry', 'GET'), function(data) {
    //          $j('input#sequence_sequence_lexigram').text(data);
    //        }; // RETURNS : [09:04:48.822] GET http://localhost:3000/sequences/new [HTTP/1.1 304 Not Modified 431ms]
    //      };
    //    });
    // });
////
///
//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            // var $jsequencetext = (this.value);
            // $j.ajax('sequence_lexigram'), function(data) {
            //   $j('input#sequence_sequence_lexigram').text(data);
            // }
//          }
//      });
//  });
//        };
//      }
//    );
//  });         
//          function(data) {$j('input#sequence_sequence_lexigram').text(data);},
  //          onSuccess: function(xhrResponse) {alert('completed the transaction');},
    //        onFailure function(xhrResponse) {alert('an exception occurred within the client');},
      //      on404 function(xhrResponse) {alert('the application is experiencing technical difficulty');},
        //    on503 function(xhrResponse) {alert('the application is experiencing heavy traffic, please try again');}
      //    }
    //    }
  //    });
//    }); 
     //     $j.post('sequence_lexigram'), function(data) {
//            $j.post('sequence_lexigram'), function($jsequenctext) {
       //   $j.get('sequence_lexigram'), function($jsequenctext) {
        //  $j.get('lexigram_sequencer'), function($jsequenctext) {
//              $j('input#sequence_sequence_lexigram').text(data);
//           }
//          }
//      });
//  });













       // $j('form#new_sequence input#sequence_sequence_lexigram').val(data);                // inserts data properly 
       // $j('form#new_sequence input#sequence_sequence_lexigram').html($this);              // inserts $this properly

//        $j('form#new_sequence input#sequence_sequence_lexigram').val(data);
//        $j('form#new_sequence input#sequence_sequence_lexigram').val("a");                 // <<<<<<<<<<<<<<< inserts a properly
//        $j.ajax({url: 'lexigram_sequence', 'GET'}, data: $this.serialize(), ajax:success: $j('form#new_sequence input#sequence_sequence_lexigram').val(data); );
    //    $j.ajax({url: 'lexigram_sequence', 'GET'}, data: $this.serialize(), ajax:success: $j('body').append(data); );
    //    $j.ajax({url: 'lexigram_sequence', 'GET', data: $this.serialize()}, 'ajax:success', $j('body').append(data));
    //    $j.ajax({url: 'lexigram_sequence', 'GET'}, data: $this.serialize()),

     // $j('form#new_sequence input#sequence_sequence_lexigram').val(responseText);        // <<<<<<<<<<<<<<< 
   // $j('form#new_sequence input#sequence_sequence_lexigram').val("a");                 // <<<<<<<<<<<<<<< inserts a properly
   // $j('form#new_sequence input#sequence_sequence_lexigram').val("a");                 // <<<<<<<<<<<<<<< inserts a properly
   // $j('form#new_sequence input#sequence_sequence_lexigram').val("a");                 // <<<<<<<<<<<<<<< inserts a properly
     // $j.ajax({url: 'lexigram_sequence', data: 'GET', data-method: $j('input#sequenceEntry').val()});
    //   if (this.value !== '') {
   //   $j.ajax({'lexigram_sequence', 'GET'}, data: $j('#sequenceEntry').serialize();)
  //      return false;
//    $j.ajax('lexigram_sequence', 'GET', data: $j('#sequenceEntry').serialize()); return false;
//    $j.ajax({'lexigram_sequence', 'GET'}, data: $j('#sequenceEntry').serialize();); return false;
//  $j.ajax({'lexigram_sequence', 'GET'}, data: $j('#sequenceEntry').serialize()),
//    $j('form#new_sequence input#sequence_sequence_lexigram').val(data);      // <<<<<<<<<<<<<<< this works, it inserts a properly
//      $j('input#sequence_sequence_lexigram').html(data.value);
//      $j('input#sequence_sequence_lexigram').html(textResponse);
//      $j('input#sequence_sequence_lexigram').html(data;
  //    $j('input#sequence_sequence_lexigram').text(data);
    //  $j('input#sequence_sequence_lexigram').val(data);                  // <<<<<<<<<<<<<<<<< this works and is in use.



=== 201109121052 =========================================================
    $j.ajax({
      url: 'lexigram_sequenced',
      type: 'GET',
      dataType: 'text',
      data: $j('#sequenceEntry').val();}).bind(
        complete,function(event, data, status, xhr) {
          $j('#sequence_sequence_lexigram').val(data);
      });
    });
    // RETURNS : [22:26:15.125] SyntaxError: missing } after property list
==========================================================================



USING THE PROMPT


  === 20110920 ==================================================================================================
  // golden code, it places the user entry into the variable answer, then places that in all fields
  // next step beyond this code is to finagle in the sequence_lexigram processing with ajax and the ruby method.
$j(document).ready(
  function() {
    var ans = prompt("Enter your data here","");
      try {
        if (ans === "") {
        throw new Error("Please enter your data");
      }
      $j('#sequence_sequence_text').val(ans);
      $j('#sequence_sequence_creation').val(ans);
      $j('#sequence_sequence_complete').val(ans);
      $j('#sequence_sequence_lexigram').val(ans);
      $j('#sequence_sequence_singular').val(ans);
      alert("Your entry is " + ans );
    }
    catch (errMsg) {
      alert(errMsg.message);
    }
  });
=== 20110920 ==================================================================================================





var lexigrams = $j.ajax({ url: "http://localhost:3000/lib/lexigram_sequenced", type: "GET", action: 'lexigram_sequenced', data: $j('data-remote#sequencetext').serialize()}).responseText;

var lexigrams = $j.ajax({ url: "http://localhost:3000/lexigram_sequenced", type: "GET", action: 'lexigram_sequenced', data: $j('data-remote#sequencetext').serialize()}).responseText;
  // returns : [22:18:43.416] GET http://localhost:3000/lexigram_sequenced [HTTP/1.1 404 Not Found 17ms]

var lexigrams = $j.ajax({ url: "http://localhost:3000/app/helpers/lexigram.rb", type: "POST", data: $j('input#sequenceEntry').serialize()}).responseText;
  // RETURNS : [22:09:48.158] POST http://localhost:3000/app/helpers/lexigram.rb [HTTP/1.1 404 Not Found 19ms]

var lexigrams = $j.ajax({ url: "http://localhost:3000/app/helpers/lexigram.rb", type: "GET", data: $j('input#sequenceEntry').serialize()}).responseText;
  // RETURNS : [22:08:20.371] GET http://localhost:3000/app/helpers/lexigram.rb?sequenceEntry=asdf+asdf+asdf+3333 [HTTP/1.1 404 Not Found 19ms]

var lexigrams = $j.ajax({ url: "http://localhost:3000/lexigram_sequenced", type: "GET", data: $j('input#sequenceEntry').serialize()}).responseText;
  //RETURNS : [22:11:59.455] GET http://localhost:3000/lexigram_sequenced?sequenceEntry=asdf+asdf+asdf+3333 [HTTP/1.1 404 Not Found 19ms]

var lexigrams = $j.ajax({ url: "http://localhost:3000/lexigram_sequenced", type: "GET", :action 'lexigram_sequenced', data: $j('data-remote=sequencetext').serialize()}).responseText;
  // returns [22:21:11.529] SyntaxError: invalid property id

  
var lexigrams = $j.ajax({ url: "http://localhost:3000/app/helpers/lexigram.rb", type: "GET", data: $j('input#sequenceEntry').serialize()}).responseText;


var lexigrams = $j.ajax({ url: "http://localhost:3000/app/helpers/lexigram.rb", type: "GET", data: $j('input#sequenceEntry').serialize()}).responseText;
















====


=== bind ======== WIDGET USAGE ============================= \/ works ?

  :javascript
    var form = $j("##{widget_id} form");

    form.submit(function() {
      $j.ajax({url: form.attr("data-event-url"), data: form.serialize()})
      return false;
    });


$j(document).ready(
  function() {
    $j('formAnagram#anagram').bind({
      var form = $j("##{widget_id} form");

      form.submit(function() {
        $j.ajax({url: form.attr("data-event-url"), data: form.serialize()})
        return false;
      });
    });

    $j('formSequenceCreated').bind({
      var form = $j("##{widget_id} form");

      form.submit(function() {
        $j.ajax({url: form.attr("data-event-url"), data: form.serialize()})
        return false;
      });
    });
  }
);
================================================= /\ works ?






$("#sequence_sequence_lexigram").html("<%= escape_javascript(render(:partial => 'sequences/sequencing_lexigram')) %>");
$("#sequence_sequence_lexigram").html("<%= escape_javascript(render(:partial => 'sequences/sequencing_lexigram')) %>");

$j("input#sequence_sequence_lexigram").html("escape_javascript(render(<%= @lexigram_sequenced %>)))");



$j("input#sequence_sequence_lexigram").html(<span>"lexigram_sequence is " + <%= @lexigram_sequenced %></span>);


don't wokr
$j("input#sequence_sequence_lexigram").html("<%= escape_javascript(render('sequences/lexigram_sequenced')) %>");
$j("input#sequence_sequence_lexigram").html("<%= escape_javascript(render('sequences/lexigram_sequenced')) %>");
$j("input#sequence_sequence_lexigram").html(<span>"lexigram_sequence is " + <%= @lexigram_sequenced %></span>);
var $jlexigram_sequence = $j.post("lexigram_sequenced", { sequencetext: $j('#sequencetext').serialize(),success:function(data){alert(data)}}).responseText;

















retest these \/ and move them up 20110927


$j("input#sequence_sequence_lexigram").html("<%= @lexigram_sequenced %>");
$j("input#sequence_sequence_lexigram").html(<span>"lexigram_sequence is " + <%= @lexigram_sequenced %></span>);
$j("input#sequence_sequence_lexigram").html(<span>"lexigram_sequence is " + <%= @lexigram_sequenced %></span>);


var lexigrams = $j.ajax({ url: "http://localhost:3000/app/helpers/lexigram.rb", type: "POST", data: $j('input#sequenceEntry').serialize()}).responseText;
  // RETURNS : [22:09:48.158] POST http://localhost:3000/app/helpers/lexigram.rb [HTTP/1.1 404 Not Found 19ms]

var lexigrams = $j.ajax({ url: "http://localhost:3000/app/helpers/lexigram.rb", type: "GET", data: $j('input#sequenceEntry').serialize()}).responseText;
  // RETURNS : [22:08:20.371] GET http://localhost:3000/app/helpers/lexigram.rb?sequenceEntry=asdf+asdf+asdf+3333 [HTTP/1.1 404 Not Found 19ms]

var lexigrams = $j.ajax({ url: "http://localhost:3000/lexigram_sequenced", type: "GET", data: $j('input#sequenceEntry').serialize()}).responseText;
  //RETURNS : [22:11:59.455] GET http://localhost:3000/lexigram_sequenced?sequenceEntry=asdf+asdf+asdf+3333 [HTTP/1.1 404 Not Found 19ms]

var lexigrams = $j.ajax({ url: "http://localhost:3000/lexigram_sequenced" { :action => 'lexigram_sequenced }, type: "GET", data: $j('data-remote#sequencetext').serialize()}).responseText;

var lexigrams = $j.ajax({ url: "http://localhost:3000/app/helpers/lexigram.rb", type: "GET", data: $j('input#sequenceEntry').serialize()}).responseText;


var lexigrams = $j.ajax({ url: "http://localhost:3000/app/helpers/lexigram.rb", type: "GET", data: $j('input#sequenceEntry').serialize()}).responseText;


var lexigrams = $j.ajax({ url: "http://localhost:3000/lexigram_sequenced", type: "GET", :action 'lexigram_sequenced, data: $j('data-remote#sequencetext').serialize()}).responseText;
  // returns [22:21:11.529] SyntaxError: invalid property id






