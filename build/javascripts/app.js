(function() {

  window.addEventListener("focus", (function() {
    $("#logo-title #logo").addClass("animated tada");
    return $("#html5-audio")[0].play();
  }), true);

  window.addEventListener("blur", (function() {
    return $("#logo-title #logo").removeClass("animated tada");
  }), true);

  window.addEventListener("blur", (function() {
    return $("#html5-audio").removeAttr("autoplay");
  }), true);

  window.addEventListener("blur", (function() {
    return $("#html5-audio")[0].pause();
  }), true);

}).call(this);
