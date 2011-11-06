# Berating via deride.me
module.exports = (robot) ->
  robot.respond /deride ([\w .-]+)\?*$/i, (msg) ->
    name = msg.match[1]
    derideMe msg, (insult) ->
      msg.send name + " " + insult + "."

derideMe = (msg, cb) ->
  msg.http('http://deride.me/insults')
    .get() (err, res, body) ->
      insult = JSON.parse(body).insult
      cb insult
