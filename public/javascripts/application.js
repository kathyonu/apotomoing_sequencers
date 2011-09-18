// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

// this function affects the widget
$j(document).ready(
  function() {
    $j('#anagram form input#submit').hide();
  });
  
$j(document).ready(
  function() {
    $j.get("debug.txt", alert);
  });