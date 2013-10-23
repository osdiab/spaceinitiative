function PostAnswer(data)
{
  this.data = data
  console.log("post answer created")
}

PostAnswer.prototype.render = function(outputElem)
{
  $(outputElem).text("This is an answer")
}
