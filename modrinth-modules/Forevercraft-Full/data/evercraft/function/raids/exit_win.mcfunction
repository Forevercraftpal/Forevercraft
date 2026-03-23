# Spirit Raids — Victory Exit
# Called on boss death or voluntary evacuation after clearing floors

# Victory title
title @a[tag=rd.player] times 10 60 20
title @a[tag=rd.player] title {text:"RAID COMPLETE!",color:"gold",bold:true}
title @a[tag=rd.player] subtitle {text:"Victory is yours!",color:"yellow"}

# Victory announcement
tellraw @a [{text:"[Raid] ",color:"dark_red","bold":true},{"selector":"@a[tag=rd.player]"},{text:" has conquered the Spirit Raid!","color":"gold","bold":true}]

# Victory sounds
execute as @a[tag=rd.player] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
execute as @a[tag=rd.player] at @s run playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~ 1 1
execute as @a[tag=rd.player] at @s run playsound minecraft:entity.firework_rocket.twinkle master @s ~ ~ ~ 1 0.8

# Victory particles
execute at @e[type=marker,tag=rd.center,limit=1] run particle minecraft:firework ~ ~2 ~ 3 2 3 0.1 200 force
execute at @e[type=marker,tag=rd.center,limit=1] run particle minecraft:totem_of_undying ~ ~2 ~ 2 2 2 0.5 150 force

# === RAID REWARDS ===
# Exquisite artifact for all raid players
execute as @a[tag=rd.player] run loot give @s loot evercraft:artifacts/exquisite/main
execute as @a[tag=rd.player] run tellraw @s [{text:"  ★ ",color:"gold"},{text:"Exquisite Artifact",color:"gold",bold:true},{text:" — Raid Victory!",color:"gray"}]

# Coin reward: 25 per player
execute as @a[tag=rd.player] run scoreboard players add @s ec.coins 25
execute as @a[tag=rd.player] run scoreboard players add #rm_coins ec.var 25
execute as @a[tag=rd.player] run tellraw @s [{text:"  ★ ",color:"#E0B0FF"},{text:"+25 Forever Coins",color:"#E0B0FF",bold:true},{text:" — Raid Complete!",color:"gold"}]
execute as @a[tag=rd.player] run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.5 1.5
execute as @a[tag=rd.player] if score @s ec.guild_id matches 1.. run function evercraft:guild/contribution/add {amount:125}

# Teleport ALL raid players back to saved positions
execute as @a[tag=rd.player] run function evercraft:raids/restore_position

# Clean up raid room
function evercraft:raids/room/cleanup
