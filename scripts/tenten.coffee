# author : jelly, hunJ, myounghoPak
# Dependency:
#    - cron
# Description:
# 한국시간 (KST) 기준 23시가 되면 #_general 에 #darknight 로 이동하러는 메세지를 출력한다.
#                     07시가 되면 #darknight 에 #_general 로 이동하라는 메세지를 출력한다.

cronJob = require('cron').CronJob

module.exports = (robot) ->
#  darknightJob = new cronJob('0 0 23 * * *', wakeUpDarknight(robot), null, true, "Asia/Seoul")
  tentenJob = new cronJob('0 10 10 * * *', tenten(robot), null, true, "Asia/Seoul")




tenten = (robot) ->
  -> robot.messageRoom '#ten-ten', '텐텐십십쥬쥬열열1010tenten'
