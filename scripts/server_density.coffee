# Interact with Server Density to retrieve some server stat info

username = "apiuser"
password = "c0d3c4rt3l"
apiKey = "x93mb6h8krccu75qzuwnnew5"
account = "blinqmedia.serverdensity.com"
hostname = "api.serverdensity.com"
apiVersion = "1.3"
apiBase = "https://" + hostname + "/" + apiVersion + "/"


module.exports = (robot) ->
  robot.respond /sd device list (.*)/i, (msg) ->
    serverDensityDevices msg, msg.match[1], (resp) ->
      msg.send resp

  robot.respond /sd_stats (.*)/i, (msg) ->
    serverDensityStats msg, msg.match[1], (resp) ->
      msg.send resp

serverDensityStats = (msg, environment, cb) ->
  serverDensityDevices msg, environment, (devices) ->
    for device in devices
      do (device) ->
        msg.send "processing device " + device.deviceId
        url = apiBase + "metrics/getLatest"
        serverDensityGet msg, url, { deviceId : device.deviceId }, (resp) ->
          msg.send resp

serverDensityDevices = (msg, environment, cb) ->
  url = apiBase + "devices/list"
  serverDensityGet msg, url, {}, (resp) ->
    devices = (device for device in resp.data.devices when device.group == environment)
    cb devices

serverDensityGet = (msg, url, extraParams, cb) ->
  authStr = new Buffer(username + ":" + password).toString("base64")
  extraParams["apiKey"] = apiKey
  extraParams["account"] = account
  setTimeout ( ->
    msg.http(url)
      .headers(Authorization : "Basic " + authStr)
      .query(extraParams)
      .get() (err, res, body) ->
        msg.send "err: " + err
        msg.send "response: " + res
        msg.send "body: " + body

        parsedResponse = JSON.parse(body)
        cb parsedResponse
    ), 5000
