module.exports = (robot) ->
    new cronJob('0 30 8 * * *', sendMessageMethod(robot), null, true, timeZone)
