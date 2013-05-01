(function(){
  var ua = navigator.userAgent,
    isMobileWebkit = /WebKit/.test(ua) && /Mobile/.test(ua);

  if (isMobileWebkit) {
    $('html').addClass('parallax-mobile');
  }

  $(function(){
    var iScrollInstance;

    if (isMobileWebkit) {
      iScrollInstance = new iScroll('wrapper');

      $('#scroller').stellar({
        scrollProperty: 'transform',
        positionProperty: 'transform',
        horizontalScrolling: true,
        verticalOffset: 150,
        verticalScrolling: false
      });
    } else {
      $.stellar({
        horizontalScrolling: true,
        verticalOffset: 150,
        verticalScrolling: false
      });
    }
  });

})();