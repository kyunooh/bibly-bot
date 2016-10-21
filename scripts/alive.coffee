cronJob = require('cron').CronJob

targetUrl = "https://www.packtpub.com/packt/offers/free-learning"
timeZone = "Asia/Seoul"


module.exports = (robot) ->
    new cronJob('0 * * * * *', sendMessageMethod(robot), null, true, timeZone)
    
# 쓸모 없어 보이지만 안정화에 도움이 된다. 이유는 모름..
sendMessageMethod = (robot) ->
    -> sendMessage(robot)

sendMessage = (robot) ->
    robot.http(targetUrl).get() (err, res, body) ->
      $ = cheerio.load(body)
