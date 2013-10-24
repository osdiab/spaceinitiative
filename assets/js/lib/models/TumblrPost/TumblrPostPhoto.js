/**
 * TumblrPostPhoto.js
 * ------------------
 * Represents a Tumblr post of type 'photo'
 */

/**
 * @constructor
 * @param {object} data Data for post from Tumblr
 */
function TumblrPostPhoto(data)
{
  TumblrPost.call(this, data);
}

// subclass
TumblrPostPhoto.prototype = inherit(TumblrPost.prototype);
/** Constructor of original object */
TumblrPostPhoto.prototype.constructor = TumblrPostPhoto;

// ********************
// * instance methods *
// ********************

/**
 * Renders a photo post to the output element specified
 * @param {string} outputElem Page element to output to
 */
TumblrPostPhoto.prototype.render = function(outputElem)
{
  $(outputElem).text('This is a photo. Caption: ' + this.data.caption);
};
