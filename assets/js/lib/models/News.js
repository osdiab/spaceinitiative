function News(data) {
  this.data = data
}

News.prototype.render = function(outputElem)
{
  var newsList = document.createElement('ul')
  $(newsList).attr('class', 'newsList')

  // for each news post, create the post element
  $(this.data.posts).each(function(index, post) {
    // wrap the raw post in a helper class
    post = PostFactory.create(post)

    var listElem = document.createElement('li')
    $(listElem).attr('class', 'newsElem')
    post.render(listElem)

    $(newsList).append(listElem)
  })

  $(outputElem).append(newsList)
}
