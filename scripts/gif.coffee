# gifs!
module.exports = (robot) ->
  robot.respond /highjump/i, (msg) ->
      msg.send 'http://dl.dropbox.com/u/1506097/Images/gifs/highjump_toilet.gif'

  robot.respond /deploy(ing)?/i, (msg) ->
      msg.send 'http://dl.dropbox.com/u/1506097/Images/gifs/t2_nuke.gif'

  robot.respond /downtime max/i, (msg) ->
      msg.send 'http://dl.dropbox.com/u/1506097/Images/downtime_max.jpg'

  robot.respond /downtime one/i, (msg) ->
      msg.send 'http://dl.dropbox.com/u/1506097/Images/downtime_one.jpg'

  robot.respond /zero downtime/i, (msg) ->
      msg.send 'http://dl.dropbox.com/u/1506097/Images/downtime-zero.png'
