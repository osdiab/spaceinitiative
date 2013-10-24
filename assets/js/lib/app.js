/**
 * app.js
 * ------
 * Entrypoint into application Javascript
 */

$(document).ready(function() {
  // perform global initialization
  initPage();

  // load page-specific behavior
  page = $('body').data('page');
  if (typeof window[page] === 'function') {
    window[page].init();
  }
});
