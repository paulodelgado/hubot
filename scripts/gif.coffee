# gifs!

module.exports = (robot) ->
  robot.hear /highjump/i, (msg) ->
      msg.send 'http://dl.dropbox.com/u/1506097/Images/gifs/high_toilet.gif'

  robot.hear /clap clap/i, (msg) ->
      msg.send 'http://dl.dropbox.com/u/145070/animated_gifs/clapping.gif'

  robot.respond /deploy(ing)?/i, (msg) ->
      msg.send 'http://dl.dropbox.com/u/1506097/Images/gifs/t2_nuke.gif'

  robot.hear /downtime max/i, (msg) ->
      msg.send 'http://dl.dropbox.com/u/1506097/Images/downtime_max.jpg'

  robot.hear /downtime one/i, (msg) ->
      msg.send 'http://dl.dropbox.com/u/1506097/Images/downtime_one.jpg'

  robot.hear /zero downtime/i, (msg) ->
      msg.send 'http://dl.dropbox.com/u/1506097/Images/downtime-zero.png'

  robot.hear /oh snap/i, (msg) ->
      msg.send 'http://dl.dropbox.com/u/1506097/Images/gifs/oh_snap.gif'

  robot.hear /chicken/i, (msg) ->
      msg.send 'http://dl.dropbox.com/u/1506097/Images/gifs/canned_chick.gif'

  robot.hear /squeeze/i, (msg) ->
      msg.send 'http://dl.dropbox.com/u/1506097/Images/gifs/sq.gif'

  robot.hear /oh crap/i, (msg) ->
      msg.send 'http://dl.dropbox.com/u/1506097/Images/gifs/chubby.gif'

  robot.hear /hotdog|balloon/i, (msg) ->
      msg.send 'http://dl.dropbox.com/u/1506097/Images/gifs/hot_dog_balln.gif'

  robot.hear /processing/i, (msg) ->
      msg.send 'http://dl.dropbox.com/u/145070/animated_gifs/process_cat.gif'

  robot.hear /cache/i, (msg) ->
      msg.send 'http://dl.dropbox.com/u/45751834/softdev.gif'
