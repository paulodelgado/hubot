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
  "Colombians",
  "Wedemeyers"
]

module.exports = (robot) ->
  robot.hear /least favorite race/i, (msg) ->
    msg.send "I would prefer to avoid an HR moment. Just ask me offline."

  # Shitty attempt at ignoring "least favorite race"
  robot.hear /[^a][^s][^t] favorite race/i, (msg) ->
    msg.send "I greatly prefer " + msg.random(races)

