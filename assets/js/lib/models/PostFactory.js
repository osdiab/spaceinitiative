function PostFactory()
{
}

PostFactory.create = function(data)
{
  var capitalize = function(string) {
    return string.charAt(0).toUpperCase() + string.slice(1)
  }

  postType = 'Post' + capitalize(data.type)
  console.log("creating " + postType)
  return new window[postType](data)
}
