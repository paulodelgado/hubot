# Statup time
#
Array::shuffle = -> @sort -> 0.5 - Math.random()
users = [
  'Erick Schmitt',
  'Micah Wedemeyer',
  'Paulo Delgado',
  'Zack Adams',
  'Mike Riley',
  'Tim Gourley',
  'Kris Kemper',
  'Adam Rice',
  'Daniel Upton',
  'Ryan Felton',
  'Luis Caballero',
  'Charles Lumpkin'
]
module.exports = (robot) ->
  robot.respond /standup/i, (msg) ->
    msg.send 'Standup time! Kick it off ' + messages.shuffle().join('\n')
