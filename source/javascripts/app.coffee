window.addEventListener "focus", (->
  $("#logo-title #logo").addClass "animated tada"
  $("#html5-audio")[0].play()
), true

window.addEventListener "blur", (->
  $("#logo-title #logo").removeClass "animated tada"
), true
window.addEventListener "blur", (->
  $("#html5-audio").removeAttr("autoplay")
), true
window.addEventListener "blur", (->
  $("#html5-audio")[0].pause()
), true
