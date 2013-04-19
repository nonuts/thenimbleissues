window.addEventListener "focus", (->
  $("#logo-title #logo").addClass "animated tada"
), true
window.addEventListener "blur", (->
  $("#logo-title #logo").removeClass "animated tada"
  $("#html5-video")[0].pause()
), true

