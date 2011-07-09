// from in the _form.html.haml
// this file is not in use

  :javascript
    $j().ready(function() {
        $j('.formAnagram#anagram form').bind(function($je) {
            var form = $j("##widget_id form:");
  
            form.submit(function() {
              $j.ajax({url: form.attr("data-event-url"), data: form.serialize()})
              return false;
            });
          });
        }
    );

// the calls in the head tag
  <%= javascript_include_tag "enteranagram.js" %>
  <%= javascript_include_tag "entersequencecreated.js" %>


// enteranagram.js
$j(document).ready(
  function() {
    $j('.formAnagram#anagram form[0]').bind(
      function($je) {
        var form = $j("##anagram form:");

        form.submit(function() {
          $j.ajax({url: form.attr("data-event-url"), data: form.serialize()})
          return false;
        });
      });
    }
);
