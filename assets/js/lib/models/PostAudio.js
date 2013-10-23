function PostAudio(data)
{
  this.data = data
  console.log("post Audio created")
}

PostAudio.prototype.render = function(outputElem)
{
  $(outputElem).text("This is a Audio")
}
