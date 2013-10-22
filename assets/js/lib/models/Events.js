function Events(feed) {
  this.feed = feed
}

Events.GCAL_TIME_FORMAT = 'YYYY-MM-DDThh:mm:ss.SSSZ'
Events.START_OUTPUT_FORMAT = 'dddd MMM DD YYYY, h:mm a'
Events.END_OUTPUT_FORMAT = 'h:mm a'

Events.prototype.displayFeed = function (div)
{
  var eventList = document.createElement('ul')
  $(eventList).attr('class', 'eventList')

  // for each event, create the event element
  $(this.feed).each(function(index, event) {
    var listElem = document.createElement('li')
    $(listElem).attr('class', 'eventElem')

    var heading = document.createElement('h2')
    $(heading).attr('class', 'eventHdr')
    $(heading).text(event.title.$t)

    var description = document.createElement('p')
    $(description).attr('class', 'eventTime')

    // calculate start time
    var startTime = moment(event.gd$when[0].startTime, Events.GCAL_TIME_FORMAT)
    startTime = startTime.format(Events.START_OUTPUT_FORMAT)

    // calculate end time
    var endTime = moment(event.gd$when[0].endTime, Events.GCAL_TIME_FORMAT)
    endTime = endTime.format(Events.END_OUTPUT_FORMAT)

    $(description).text(startTime + ' to ' + endTime)

    // append generated elements
    $(listElem).append(heading)
    $(listElem).append(description)
    $(eventList).append(listElem)
  })

  // set div contents to contain generated event list
  $(div).append(eventList)
}
