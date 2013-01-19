(function() {
  var str_replace;

  str_replace = function(haystack, needle, replacement) {
    var temp;
    temp = haystack.split(needle);
    return temp.join(replacement);
  };

  window.addEventListener("focus", (function() {
    return $("#logo-title #logo").addClass("animated tada");
  }), true);

  window.addEventListener("blur", (function() {
    $("#logo-title #logo").removeClass("animated tada");
    return $("#html5-video")[0].pause();
  }), true);

  $(document).ready(function() {
    var elm, max, min, reset, size;
    min = 9;
    max = 26;
    reset = $(".resizable p").css("fontSize");
    elm = $(".resizable p");
    size = str_replace(reset, "px", "");
    $("a.fontSizePlus").click(function() {
      if (size <= max) {
        size++;
        elm.css({
          fontSize: size
        });
      }
      return false;
    });
    $("a.fontSizeMinus").click(function() {
      if (size >= min) {
        size--;
        elm.css({
          fontSize: size
        });
      }
      return false;
    });
    return $("a.fontReset").click(function() {
      return elm.css({
        fontSize: reset
      });
    });
  });

}).call(this);
