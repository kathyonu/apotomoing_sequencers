// NOT entered into all.js : 20111119

// still working on this one

$j(document).ready(
  function() {
    $j('#sequence_created form input#submit').bind(
      'hover',function(event) {
        $j('#sequence_created form input#submit').removeClass('.sequencesubmit');
        $j('#sequence_created form input#submit').addClass('.submitsequence');
      }
    );
  });
