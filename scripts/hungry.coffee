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
