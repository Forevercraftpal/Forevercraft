# Glyphforge GUI — Collect (apply forged glyph to held equipment)
# Run as player with RF.InMenu tag, at player position

# Verify state is 3 (forge complete)
execute unless score @s rf.state matches 3 run tellraw @s [{text:"The forge isn't ready yet!",color:"red"}]
execute unless score @s rf.state matches 3 run return 0

# Must be holding eligible equipment
# Swords
execute if items entity @s weapon.mainhand minecraft:diamond_sword run scoreboard players set #rf_valid rf.temp 1
execute if items entity @s weapon.mainhand minecraft:netherite_sword run scoreboard players set #rf_valid rf.temp 1
execute if items entity @s weapon.mainhand minecraft:iron_sword run scoreboard players set #rf_valid rf.temp 1
# Axes
execute if items entity @s weapon.mainhand minecraft:diamond_axe run scoreboard players set #rf_valid rf.temp 1
execute if items entity @s weapon.mainhand minecraft:netherite_axe run scoreboard players set #rf_valid rf.temp 1
execute if items entity @s weapon.mainhand minecraft:iron_axe run scoreboard players set #rf_valid rf.temp 1
# Pickaxes
execute if items entity @s weapon.mainhand minecraft:diamond_pickaxe run scoreboard players set #rf_valid rf.temp 1
execute if items entity @s weapon.mainhand minecraft:netherite_pickaxe run scoreboard players set #rf_valid rf.temp 1
# Ranged
execute if items entity @s weapon.mainhand minecraft:trident run scoreboard players set #rf_valid rf.temp 1
execute if items entity @s weapon.mainhand minecraft:bow run scoreboard players set #rf_valid rf.temp 1
execute if items entity @s weapon.mainhand minecraft:crossbow run scoreboard players set #rf_valid rf.temp 1
# Hoes
execute if items entity @s weapon.mainhand minecraft:diamond_hoe run scoreboard players set #rf_valid rf.temp 1
execute if items entity @s weapon.mainhand minecraft:netherite_hoe run scoreboard players set #rf_valid rf.temp 1
execute if items entity @s weapon.mainhand minecraft:iron_hoe run scoreboard players set #rf_valid rf.temp 1
# Shovels
execute if items entity @s weapon.mainhand minecraft:diamond_shovel run scoreboard players set #rf_valid rf.temp 1
execute if items entity @s weapon.mainhand minecraft:netherite_shovel run scoreboard players set #rf_valid rf.temp 1
execute if items entity @s weapon.mainhand minecraft:iron_shovel run scoreboard players set #rf_valid rf.temp 1
# Spears
execute if items entity @s weapon.mainhand minecraft:diamond_spear run scoreboard players set #rf_valid rf.temp 1
execute if items entity @s weapon.mainhand minecraft:netherite_spear run scoreboard players set #rf_valid rf.temp 1
# Shield
execute if items entity @s weapon.mainhand minecraft:shield run scoreboard players set #rf_valid rf.temp 1

execute unless score #rf_valid rf.temp matches 1 run tellraw @s [{text:"Hold eligible equipment in your mainhand!",color:"red"}]
execute unless score #rf_valid rf.temp matches 1 run return 0
scoreboard players set #rf_valid rf.temp 0

# --- Tiered multi-rune capacity check ---
# Determine max runes by item tier (default 1)
scoreboard players set #rf_max rf.temp 1
execute if items entity @s weapon.mainhand *[custom_data~{tier:"ornate"}] run scoreboard players set #rf_max rf.temp 3
execute if items entity @s weapon.mainhand *[custom_data~{tier:"exquisite"}] run scoreboard players set #rf_max rf.temp 6
execute if items entity @s weapon.mainhand *[custom_data~{tier:"mythical"}] run scoreboard players set #rf_max rf.temp 13

# Read current rf_count from item (0 if not yet glyphforged)
scoreboard players set #rf_count rf.temp 0
execute store result score #rf_count rf.temp run data get entity @s SelectedItem.components."minecraft:custom_data".rf_count

