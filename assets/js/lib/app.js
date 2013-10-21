$(document).ready(function() {
  initPage()

  // load page-specific behavior
  page = $('body').data('page');
  if(typeof window[page] === 'object') {
    window[page].init();
  }
})
