var IndexGet = new function() {
  this.init = function() {
    function displayEvents(data) {
      events = new Events(data.feed.entry)
      events.displayFeed('#events')
    }

    var gcalJsonpElem = document.createElement(script)
    gcalJsonpElem.src = 'http://www.google.com/calendar/feeds/5or10qu0uhtfqcdqb3knrpn3r8%40group.calendar.google.com/public/full?alt=json-in-script&callback=displayEvents&orderby=starttime&max-results=5&singleevents=true&sortorder=ascending&futureevents=true'
    $('#head').append(gcalJsonpElem)

  }
}
