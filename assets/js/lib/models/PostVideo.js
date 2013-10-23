function PostVideo(data)
{
  this.data = data
  console.log("post video created")
}

PostVideo.prototype.render = function(outputElem)
{
  $(outputElem).text("This is a video")
}
