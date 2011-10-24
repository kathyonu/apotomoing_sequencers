// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
// Note: this file is called specifically, not through the defaults call.
// see app/views/layouts/application.html.erb

// this function affects views/sequencs/new.html.erb
$j(document).ready(
  function() {
    $j('form input#submit').hide();
  });

// this function affects the anagram widget, which works with sequence_createds widget
$j(document).ready(
  function() {
    $j('#anagram form input#submit').hide();
  });
