# Class Duel — Accept (runs as target)
# Validate invite exists
execute unless score @s ec.duel_inv matches 1 run return 0
execute unless entity @s[tag=duel.pending_target] run return 0

# Clear invite state
scoreboard players set @s ec.duel_inv 0
scoreboard players set @s ec.duel_inv_cd 0
tag @s remove duel.pending_target

# Tag both as duelists
tag @s add ec.duel_active_tag
scoreboard players set @s ec.duel_active 1
scoreboard players set @s ec.duel_mode 5
execute as @a[tag=duel.challenger] run tag @s add ec.duel_active_tag
execute as @a[tag=duel.challenger] run scoreboard players set @s ec.duel_active 1
execute as @a[tag=duel.challenger] run scoreboard players set @s ec.duel_mode 5
execute as @a[tag=duel.challenger] run tag @s add duel.challenger_confirmed

# Save equipment for later restore
execute as @a[tag=ec.duel_active_tag] run function evercraft:duel/class/save_equipment

# Start as arena duel
scoreboard players set #duel_active ec.var 1

# Save return positions
execute as @a[tag=ec.duel_active_tag,tag=duel.challenger_confirmed] at @s run summon marker ~ ~ ~ {Tags:["duel.return_a"]}
execute as @a[tag=ec.duel_active_tag,tag=!duel.challenger_confirmed] at @s run summon marker ~ ~ ~ {Tags:["duel.return_b"]}

# Build arena
execute at @s positioned ~ ~172 ~ run function evercraft:duel/start/build_arena

# Teleport
execute at @s positioned ~ ~172 ~ as @a[tag=ec.duel_active_tag,tag=duel.challenger_confirmed] run tp @s ~-5 ~2 ~
execute at @s positioned ~ ~172 ~ as @a[tag=ec.duel_active_tag,tag=!duel.challenger_confirmed] run tp @s ~5 ~2 ~

# Remove from teams
execute as @a[tag=ec.duel_active_tag] run function evercraft:duel/start/leave_team

# Protection during countdown
effect give @a[tag=ec.duel_active_tag] minecraft:blindness 1 0 true
effect give @a[tag=ec.duel_active_tag] minecraft:resistance 5 4 true

# Announce
tellraw @a[tag=ec.duel_active_tag] [{text:"",color:"dark_gray",strikethrough:true,extra:[{text:"                                        ",strikethrough:true}]}]
tellraw @a[tag=ec.duel_active_tag] [{text:"  ",color:"gold"},{text:"CLASS DUEL",color:"light_purple",bold:true}]
tellraw @a[tag=ec.duel_active_tag] [{text:"  Both fighters use the same weapon class!",color:"gray"}]
tellraw @a[tag=ec.duel_active_tag] [{text:"  Switching weapons = forfeit (5s warning).",color:"red"}]
tellraw @a[tag=ec.duel_active_tag] [{text:"",color:"dark_gray",strikethrough:true,extra:[{text:"                                        ",strikethrough:true}]}]

# Broadcast
function evercraft:duel/spectate/broadcast

# Countdown
function evercraft:duel/start/countdown
