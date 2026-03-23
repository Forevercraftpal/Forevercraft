# Trade Trial — Failed (time ran out)
# Run as/at: the player

# Failure message
title @s times 10 40 10
title @s title [{"text":"TIME'S UP","color":"red","bold":true}]
title @s subtitle {"text":"Trial failed — try again!","color":"gray"}
playsound minecraft:entity.wither.death master @s ~ ~ ~ 0.3 0.5
playsound minecraft:block.anvil.destroy master @s ~ ~ ~ 0.8 0.8

# Show final score
execute store result storage evercraft:trials score int 1 run scoreboard players get @s ec.tt_score
execute store result storage evercraft:trials target int 1 run scoreboard players get @s ec.tt_target
function evercraft:craftforever/trials/show_fail_score with storage evercraft:trials

# Cleanup immediately (no delay on failure)
function evercraft:craftforever/trials/cleanup
