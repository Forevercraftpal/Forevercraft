# Dungeon Instance System — Begin
# Called after player selects difficulty from the menu
# Run as: the player, at player position
# Expects: #dg_difficulty already set by menu/select

# Read triggering player's DR for DR scaling layer
execute store result score #dg_dr ec.var run attribute @s minecraft:luck get

# Set global state
scoreboard players set #dg_active ec.var 1
scoreboard players set #dg_wave ec.var 0
scoreboard players set #dg_timer ec.var 60
scoreboard players set #dg_type ec.var 1
scoreboard players set #dg_floor ec.var 1
scoreboard players set #dg_descent_timer ec.var 0

# Pick random instance (1-16) — determines mob composition theme
execute store result score #dg_instance ec.var run random value 1..16

# Difficulty is already set by menu/select — no auto-calculation needed

# Tag the player (and nearby party members)
tag @s add dg.player
scoreboard players set @s dg.deaths 0

# Party integration: also tag nearby party members as dungeon participants
execute if score @s ec.party_id matches 1.. run function evercraft:party/dungeon/tag_party

# Count total dungeon participants for mob scaling
execute store result score #dg_players ec.var if entity @a[tag=dg.player]

# Place center marker at player position
execute at @s run summon marker ~ ~ ~ {Tags:["dg.center","ec.entity"]}

# Store center coordinates for boundary checking
execute store result score #dg_center_x ec.var run data get entity @e[type=marker,tag=dg.center,limit=1] Pos[0]
execute store result score #dg_center_z ec.var run data get entity @e[type=marker,tag=dg.center,limit=1] Pos[2]

# Store instance name to storage for macro title
function evercraft:dungeon/instance/get_name

# Title announcement (uses instance name from storage)
function evercraft:dungeon/instance/show_title with storage evercraft:dungeon instance

# Sound effects
playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.5 0.8
playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.3 1.2

# Roll dungeon modifier — daily challenge locks in the featured modifier, otherwise random
execute if score #dg_is_daily ec.var matches 1 run scoreboard players operation #dg_modifier ec.var = #dc_modifier ec.var
execute if score #dg_is_daily ec.var matches 1 run function evercraft:dungeon/modifiers/apply_from_daily
execute unless score #dg_is_daily ec.var matches 1 run function evercraft:dungeon/modifiers/roll

# Omens + Dungeons: Bad Omen consumed → "Cursed Run" (guaranteed rare+ drop)
scoreboard players set #dg_omen ec.var 0
execute if entity @s[nbt={active_effects:[{id:"minecraft:bad_omen"}]}] run scoreboard players set #dg_omen ec.var 1
execute if score #dg_omen ec.var matches 1 run effect clear @s minecraft:bad_omen
execute if score #dg_omen ec.var matches 1 run tellraw @a[tag=dg.player] [{text:"[Dungeon] ",color:"dark_purple"},{text:"Cursed Run! ",color:"dark_red",bold:true},{text:"Bad Omen consumed — guaranteed Rare+ rewards!",color:"red"}]
execute if score #dg_omen ec.var matches 1 run playsound minecraft:entity.elder_guardian.curse master @a[tag=dg.player] ~ ~ ~ 0.6 0.8

# Chat announcement
tellraw @a [{text:"[Dungeon] ",color:"dark_purple"},{selector:"@s"},{text:" has begun a Dungeon Challenge!",color:"light_purple"}]

# Disclaimer: self-revive paused
tellraw @a[tag=dg.player] [{text:"[Dungeon] ",color:"dark_purple"},{text:"All self-revive functions have been paused for the duration of this challenge.",color:"gray",italic:true}]

# Leaderboard: record start time for all participants
execute store result score @a[tag=dg.player] dg.start_time run time query gametime

# Track dungeon attempt count for all participants
scoreboard players add @a[tag=dg.player] ec.dng_attempts 1
execute as @a[tag=dg.player] run tellraw @s [{text:"  Attempt #",color:"dark_gray",italic:true},{score:{name:"@s",objective:"ec.dng_attempts"},color:"gray",italic:true}]

# Inscription + Dungeons: Check for nearby inscription zones — grant 30s buff
execute as @a[tag=dg.player] at @s if entity @e[type=marker,tag=ec.inscr_marker,distance=..16,limit=1] run effect give @s strength 30 0
execute as @a[tag=dg.player] at @s if entity @e[type=marker,tag=ec.inscr_marker,distance=..16,limit=1] run effect give @s resistance 30 0
execute as @a[tag=dg.player] at @s if entity @e[type=marker,tag=ec.inscr_marker,distance=..16,limit=1] run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Inscription stones empower you! ",color:"#87CEEB"},{text:"(+Strength, +Resistance 30s)",color:"aqua"}]

# Trim + Dungeons: Players with trimmed armor get bonus dungeon XP (tracked via tag)
execute as @a[tag=dg.player,tag=ec.has_any_trim] run tag @s add dg.trim_bonus
execute as @a[tag=dg.player,tag=dg.trim_bonus] run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Trimmed armor detected — +50% bonus XP on completion!",color:"yellow"}]

# Party Dungeon Affixes: Roll affixes if 2+ party members
scoreboard players set #dg_afx_count ec.var 0
execute if score #dg_players ec.var matches 2.. run function evercraft:dungeon/affix/roll

# Particle burst at center
execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 1 1 1 0.05 100 force
execute at @s run particle minecraft:witch ~ ~1 ~ 1 1 1 0.05 50 force
