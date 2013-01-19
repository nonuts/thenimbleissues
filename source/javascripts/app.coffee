str_replace = (haystack, needle, replacement) ->
  temp = haystack.split(needle)
  temp.join replacement
window.addEventListener "focus", (->
  $("#logo-title #logo").addClass "animated tada"
), true
window.addEventListener "blur", (->
  $("#logo-title #logo").removeClass "animated tada"
  $("#html5-video")[0].pause()
), true
$(document).ready ->
  min = 9
  max = 26
  reset = $(".resizable p").css("fontSize")
  elm = $(".resizable p")
  size = str_replace(reset, "px", "")
  $("a.fontSizePlus").click ->
    if size <= max
      size++
      elm.css fontSize: size
    false

  $("a.fontSizeMinus").click ->
    if size >= min
      size--
      elm.css fontSize: size
    false

  $("a.fontReset").click ->
    elm.css fontSize: reset

