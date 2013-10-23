function PostPhoto(data)
{
  this.data = data
  console.log("post photo created")
}

PostPhoto.prototype.render = function(outputElem)
{
  $(outputElem).text("This is a photo. Caption: " + this.data.caption)
}
