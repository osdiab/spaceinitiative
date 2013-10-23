function PostLink(data)
{
  this.data = data
  console.log("post link created")
}

PostLink.prototype.render = function(outputElem)
{
  $(outputElem).text("This is a link")
}
