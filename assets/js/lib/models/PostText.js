function PostText(data)
{
  this.data = data
  console.log("post text created")
}

PostText.prototype.render = function(outputElem)
{
  var title = document.createElement('h2')
  $(title).attr('class', 'newsTitle')
  $(title).text(this.data.title)
  var body = document.createElement('span')
  $(body).attr('class', 'newsBody')
  $(body).html(this.data.body)

  $(outputElem).append(title)
  $(outputElem).append(body)
}
