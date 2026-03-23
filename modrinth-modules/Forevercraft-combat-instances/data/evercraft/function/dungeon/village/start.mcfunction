# Village Defense — Start
# Called when player uses Village Defense Horn (advancement reward)
# Run as: the player who used the horn

# Revoke advancement for reuse
advancement revoke @s only evercraft:dungeon/use_horn

# Check if a dungeon is already active
execute if score #dg_active ec.var matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"A dungeon is already in progress!",color:"red"}]
execute if score #dg_active ec.var matches 1 run return 0

# Check village-specific 7-day lockout (dg.lo_v)
execute store result score #dg_now ec.var run time query gametime
scoreboard players operation #dg_elapsed ec.var = #dg_now ec.var
scoreboard players operation #dg_elapsed ec.var -= @s dg.lo_v
execute if score @s dg.lo_v matches 1.. if score #dg_elapsed ec.var matches ..503999 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You must wait before defending another village!",color:"red"}]
execute if score @s dg.lo_v matches 1.. if score #dg_elapsed ec.var matches ..503999 run scoreboard players set #dg_struct_id ec.var 20
execute if score @s dg.lo_v matches 1.. if score #dg_elapsed ec.var matches ..503999 run scoreboard players operation #dg_lockout_val ec.var = @s dg.lo_v
execute if score @s dg.lo_v matches 1.. if score #dg_elapsed ec.var matches ..503999 run function evercraft:dungeon/lockout_info
execute if score @s dg.lo_v matches 1.. if score #dg_elapsed ec.var matches ..503999 run return 0

# Check if player is at a village
execute at @s unless predicate evercraft:dungeon/at_village run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You must be inside a village to use this!",color:"red"}]
execute at @s unless predicate evercraft:dungeon/at_village run return 0

# Check if horn matches THIS village (village_id in custom_data must match ec.current_village)
execute store result score #dg_horn_vid ec.var run data get entity @s SelectedItem.components."minecraft:custom_data".village_id
execute unless score #dg_horn_vid ec.var = @s ec.current_village run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"This horn belongs to a different village!",color:"red"}]
execute unless score #dg_horn_vid ec.var = @s ec.current_village run return 0

# Check if player is in a GUI menu
execute if entity @s[tag=Adv.InMenu] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Close your menu first!",color:"red"}]
execute if entity @s[tag=Adv.InMenu] run return 0
execute if entity @s[tag=TX.InMenu] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Close your menu first!",color:"red"}]
execute if entity @s[tag=TX.InMenu] run return 0
execute if entity @s[tag=RF.InMenu] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Close your menu first!",color:"red"}]
execute if entity @s[tag=RF.InMenu] run return 0
execute if entity @s[tag=HS.InMenu] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Close your menu first!",color:"red"}]
execute if entity @s[tag=HS.InMenu] run return 0

# === BEGIN VILLAGE DEFENSE ===

# Consume the horn (clear 1 from player)
clear @s goat_horn[custom_data~{village_defense:true}] 1

# Set global state — type 2 = village defense
scoreboard players set #dg_active ec.var 1
scoreboard players set #dg_wave ec.var 0
scoreboard players set #dg_timer ec.var 60
scoreboard players set #dg_type ec.var 2

# DR difficulty scaling (same as structure dungeons)
execute store result score #dg_dr ec.var run attribute @s minecraft:luck get
scoreboard players set #dg_difficulty ec.var 0
execute if score #dg_dr ec.var matches 7..17 run scoreboard players set #dg_difficulty ec.var 1
execute if score #dg_dr ec.var matches 18..29 run scoreboard players set #dg_difficulty ec.var 2
execute if score #dg_dr ec.var matches 30.. run scoreboard players set #dg_difficulty ec.var 3

# Tag the player
tag @s add dg.player

# Reset death counter
scoreboard players set @s dg.deaths 0

# Place center marker at player position
execute at @s run summon marker ~ ~ ~ {Tags:["dg.center","ec.entity"]}

# Title announcement
title @s times 5 40 10
title @s title {text:"VILLAGE DEFENSE",color:"dark_green",bold:true}
title @s subtitle {text:"The raiders are coming!",color:"green"}

# Sound effects — war horn
playsound minecraft:event.raid.horn master @s ~ ~ ~ 1 1
playsound minecraft:entity.evoker.prepare_wololo master @s ~ ~ ~ 0.5 0.8

# Chat announcement
tellraw @a [{text:"[Forevercraft] ",color:"gold"},{selector:"@s"},{text:" has rallied the village defense!",color:"green"}]

# Leaderboard: record start time
execute store result score @s dg.start_time run time query gametime

# Particles
execute at @s run particle minecraft:happy_villager ~ ~1 ~ 3 1 3 0.1 50 force
execute at @s run particle minecraft:angry_villager ~ ~2 ~ 2 1 2 0.1 30 force
