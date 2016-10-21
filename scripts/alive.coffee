cronJob = require('cron').CronJob

module.exports = (robot) ->
  darknightJob = new cronJob('0 0 23 * * *', wakeUpDarknight(robot), null, true, "Asia/Seoul")

module.exports = (robot) ->
    new cronJob('0 0 * * * *', sendMessageMethod(robot), null, true, timeZone)
