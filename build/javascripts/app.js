(function() {

  window.addEventListener("focus", (function() {
    return $("#logo-title #logo").addClass("animated tada");
  }), true);

  window.addEventListener("blur", (function() {
    $("#logo-title #logo").removeClass("animated tada");
    return $("#html5-video")[0].pause();
  }), true);

}).call(this);
