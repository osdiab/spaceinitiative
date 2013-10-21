function Events(feed) {
  this.feed = feed
}

Events.prototype.displayFeed = function (div)
{
  $(div).text(this.feed)
}
