$# First-to-X Duel — Accept (runs as target, target=$(target))
# target: 3 or 5

# Validate invite exists
execute unless score @s ec.duel_inv matches 1 run return 0
execute unless entity @s[tag=duel.pending_target] run return 0

# Clear invite state
scoreboard players set @s ec.duel_inv 0
scoreboard players set @s ec.duel_inv_cd 0
tag @s remove duel.pending_target

# Set kill target for both players
$scoreboard players set @s ec.duel_target $(target)
$execute as @a[tag=duel.challenger] run scoreboard players set @s ec.duel_target $(target)

# Init kill counts
scoreboard players set @s ec.duel_kills 0
execute as @a[tag=duel.challenger] run scoreboard players set @s ec.duel_kills 0
scoreboard players set @s ec.ftx_round 0
execute as @a[tag=duel.challenger] run scoreboard players set @s ec.ftx_round 0

# Tag both as duelists
tag @s add ec.duel_active_tag
scoreboard players set @s ec.duel_active 1
scoreboard players set @s ec.duel_mode 6
execute as @a[tag=duel.challenger] run tag @s add ec.duel_active_tag
execute as @a[tag=duel.challenger] run scoreboard players set @s ec.duel_active 1
execute as @a[tag=duel.challenger] run scoreboard players set @s ec.duel_mode 6
execute as @a[tag=duel.challenger] run tag @s add duel.challenger_confirmed

# Set global active
scoreboard players set #duel_active ec.var 1

# Save return positions
execute as @a[tag=ec.duel_active_tag,tag=duel.challenger_confirmed] at @s run summon marker ~ ~ ~ {Tags:["duel.return_a"]}
execute as @a[tag=ec.duel_active_tag,tag=!duel.challenger_confirmed] at @s run summon marker ~ ~ ~ {Tags:["duel.return_b"]}

# Build arena
execute at @s positioned ~ ~172 ~ run function evercraft:duel/start/build_arena

# Summon respawn markers for each side
execute at @s positioned ~ ~172 ~ run summon marker ~-5 ~2 ~ {Tags:["duel.ftx_spawn_a"]}
execute at @s positioned ~ ~172 ~ run summon marker ~5 ~2 ~ {Tags:["duel.ftx_spawn_b"]}

# Teleport
execute at @s positioned ~ ~172 ~ as @a[tag=ec.duel_active_tag,tag=duel.challenger_confirmed] run tp @s ~-5 ~2 ~
execute at @s positioned ~ ~172 ~ as @a[tag=ec.duel_active_tag,tag=!duel.challenger_confirmed] run tp @s ~5 ~2 ~

# Remove from teams
execute as @a[tag=ec.duel_active_tag] run function evercraft:duel/start/leave_team

# Protection
effect give @a[tag=ec.duel_active_tag] minecraft:blindness 1 0 true
effect give @a[tag=ec.duel_active_tag] minecraft:resistance 5 4 true

# Setup bossbar
bossbar add evercraft:ftx_duel {text:"First-to-X Duel",color:"red"}
bossbar set evercraft:ftx_duel visible true
bossbar set evercraft:ftx_duel players @a[tag=ec.duel_active_tag]
bossbar set evercraft:ftx_duel color red
$bossbar set evercraft:ftx_duel max $(target)
bossbar set evercraft:ftx_duel value 0

# Announce
tellraw @a[tag=ec.duel_active_tag] [{"text":"","color":"dark_gray","strikethrough":true,"extra":[{"text":"                                        ","strikethrough":true}]}]
$tellraw @a[tag=ec.duel_active_tag] [{"text":"  ","color":"gold"},{"text":"FIRST TO $(target)","color":"red","bold":true}]
$tellraw @a[tag=ec.duel_active_tag] [{"text":"  First to $(target) kills wins! Respawns between rounds.","color":"gray"}]
tellraw @a[tag=ec.duel_active_tag] [{"text":"","color":"dark_gray","strikethrough":true,"extra":[{"text":"                                        ","strikethrough":true}]}]

# Broadcast
function evercraft:duel/spectate/broadcast

# Countdown
function evercraft:duel/start/countdown
