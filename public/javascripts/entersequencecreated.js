// from the _form for sequence_created

:javascript
  $j(document).ready(
    function() {
      $j('formSequenceCreated form[1]').bind(
        function($je) {
          var form = $j("##sequence_created form");
  
          form.submit(function() {
            $j.ajax({url: form.attr("data-event-url"), data: form.serialize(), asynchronous: false})
            return false;
        });
      });
    }
  );

// the calls from the head tag
  <%= javascript_include_tag "enteranagram.js" %>
  <%= javascript_include_tag "entersequencecreated.js" %>


// the entersequencecreated.js
$j(document).ready(
  function() {
    $j('formSequenceCreated form[1]').bind(
      function($je) {
        var form = $j("##sequence_created form");

        form.submit(function() {
          $j.ajax({url: form.attr("data-event-url"), data: form.serialize(), asynchronous: false})
          return false;
      });
    });
  }
);
