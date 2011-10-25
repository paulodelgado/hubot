# Hubot has favorite racees!
#
# favorite race
#

races = [
  "White People",
  "Asians",
  "Eskimos",
  "Belgians",
  "Aztecs",
  "Mexicans",
  "Colombians"
]

module.exports = (robot) ->
  robot.hear /favorite race/i, (msg) ->
    msg.send "I greatly prefer " + msg.random(races)
