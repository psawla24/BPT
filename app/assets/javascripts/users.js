$(document).ready(function(){

  var hello = $('#title');

  var backgrounds = new Array(
      'url(https://s3-us-west-1.amazonaws.com/bpt-assets/bpt1.jpg)',
      'url(https://s3-us-west-1.amazonaws.com/bpt-assets/bpt2.jpg)',
      'url(https://s3-us-west-1.amazonaws.com/bpt-assets/bpt3.jpg)',
      'url(https://s3-us-west-1.amazonaws.com/bpt-assets/bpt4.jpg)',
      'url(https://s3-us-west-1.amazonaws.com/bpt-assets/bpt5.jpg)',
      'url(https://s3-us-west-1.amazonaws.com/bpt-assets/bpt6.jpg)',
      'url(https://s3-us-west-1.amazonaws.com/bpt-assets/bpt7.jpg)',
      'url(https://s3-us-west-1.amazonaws.com/bpt-assets/bpt8.jpg)'
    );

  var current = 0;

  function nextBackground() {
    current++;
    current = current % backgrounds.length;
    hello.css('background-image', backgrounds[current]);
  }

  setInterval(nextBackground, 5000);

  hello.css('background-image', backgrounds[0]);
});