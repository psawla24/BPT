$(document).ready(function(){

  var hello = $('#title');

  var backgrounds = new Array(
      'url(assets/bpt1.jpg)',
      'url(assets/bpt2.jpg)',
      'url(assets/bpt3.jpg)',
      'url(assets/bpt4.jpeg)',
      'url(assets/bpt5.jpg)',
      'url(assets/bpt6.jpg)'
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