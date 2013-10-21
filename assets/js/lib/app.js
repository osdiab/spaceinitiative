$(document).ready(function() {
  initPage()

  var page = $("body").data("page");
  if("object" === typeof page) {
    window[page].init();
  }
})
