# Black Market Heist — On Success (reached end zone)
# Awards rewards, teleports back to pre-heist position

# Prevent double-trigger
execute unless score #heist_active ec.var matches 1 run return 0

# === CELEBRATION ===
title @s times 5 60 15
title @s title {text:"HEIST COMPLETE",color:"gold",bold:true}
title @s subtitle {text:"Contraband secured!",color:"yellow"}

playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.5 100

# Chat
tellraw @s [{text:"\n"},{text:"  \u2620 ",color:"dark_red"},{text:"HEIST SUCCESSFUL",color:"gold",bold:true},{text:" \u2620\n",color:"dark_red"},{text:"  The contraband is yours!\n",color:"yellow"}]

# === TRACK COMPLETION ===
scoreboard players add @s ec.heist_wins 1

# === CLEAR EFFECTS ===
effect clear @s minecraft:slow_falling

# === TELEPORT TO RETURN POSITION (pre-heist spot, NOT bed) ===
# TP BEFORE rewards so overflow drops land at the player's real location, not arena void
execute at @e[type=marker,tag=heist.return,limit=1] run tp @s ~ ~ ~

# === GRANT REWARDS (after TP so drops land safely) ===
function evercraft:heist/reward/grant

# === CLEANUP ===
function evercraft:heist/cleanup
