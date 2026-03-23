# Trade Trial — Start
# Run as/at: the player who clicked Start Trial
# Requires: ec.tt_type and ec.tt_tier already set

# === VALIDATION ===

# Check not already in a trial
execute if entity @s[tag=ec.tt_player] run return run tellraw @s {"text":"You are already in a trial!","color":"red"}

# Check not in dungeon
execute if score @s ec.dream_active matches 1.. run return run tellraw @s {"text":"Cannot start a trial while in the Dreaming Realm!","color":"red"}
execute if entity @s[tag=dr.in_realm] run return run tellraw @s {"text":"Cannot start a trial while in the Dreaming Realm!","color":"red"}

# Check not in duel/heist/raid/dungeon/castle
execute if entity @s[tag=ec.duel_active_tag] run return run tellraw @s {"text":"Cannot start a trial while in a duel!","color":"red"}
execute if entity @s[tag=ec.heist_active_tag] run return run tellraw @s {"text":"Cannot start a trial during a heist!","color":"red"}
execute if entity @s[tag=rd.player] run return run tellraw @s {"text":"Cannot start a trial during a raid!","color":"red"}
execute if entity @s[tag=ic.player] run return run tellraw @s {"text":"Cannot start a trial in the Infinite Castle!","color":"red"}
execute if entity @s[tag=dg.player] run return run tellraw @s {"text":"Cannot start a trial during a dungeon!","color":"red"}

# === KEY + LOCKOUT CHECKS ===
# Detect if this is the player's personal daily challenge (trial type)
scoreboard players set @s ec.tt_is_daily 0
execute if score @s ec.daily_type matches 1 if score @s ec.tt_type = #tt_daily_type ec.var if score @s ec.tt_tier = #tt_daily_tier ec.var unless score @s ec.daily_done matches 1 run scoreboard players set @s ec.tt_is_daily 1

# Trial Pass check (skip if daily challenge)
execute unless score @s ec.tt_is_daily matches 1 unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{trial_pass:1b}}}]}] run return run tellraw @s [{"text":"[Trial] ","color":"#FFA500"},{"text":"You need a ","color":"red"},{"text":"Trial Pass","color":"#FFA500","bold":true},{"text":" to start a trial!","color":"red"}]

# Lockout check (skip if daily challenge)
execute unless score @s ec.tt_is_daily matches 1 run function evercraft:craftforever/trials/lockout/get
execute unless score @s ec.tt_is_daily matches 1 store result score #dg_now ec.var run time query gametime
execute unless score @s ec.tt_is_daily matches 1 run scoreboard players operation #dg_elapsed ec.var = #dg_now ec.var
execute unless score @s ec.tt_is_daily matches 1 run scoreboard players operation #dg_elapsed ec.var -= #dg_lockout_val ec.var
execute unless score @s ec.tt_is_daily matches 1 if score #dg_lockout_val ec.var matches 1.. if score #dg_elapsed ec.var matches ..503999 run return run tellraw @s [{"text":"[Trial] ","color":"dark_aqua"},{"text":"This trial type is on cooldown! Come back later.","color":"red"}]

# Consume one key (skip if daily challenge)
execute unless score @s ec.tt_is_daily matches 1 run function evercraft:craftforever/trials/consume_key

# Daily challenge announce
execute if score @s ec.tt_is_daily matches 1 run tellraw @s [{"text":"[Trial] ","color":"dark_aqua"},{"text":"Daily Challenge! ","color":"gold","bold":true},{"text":"No key needed \u2014 bonus rewards await!","color":"yellow"}]

# === CLOSE GUI ===
function evercraft:craftforever/trial_anvil/gui/close

