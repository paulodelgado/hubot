# Are you hungry?
#
searches = [
  "Atlanta varsity",
  "bbq pork",
  "thai food",
  "sandwich",
  "sausage links",
  "fried egg",
  "bacon slices"
]
module.exports = (robot) ->
  robot.respond /h+u+n+g+r+y+/i, (msg) ->
    imageMe msg, msg.random(searches), (url) ->
      msg.send url

imageMe = (msg, query, cb) ->
  msg.http('http://ajax.googleapis.com/ajax/services/search/images')
    .query(v: "1.0", rsz: '8', q: query)
    .get() (err, res, body) ->
      images = JSON.parse(body)
      images = images.responseData.results
      image  = msg.random images
      cb "#{image.unescapedUrl}#.png"

