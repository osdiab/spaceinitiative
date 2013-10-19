$(document).ready(function() {
  var footerHeight = $('#footer').height()
  $('#content').css('padding-bottom', footerHeight + 'px')
  $('#footer').css('margin-top', -footerHeight + 'px')
})