# === SAVE PLAYER POSITION ===
summon marker ~ ~ ~ {Tags:["ec.tt_return","ec.entity"]}
execute store result entity @e[type=marker,tag=ec.tt_return,distance=..1,limit=1,sort=nearest] Pos[0] double 1 run data get entity @s Pos[0]
execute store result entity @e[type=marker,tag=ec.tt_return,distance=..1,limit=1,sort=nearest] Pos[1] double 1 run data get entity @s Pos[1]
execute store result entity @e[type=marker,tag=ec.tt_return,distance=..1,limit=1,sort=nearest] Pos[2] double 1 run data get entity @s Pos[2]
data modify entity @e[type=marker,tag=ec.tt_return,distance=..1,limit=1,sort=nearest] Rotation set from entity @s Rotation

# === SET STATE ===
tag @s add ec.tt_player
scoreboard players set @s ec.tt_active 1
scoreboard players set #tt_active ec.var 1
scoreboard players set @s ec.tt_score 0

# === BUILD ARENA ===
# Arena at Y=300, centered on player's X/Z position
execute store result score @s ec.tt_arena_x run data get entity @s Pos[0]
scoreboard players set @s ec.tt_arena_y 300
execute store result score @s ec.tt_arena_z run data get entity @s Pos[2]

# === CATEGORY SETUP (timer, target, arena, snapshot, tools) ===
execute if score @s ec.tt_type matches 1 run function evercraft:craftforever/trials/types/mining/setup
execute if score @s ec.tt_type matches 2 run function evercraft:craftforever/trials/types/farming/setup
execute if score @s ec.tt_type matches 3 run function evercraft:craftforever/trials/types/fishing/setup
execute if score @s ec.tt_type matches 4 run function evercraft:craftforever/trials/types/building/setup
execute if score @s ec.tt_type matches 5 run function evercraft:craftforever/trials/types/lumber/setup
execute if score @s ec.tt_type matches 6 run function evercraft:craftforever/trials/types/artisan/setup

# === HARD MODE MODIFIER ===
# Hard mode halves the timer and applies debuffs
execute if score @s ec.tt_hard_mode matches 1 run scoreboard players operation @s ec.tt_timer /= #2 ec.const
execute if score @s ec.tt_hard_mode matches 1 run effect give @s mining_fatigue 999 0 true
execute if score @s ec.tt_hard_mode matches 1 run bossbar set evercraft:trial_timer color red

# === TELEPORT TO ARENA ===
execute store result storage evercraft:trials arena_x int 1 run scoreboard players get @s ec.tt_arena_x
execute store result storage evercraft:trials arena_z int 1 run scoreboard players get @s ec.tt_arena_z
function evercraft:craftforever/trials/teleport_to_arena with storage evercraft:trials

# === SETUP BOSSBAR ===
bossbar set evercraft:trial_timer visible true
execute store result bossbar evercraft:trial_timer max run scoreboard players get @s ec.tt_timer
execute store result bossbar evercraft:trial_timer value run scoreboard players get @s ec.tt_timer
bossbar set evercraft:trial_timer players @s
bossbar set evercraft:trial_timer color yellow

# Set gamemode to survival (in case they were creative for testing)
gamemode survival @s

# === COUNTDOWN ===
title @s times 5 20 5
title @s title [{"text":"TRIAL ","color":"gold","bold":true},{"text":"START","color":"yellow","bold":true}]
execute store result storage evercraft:trials tier int 1 run scoreboard players get @s ec.tt_tier
# Store trial name for subtitle
execute if score @s ec.tt_type matches 1 run data modify storage evercraft:trials trial_name set value "Mining"
execute if score @s ec.tt_type matches 2 run data modify storage evercraft:trials trial_name set value "Farming"
execute if score @s ec.tt_type matches 3 run data modify storage evercraft:trials trial_name set value "Fishing"
execute if score @s ec.tt_type matches 4 run data modify storage evercraft:trials trial_name set value "Building"
execute if score @s ec.tt_type matches 5 run data modify storage evercraft:trials trial_name set value "Lumber"
execute if score @s ec.tt_type matches 6 run data modify storage evercraft:trials trial_name set value "Artisan"
function evercraft:craftforever/trials/show_subtitle with storage evercraft:trials
playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.5
playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.3 1.5
