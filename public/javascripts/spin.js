

// Spin plugin code source is : fgnass.github.com/spin.js/
$j.fn.spin = function(opts) {
  this.each(function() {
    var $jthis = $j(this),
        data = $jthis.data();

    if (data.spinner) {
      data.spinner.stop();
      delete data.spinner;
    }
    if (opts !== false) {
      data.spinner = new Spinner($j.extend({color: $jthis.css('color')}, opts)).spin(this);
    }
  });
  return this;
};

$j.ajaxSetup({
  beforeSend: function() {
    $j('#countsingulars').hide();
  },
  success : function() {
    $j('#countsingulars').show();
  }
  });

$j(document).ready(  function() {
  var target = document.getElementById('countsingulars');
  var spinner = new Spinner(opts).spin(target);

  $j('#reset').bind(
       'click',function(event) {
var opts = {
  lines: 16, // The number of lines to draw
  length: 30, // The length of each line
  width: 20, // The line thickness
  radius: 1, // The radius of the inner circle
  color: '#000', // #rgb or #rrggbb
  speed: 0.5, // Rounds per second
  trail: 74, // Afterglow percentage
  shadow: true, // Whether to render a shadow
  hwaccel: false // Whether to use hardware acceleration
};






















// Spin.js source is : fgnass.github.com/spin.js/

var opts = {
  lines: 16, // The number of lines to draw
  length: 30, // The length of each line
  width: 20, // The line thickness
  radius: 1, // The radius of the inner circle
  color: '#000', // #rgb or #rrggbb
  speed: 0.5, // Rounds per second
  trail: 74, // Afterglow percentage
  shadow: true, // Whether to render a shadow
  hwaccel: false // Whether to use hardware acceleration
};
var target = document.getElementById('foo');
var spinner = new Spinner(opts).spin(target);


// The spin() method creates the necessary HTML elements and starts the animation.
//  If a target element is passed as argument, the spinner is added as first child
//   and horizontally and vertically centered.

// Manual positioning

// In order to manually position the spinner, 
//  invoke spin() without arguments and
//   use the el property to access the HTML element:

var spinner = new Spinner().spin();
target.appendChild(spinner.el);

//   The returned element is a DIV with position:relative and no height.
//   The center of the spinner is positioned at the top left corner of this DIV.

// Hiding the spinner

// To hide the spinner, invoke the stop() method,
//  which removes the UI elements from the DOM and stops the animation.
// Stopped spinners may be reused by calling spin() again.

// jQuery plugin

// Spin.js does not require jQuery. 
// Anyway, if you use jQuery (or zepto.js) you may use the following plugin:


// Spin.js source is : fgnass.github.com/spin.js/
$.fn.spin = function(opts) {
  this.each(function() {
    var $this = $(this),
        data = $this.data();

    if (data.spinner) {
      data.spinner.stop();
      delete data.spinner;
    }
    if (opts !== false) {
      data.spinner = new Spinner($.extend({color: $this.css('color')}, opts)).spin(this);
    }
  });
  return this;
};

// i changed the above to this, due to our using $j as our $ sign.

$j.fn.spin = function(opts) {
  this.each(function() {
    var $jthis = $j(this),
        data = $jthis.data();

    if (data.spinner) {
      data.spinner.stop();
      delete data.spinner;
    }
    if (opts !== false) {
      data.spinner = new Spinner($j.extend({color: $jthis.css('color')}, opts)).spin(this);
    }
  });
  return this;
};
