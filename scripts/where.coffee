# Allows Hubot to know where people are
#
module.exports = (robot) ->
  robot.respond /where is ([\w .-]+)\?*$/i, (msg) ->
    name = msg.match[1]
    msg.send "#{name} is probably off taking a dump"
