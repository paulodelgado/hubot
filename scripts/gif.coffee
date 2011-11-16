# gifs!
module.exports = (robot) ->
  robot.hear /highjump[^_]/i, (msg) ->
      msg.send 'http://dl.dropbox.com/u/1506097/Images/gifs/highjump_toilet.gif'

  robot.hear /clap clap/i, (msg) ->
      msg.send 'http://dl.dropbox.com/u/145070/animated_gifs/clapping.gif'

  robot.hear /deploy(ing)?/i, (msg) ->
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