# Check if at max capacity
execute if score #rf_count rf.temp >= #rf_max rf.temp run tellraw @s [{text:"This item is fully glyphforged!",color:"red"}]
execute if score #rf_count rf.temp >= #rf_max rf.temp run return 0

# Load rune_id from marker
execute store result score @s rf.rune_id run data get entity @e[type=marker,tag=RF.Marker,distance=..6,limit=1,sort=nearest] data.rf_rune_id

# For Arcanum (13), randomize to one of 1-12
execute if score @s rf.rune_id matches 13 store result score @s rf.rune_id run random value 1..12

# --- Duplicate rune check (prevent same glyph twice) ---
scoreboard players set #rf_dup rf.temp 0
execute if score @s rf.rune_id matches 1 if items entity @s weapon.mainhand *[custom_data~{rf_emberheart:1b}] run scoreboard players set #rf_dup rf.temp 1
execute if score @s rf.rune_id matches 2 if items entity @s weapon.mainhand *[custom_data~{rf_verdant:1b}] run scoreboard players set #rf_dup rf.temp 1
execute if score @s rf.rune_id matches 3 if items entity @s weapon.mainhand *[custom_data~{rf_quicksilver:1b}] run scoreboard players set #rf_dup rf.temp 1
execute if score @s rf.rune_id matches 4 if items entity @s weapon.mainhand *[custom_data~{rf_obsidian:1b}] run scoreboard players set #rf_dup rf.temp 1
execute if score @s rf.rune_id matches 5 if items entity @s weapon.mainhand *[custom_data~{rf_zephyr:1b}] run scoreboard players set #rf_dup rf.temp 1
execute if score @s rf.rune_id matches 6 if items entity @s weapon.mainhand *[custom_data~{rf_briar:1b}] run scoreboard players set #rf_dup rf.temp 1
execute if score @s rf.rune_id matches 7 if items entity @s weapon.mainhand *[custom_data~{rf_stalwart:1b}] run scoreboard players set #rf_dup rf.temp 1
execute if score @s rf.rune_id matches 8 if items entity @s weapon.mainhand *[custom_data~{rf_gilded:1b}] run scoreboard players set #rf_dup rf.temp 1
execute if score @s rf.rune_id matches 9 if items entity @s weapon.mainhand *[custom_data~{rf_tidecall:1b}] run scoreboard players set #rf_dup rf.temp 1
execute if score @s rf.rune_id matches 10 if items entity @s weapon.mainhand *[custom_data~{rf_hearthstone:1b}] run scoreboard players set #rf_dup rf.temp 1
execute if score @s rf.rune_id matches 11 if items entity @s weapon.mainhand *[custom_data~{rf_prism:1b}] run scoreboard players set #rf_dup rf.temp 1
execute if score @s rf.rune_id matches 12 if items entity @s weapon.mainhand *[custom_data~{rf_tempest:1b}] run scoreboard players set #rf_dup rf.temp 1
execute if score #rf_dup rf.temp matches 1 run tellraw @s [{text:"This item already has this glyph!",color:"red"}]
execute if score #rf_dup rf.temp matches 1 run return 0

# --- Apply the glyphforge glyph via item modifier ---
execute if score @s rf.rune_id matches 1 run item modify entity @s weapon.mainhand evercraft:glyphforge/emberheart
execute if score @s rf.rune_id matches 2 run item modify entity @s weapon.mainhand evercraft:glyphforge/verdant
execute if score @s rf.rune_id matches 3 run item modify entity @s weapon.mainhand evercraft:glyphforge/quicksilver
execute if score @s rf.rune_id matches 4 run item modify entity @s weapon.mainhand evercraft:glyphforge/obsidian
execute if score @s rf.rune_id matches 5 run item modify entity @s weapon.mainhand evercraft:glyphforge/zephyr
execute if score @s rf.rune_id matches 6 run item modify entity @s weapon.mainhand evercraft:glyphforge/briar
execute if score @s rf.rune_id matches 7 run item modify entity @s weapon.mainhand evercraft:glyphforge/stalwart
execute if score @s rf.rune_id matches 8 run item modify entity @s weapon.mainhand evercraft:glyphforge/gilded
execute if score @s rf.rune_id matches 9 run item modify entity @s weapon.mainhand evercraft:glyphforge/tidecall
execute if score @s rf.rune_id matches 10 run item modify entity @s weapon.mainhand evercraft:glyphforge/hearthstone
execute if score @s rf.rune_id matches 11 run item modify entity @s weapon.mainhand evercraft:glyphforge/prism
execute if score @s rf.rune_id matches 12 run item modify entity @s weapon.mainhand evercraft:glyphforge/tempest

