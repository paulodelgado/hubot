# Interact with Server Density to retrieve some server stat info

username = "apiuser"
password = "c0d3c4rt3l"
apiKey = "x93mb6h8krccu75qzuwnnew5"
account = "blinqmedia.serverdensity.com"
hostname = "api.serverdensity.com"
apiVersion = "1.4"
apiBase = "https://" + hostname + "/" + apiVersion + "/"

timeLock = null;


module.exports = (robot) ->
  robot.respond /sd device list (.*)/i, (msg) ->
    serverDensityDevices msg, msg.match[1], (resp) ->
      msg.send resp

  robot.respond /sd load (.*)/i, (msg) ->
    serverDensityStats msg, msg.match[1], (resp) ->
      msg.send resp

serverDensityStats = (msg, environment, cb) ->
  serverDensityDevices msg, environment, (devices) ->
    for device in devices
      do (device) ->
        url = apiBase + "metrics/getLatest"
        serverDensityGet msg, url, { deviceId : device.deviceId }, (resp) ->
          loadAvg = resp.data.latestMetrics.metrics.system.metrics.loadAvrg.value
          deviceName = device.name
          msg.send device.name + " - System Load: " + loadAvg

serverDensityDevices = (msg, environment, cb) ->
  url = apiBase + "devices/list"
  serverDensityGet msg, url, {}, (resp) ->
    devices = (device for device in resp.data.devices when device.group == environment)
    cb devices

serverDensityGet = (msg, url, extraParams, cb) ->
  authStr = new Buffer(username + ":" + password).toString("base64")
  extraParams["apiKey"] = apiKey
  extraParams["account"] = account
  spinOnLock msg, () ->
    msg.http(url)
      .headers(Authorization : "Basic " + authStr)
      .query(extraParams)
      .get() (err, res, body) ->

        parsedResponse = JSON.parse(body)
        cb parsedResponse

spinOnLock = (msg, cb) ->
  if grabLock(msg)
    cb()
  else
    setTimeout ( ->
      spinOnLock(msg, cb)
    ), 1000

grabLock = (msg) ->
  now = new Date().getTime()
  if (timeLock == null) || (now - timeLock > 1000)
    timeLock = now
    return true
  else
    return false

