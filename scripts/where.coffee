# Allows Hubot to know where people are
#
messages = [
  " is probably off taking a dump.",
  " is buying drugs at the marta station.",
  " is crushing a shitter"
]
module.exports = (robot) ->
  robot.respond /where is ([\w .-]+)\?*$/i, (msg) ->
    name = msg.match[1]
    msg.send name + msg.random(messages)
