# Buddy Revival — Check Conditions
# @s = player attempting to revive a buddy
# Buddies can revive at any midnight (visual_time 18000-18100)
# Regular tamed mobs still need full moon (existing system)

# Check if it's midnight (DayTime 18000-18100 in the slow daylight system)
execute unless score #visual_time ec.var matches 18000..18100 run tellraw @s [{text:"[Buddy] ",color:"#FFD700"},{text:"Buddy revival requires midnight. Wait for the clock to strike 12.",color:"red"}]
execute unless score #visual_time ec.var matches 18000..18100 run return fail

# Conditions met — proceed with revival
function evercraft:buddy/revive/buddy_revive
