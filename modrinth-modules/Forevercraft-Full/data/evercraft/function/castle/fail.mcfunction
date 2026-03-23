# Infinite Castle — Fail (all players dead, disconnected, or forced exit)

# Title
title @a[tag=ic.player] times 10 60 20
title @a[tag=ic.player] title {text:"CASTLE FALLEN",color:"dark_red",bold:true}

execute store result storage evercraft:castle fail.floor int 1 run scoreboard players get #ic_floor ec.var
function evercraft:castle/fail_announce with storage evercraft:castle fail

# Update records
execute as @a[tag=ic.player] run scoreboard players operation @s ic.record > #ic_floor ec.var

# Sound
execute as @a[tag=ic.player] at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 0.5 0.5

# Teleport players back FIRST so dropped crates land at their feet (not in the castle)
execute as @a[tag=ic.player] at @e[type=marker,tag=ic.return,limit=1] run tp @s ~ ~ ~

# Tally coins AFTER teleport (inventory-full drops land at return point)
execute as @a[tag=ic.player] run function evercraft:castle/tally_coins

# Cleanup (teleport will no-op since players already moved)
function evercraft:castle/cleanup
