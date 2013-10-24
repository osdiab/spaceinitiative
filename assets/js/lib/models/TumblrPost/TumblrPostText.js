/**
 * TumblrPostText.js
 * -------------
 * Represents a Tumblr post of type 'text'
 */

/**
 * @constructor
 * @param {object} data Data for post from Tumblr
 */
function TumblrPostText(data)
{
  TumblrPost.call(this, data);
}

// subclass
TumblrPostText.prototype = inherit(TumblrPost.prototype);
/** Constructor of original object */
TumblrPostText.prototype.constructor = TumblrPostText;

// ********************
// * instance methods *
// ********************

/**
 * Renders an text post to the output element specified
 * @param {string} outputElem Page element to output to
 */
TumblrPostText.prototype.render = function(outputElem)
{
  var title = document.createElement('h2');
  $(title).attr('class', 'newsTitle');
  $(title).text(this.data.title);
  var body = document.createElement('span');
  $(body).attr('class', 'newsBody');
  $(body).html(this.data.body);

  $(outputElem).append(title);
  $(outputElem).append(body);
};
