# Allows Hubot to know where people are
#
messages = [
  " is probably off taking a dump.",
  " is buying drugs at the marta station.",
  " is crushing a shitter",
  " is huffing paint in the stairwell.",
  " is taking pictures of feet in the bathroom.",
  " is printing off resumes in the break room.",
  " is spraypainting goatse on the bathroom wall.",
  " is buying another few iPads for Paulo."
]
module.exports = (robot) ->
  robot.respond /where is ([\w .-]+)\?*$/i, (msg) ->
    name = msg.match[1]
    msg.send name + msg.random(messages)
