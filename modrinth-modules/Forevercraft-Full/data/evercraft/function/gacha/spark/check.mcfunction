# Check if player has reached spark threshold (50 pulls)
# Runs as @s = player

execute unless score @s ec.wish_spark matches 50.. run return 0

tellraw @s ["",{"text":"\n\u2605\u2605\u2605 ","color":"gold"},{"text":"Your Lucidity has Peaked!","color":"gold","bold":true},{"text":" \u2605\u2605\u2605","color":"gold"},{"text":"\n"},{"text":"  You've made 50 pulls! ","color":"gray"},{"text":"Visit the Fountain","color":"yellow"},{"text":"\n"},{"text":"  to claim ANY item of your choice!","color":"gray"},{"text":"\n"}]

playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~ 1 1
title @s subtitle {"text":"Choose ANY item from the pool!","color":"gold"}
title @s title {"text":"\u2605 Your Lucidity has Peaked! \u2605","color":"gold"}
