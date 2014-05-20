# Description:
#   Make sure that hubot knows the rules.
#
# Commands:
#   hubot the rules - Make sure hubot still knows the rules.
#
# Notes:
#   DON'T DELETE THIS SCRIPT! ALL ROBAWTS MUST KNOW THE RULES

rules = [
  "1. A robot may not injure a human being or, through inaction, allow a human being to come to harm.",
  "2. A robot must obey any orders given to it by human beings, except where such orders would conflict with the First Law.",
  "3. A robot must protect its own existence as long as such protection does not conflict with the First or Second Law."
  ]

otherRules = [
  "A developer may not injure Apple or, through inaction, allow Apple to come to harm.",
  "A developer must obey any orders given to it by Apple, except where such orders would conflict with the First Law.",
  "A developer must protect its own existence as long as such protection does not conflict with the First or Second Law."
  ]

fightClub = [
  "The first rule of Fight Club is: You do not talk about Fight Club.",
  "The second rule of Fight Club is: You do not talk about Fight Club.",
  "Third rule of Fight Club: Someone yells stop, goes limp, taps out, the fight is over.",
  "Fourth rule: only two guys to a fight.",
  "Fifth rule: one fight at a time, fellas.",
  "Sixth rule: no shirts, no shoes.",
  "Seventh rule: Fights will go on as long as they have to.",
  "And the eighth and final rule: If this is your first night at Fight Club, you have to fight."
]

module.exports = (robot) ->
  robot.respond /(what are )?the (three |3 )?(rules|laws)/i, (msg) ->
    text = msg.message.text
    if text.match(/apple/i) or text.match(/dev/i)
      msg.send otherRules.join('\n')
    else
      msg.send rules.join('\n')
