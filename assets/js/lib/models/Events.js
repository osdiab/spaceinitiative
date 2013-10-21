function Events(feed) {
  this.feed = feed
}

Events.prototype.displayFeed = function (div)
{
  toAdd = document.createElement('ul')
  $(toAdd).attr('class', 'eventList')

  $(this.feed).each(function(index, element) {
    element = document.createElement('li')
    $(element).attr('class', 'eventElem')

    // TODO: fill element with data

    $(toAdd).append(element)
  })

  $(div).append(toAdd)
}
