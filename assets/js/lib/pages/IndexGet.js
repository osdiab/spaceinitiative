// URI for google calendar JSONP request.
var GCAL_JSONP_CALLBACK = 'IndexGet.displayEvents'
var GCAL_MAX_RESULTS = 5;
var GCAL_URI = 'http://www.google.com/calendar/feeds/5or10qu0uhtfqcdqb3knrpn3r8%40group.calendar.google.com/public/full?alt=json-in-script&callback=' + GCAL_JSONP_CALLBACK + '&orderby=starttime&max-results=' + GCAL_MAX_RESULTS + '&singleevents=true&sortorder=ascending&futureevents=true'

var IndexGet = new function() {
}

IndexGet.init = function() {
  // launch jsonp request
  var gcalJsonpElem = document.createElement('script')
  gcalJsonpElem.src = GCAL_URI
  $('#head').append(gcalJsonpElem)
}

IndexGet.displayEvents = function(data) {
  var events = new Events(data.feed.entry)
  events.displayFeed('#events')
}
