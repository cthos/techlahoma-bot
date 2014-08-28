# Description:
#   Polite.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#
# Author:
#   dannymcc
#   lafent
#

enteringResponses = [
  "Hi-dilly-ho Neighbor!",
  "Welcome to my commode!"
]

leavingResponses = [
  'See you later'
]

youTalkinToMe = (msg, robot) ->
  input = msg.message.text.toLowerCase()
  name = robot.name.toLowerCase()
  input.match(new RegExp('\\b' + name + '\\b', 'i'))?

module.exports = (robot) ->
  robot.hear /\b(joined)\b/i, (msg) ->
    msg.reply msg.random enteringResponses if youTalkinToMe(msg, robot)

  robot.hear /\b(quit)\b/i, (msg) ->
    msg.reply msg.random leavingResponses if youTalkinToMe(msg, robot)

