# Interact with Server Density to retrieve some server stat info

username = "apiuser"
password = "c0d3c4rt3l"
apiKey = "x93mb6h8krccu75qzuwnnew5"


module.exports = (robot) ->
  robot.respond /server density raw (.*)/i, (msg) ->
    serverDensity msg, msg.match[1], (resp) ->
      msg.send resp

serverDensity = (msg, url, cb) ->
  authUrl = url.replace(/https?:\/\//, "https://" + username + ":" + password + "@")

  msg.http(authUrl)
    .query("apiKey" : apiKey)
    .get() (err, res, body) ->
      parsedResponse = JSON.parse(body)
      cb parsedResponse
