# Spirit Raids — Defeat Exit
# Called when all players die or timer expires

# Defeat title
title @a[tag=rd.player] times 10 60 20
title @a[tag=rd.player] title {text:"RAID FAILED",color:"dark_red",bold:true}
title @a[tag=rd.player] subtitle {text:"The darkness claims another...",color:"red"}

# Shame message
tellraw @a [{text:"[Raid] ",color:"dark_red","bold":true},{text:"The raid party has fallen.","color":"dark_gray","italic":true}]

# Defeat sounds
execute as @a[tag=rd.player] at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 0.5 0.5
execute as @a[tag=rd.player] at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ 0.8 0.3

# Remove ALL experience levels (harsh penalty)
experience set @a[tag=rd.player] 0 levels
experience set @a[tag=rd.player] 0 points
tellraw @a[tag=rd.player] [{text:"[Raid] ",color:"dark_red"},{text:"All experience levels lost.","color":"red","italic":true}]

# Teleport to bed spawn or world spawn (NOT original position — "sent home")
execute as @a[tag=rd.player] in minecraft:overworld run function evercraft:raids/send_home

# Gear is kept (no item loss)

# Clean up raid room
function evercraft:raids/room/cleanup