# --- Increment rf_count ---
scoreboard players add #rf_count rf.temp 1
execute if score #rf_count rf.temp matches 1 run item modify entity @s weapon.mainhand evercraft:glyphforge/count/1
execute if score #rf_count rf.temp matches 2 run item modify entity @s weapon.mainhand evercraft:glyphforge/count/2
execute if score #rf_count rf.temp matches 3 run item modify entity @s weapon.mainhand evercraft:glyphforge/count/3
execute if score #rf_count rf.temp matches 4 run item modify entity @s weapon.mainhand evercraft:glyphforge/count/4
execute if score #rf_count rf.temp matches 5 run item modify entity @s weapon.mainhand evercraft:glyphforge/count/5
execute if score #rf_count rf.temp matches 6 run item modify entity @s weapon.mainhand evercraft:glyphforge/count/6
execute if score #rf_count rf.temp matches 7 run item modify entity @s weapon.mainhand evercraft:glyphforge/count/7
execute if score #rf_count rf.temp matches 8 run item modify entity @s weapon.mainhand evercraft:glyphforge/count/8
execute if score #rf_count rf.temp matches 9 run item modify entity @s weapon.mainhand evercraft:glyphforge/count/9
execute if score #rf_count rf.temp matches 10 run item modify entity @s weapon.mainhand evercraft:glyphforge/count/10
execute if score #rf_count rf.temp matches 11 run item modify entity @s weapon.mainhand evercraft:glyphforge/count/11
execute if score #rf_count rf.temp matches 12 run item modify entity @s weapon.mainhand evercraft:glyphforge/count/12
execute if score #rf_count rf.temp matches 13 run item modify entity @s weapon.mainhand evercraft:glyphforge/count/13

# Reset marker state
data modify entity @e[type=marker,tag=RF.Marker,distance=..6,limit=1,sort=nearest] data.rf_state set value 0
data modify entity @e[type=marker,tag=RF.Marker,distance=..6,limit=1,sort=nearest] data.rf_rune_id set value 0
data modify entity @e[type=marker,tag=RF.Marker,distance=..6,limit=1,sort=nearest] data.forge_started_at set value 0L
scoreboard players set @s rf.state 0
scoreboard players set @s rf.rune_id 0

# Epic effects
playsound minecraft:block.anvil.use master @a[distance=..16] ~ ~ ~ 0.8 0.8
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 1.5
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 0.8 1.0
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.3 50

# Title
title @s times 5 40 10
title @s title {text:" "}
title @s subtitle [{text:"Glyph Bound!",color:"red",bold:true}]

tellraw @s [{text:"Glyph permanently bound to your equipment!",color:"green"}]

# Track for achievements
scoreboard players add @s ach.runes_forged 1
scoreboard players add #news_glyphs ec.var 1

# Spirit progression: check if all glyph slots are filled
# (runes_forged >= 6 is a reasonable proxy for "all slots filled")
execute if score @s ach.runes_forged matches 6.. run scoreboard players set @s ec.sp_glyphs_full 1
# Check at Exquisite+ tier for the harder objective
execute if score @s ach.runes_forged matches 6.. if score @s ec.sp_tier matches 5.. run scoreboard players set @s ec.sp_glyphs_exq 1

# Close menu
function evercraft:glyphforge/gui/close
