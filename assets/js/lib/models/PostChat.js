function PostChat(data)
{
  this.data = data
  console.log("post Chat created")
}

PostChat.prototype.render = function(outputElem)
{
  $(outputElem).text("This is a Chat")
}
