function PostQuote(data)
{
  this.data = data
  console.log("post quote created")
}

PostQuote.prototype.render = function(outputElem)
{
  $(outputElem).text("This is a quote")
}
