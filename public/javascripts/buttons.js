
  <%= javascript_include_tag "buttons.js" %>


$j(document).ready(
  function() {
    $j('#anagram > form > submit').button({
      icons: { primary: 'ui-icon-gear' }
    });
  });
