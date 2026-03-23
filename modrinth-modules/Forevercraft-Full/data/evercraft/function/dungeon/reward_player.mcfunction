# Dungeon Reward — Per-Player (runs as @s = individual dungeon participant)
# Determines reward tier based on THIS player's Dream Rate (luck attribute)

# Get THIS player's Dream Rate
execute store result score #dg_dr ec.var run attribute @s minecraft:luck get

# Omens + Dungeons: Cursed Run guarantees minimum Rare (DR 13)
execute if score #dg_omen ec.var matches 1 if score #dg_dr ec.var matches ..12 run scoreboard players set #dg_dr ec.var 13

# Apply difficulty-based minimum crate tier
# Brutal (3): minimum Ornate (DR 18)
# Hard (2): minimum Rare (DR 13)
# Normal (1): minimum Uncommon (DR 7)
execute if score #dg_difficulty ec.var matches 3 if score #dg_dr ec.var matches ..17 run scoreboard players set #dg_dr ec.var 18
execute if score #dg_difficulty ec.var matches 2 if score #dg_dr ec.var matches ..12 run scoreboard players set #dg_dr ec.var 13
execute if score #dg_difficulty ec.var matches 1 if score #dg_dr ec.var matches ..6 run scoreboard players set #dg_dr ec.var 7

# Unknown structure tier — dimension/Y-level minimum (matches crate system)
# Uses dg.center marker position (dungeon start location), NOT player's current position
# End → Ornate (DR 18), Nether → Rare (DR 13), Deep overworld → Rare (DR 13)
# Underground → Uncommon (DR 7), Surface → Common (no floor)
execute if score #dg_struct_id ec.var matches 20 at @e[type=marker,tag=dg.center,limit=1] if dimension minecraft:the_end if score #dg_dr ec.var matches ..17 run scoreboard players set #dg_dr ec.var 18
execute if score #dg_struct_id ec.var matches 20 at @e[type=marker,tag=dg.center,limit=1] if dimension minecraft:the_nether if score #dg_dr ec.var matches ..12 run scoreboard players set #dg_dr ec.var 13
execute if score #dg_struct_id ec.var matches 20 at @e[type=marker,tag=dg.center,limit=1] if dimension minecraft:overworld if predicate evercraft:structures/y_level/deep if score #dg_dr ec.var matches ..12 run scoreboard players set #dg_dr ec.var 13
execute if score #dg_struct_id ec.var matches 20 at @e[type=marker,tag=dg.center,limit=1] if dimension minecraft:overworld if predicate evercraft:structures/y_level/underground if score #dg_dr ec.var matches ..6 run scoreboard players set #dg_dr ec.var 7

# Check THIS player's inventory space
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full

# === REWARD TIERS ===
# DR 0-6:   Common (emeralds + XP)
# DR 7-12:  Uncommon
# DR 13-17: Rare
# DR 18-22: Ornate
# DR 23-29: Exquisite
# DR 30+:   Mythical

# Common tier (DR 0-6)
execute if score #dg_dr ec.var matches ..6 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:crates/items/common
execute if score #dg_dr ec.var matches ..6 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:crates/items/common
execute if score #dg_dr ec.var matches ..6 if score #inv_full ec.var matches 0 run give @s emerald 16
execute if score #dg_dr ec.var matches ..6 if score #inv_full ec.var matches 1 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",count:16}}
execute if score #dg_dr ec.var matches ..6 run experience add @s 200 points
execute if score #dg_dr ec.var matches ..6 run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Reward: ",color:"gold"},{text:"Common Dungeon Crate",color:"white"}]

# Uncommon tier (DR 7-12)
execute if score #dg_dr ec.var matches 7..12 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:crates/items/uncommon
execute if score #dg_dr ec.var matches 7..12 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:crates/items/uncommon
execute if score #dg_dr ec.var matches 7..12 if score #inv_full ec.var matches 0 run give @s emerald 24
execute if score #dg_dr ec.var matches 7..12 if score #inv_full ec.var matches 1 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",count:24}}
execute if score #dg_dr ec.var matches 7..12 run experience add @s 400 points
execute if score #dg_dr ec.var matches 7..12 run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Reward: ",color:"gold"},{text:"Uncommon Dungeon Crate",color:"blue"}]

# Rare tier (DR 13-17)
execute if score #dg_dr ec.var matches 13..17 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:crates/items/rare
execute if score #dg_dr ec.var matches 13..17 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:crates/items/rare
execute if score #dg_dr ec.var matches 13..17 if score #inv_full ec.var matches 0 run give @s emerald 32
execute if score #dg_dr ec.var matches 13..17 if score #inv_full ec.var matches 1 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",count:32}}
execute if score #dg_dr ec.var matches 13..17 run experience add @s 800 points
execute if score #dg_dr ec.var matches 13..17 run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Reward: ",color:"gold"},{text:"Rare Dungeon Crate",color:"aqua"}]

# Ornate tier (DR 18-22)
execute if score #dg_dr ec.var matches 18..22 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:crates/items/ornate
execute if score #dg_dr ec.var matches 18..22 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:crates/items/ornate
execute if score #dg_dr ec.var matches 18..22 if score #inv_full ec.var matches 0 run give @s emerald 48
execute if score #dg_dr ec.var matches 18..22 if score #inv_full ec.var matches 1 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",count:48}}
execute if score #dg_dr ec.var matches 18..22 run experience add @s 1500 points
execute if score #dg_dr ec.var matches 18..22 run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Reward: ",color:"gold"},{text:"Ornate Dungeon Crate",color:"dark_purple"}]

# Exquisite tier (DR 23-29)
execute if score #dg_dr ec.var matches 23..29 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:crates/items/exquisite
execute if score #dg_dr ec.var matches 23..29 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:crates/items/exquisite
execute if score #dg_dr ec.var matches 23..29 if score #inv_full ec.var matches 0 run give @s emerald 64
execute if score #dg_dr ec.var matches 23..29 if score #inv_full ec.var matches 1 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",count:64}}
execute if score #dg_dr ec.var matches 23..29 run experience add @s 3000 points
execute if score #dg_dr ec.var matches 23..29 run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Reward: ",color:"gold"},{text:"Exquisite Dungeon Crate",color:"light_purple"}]

# Mythical tier (DR 30+)
execute if score #dg_dr ec.var matches 30.. if score #inv_full ec.var matches 0 run loot give @s loot evercraft:crates/items/mythical
execute if score #dg_dr ec.var matches 30.. if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:crates/items/mythical
execute if score #dg_dr ec.var matches 30.. if score #inv_full ec.var matches 0 run give @s emerald_block 4
execute if score #dg_dr ec.var matches 30.. if score #inv_full ec.var matches 1 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:emerald_block",count:4}}
execute if score #dg_dr ec.var matches 30.. run experience add @s 5000 points
execute if score #dg_dr ec.var matches 30.. run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Reward: ",color:"gold"},{text:"Mythical Dungeon Crate!",color:"gold",bold:true}]

# Bonus: 25% chance of another Dungeon Key (random 1-4, key on 1)
execute store result score #dg_keyroll ec.var run random value 1..4
execute if score #dg_keyroll ec.var matches 1 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:dungeon/key
execute if score #dg_keyroll ec.var matches 1 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:dungeon/key
execute if score #dg_keyroll ec.var matches 1 run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Bonus: Another Dungeon Key!",color:"light_purple"}]

# Warn if inventory was full
execute if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Some loot was dropped at your feet.",color:"yellow"}]
execute if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5

# Modifier bonus: +25% XP if a modifier was active
execute if score #dg_modifier ec.var matches 1.. if score #dg_dr ec.var matches ..6 run experience add @s 50 points
execute if score #dg_modifier ec.var matches 1.. if score #dg_dr ec.var matches 7..12 run experience add @s 100 points
execute if score #dg_modifier ec.var matches 1.. if score #dg_dr ec.var matches 13..17 run experience add @s 200 points
execute if score #dg_modifier ec.var matches 1.. if score #dg_dr ec.var matches 18..22 run experience add @s 375 points
execute if score #dg_modifier ec.var matches 1.. if score #dg_dr ec.var matches 23..29 run experience add @s 750 points
execute if score #dg_modifier ec.var matches 1.. if score #dg_dr ec.var matches 30.. run experience add @s 1250 points
# (modifier bonus message consolidated below)

# Trim + Dungeons: +50% bonus XP for players with trimmed armor
execute if entity @s[tag=dg.trim_bonus] if score #dg_dr ec.var matches ..6 run experience add @s 100 points
execute if entity @s[tag=dg.trim_bonus] if score #dg_dr ec.var matches 7..12 run experience add @s 200 points
execute if entity @s[tag=dg.trim_bonus] if score #dg_dr ec.var matches 13..17 run experience add @s 400 points
execute if entity @s[tag=dg.trim_bonus] if score #dg_dr ec.var matches 18..22 run experience add @s 750 points
execute if entity @s[tag=dg.trim_bonus] if score #dg_dr ec.var matches 23..29 run experience add @s 1500 points
execute if entity @s[tag=dg.trim_bonus] if score #dg_dr ec.var matches 30.. run experience add @s 2500 points
# (trim bonus message consolidated below)
tag @s remove dg.trim_bonus

# Tome + Dungeons: Deposit bonus XP into Tome of Experience on completion
execute if score @s ec.tome_lvl matches 1.. run scoreboard players add @s ec.tome_pts 100
# (tome message consolidated below)

# Dungeon + Bounty: 20% chance to discover a bounty lead after dungeon completion
execute unless score @s ec.bnt_tier matches 1.. store result score #dg_bnt ec.temp run random value 1..5
execute unless score @s ec.bnt_tier matches 1.. if score #dg_bnt ec.temp matches 1 run function evercraft:bounty/roll_bounty
execute unless score @s ec.bnt_tier matches 1.. if score #dg_bnt ec.temp matches 1 run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"You found a bounty contract among the loot!",color:"yellow"}]

# Party Dungeon Affixes: bonus XP based on affix count (1=+25%, 2=+50%, 3=+100%)
execute if score #dg_afx_count ec.var matches 1 if score #dg_dr ec.var matches ..6 run experience add @s 50 points
execute if score #dg_afx_count ec.var matches 1 if score #dg_dr ec.var matches 7..12 run experience add @s 100 points
execute if score #dg_afx_count ec.var matches 1 if score #dg_dr ec.var matches 13..17 run experience add @s 200 points
execute if score #dg_afx_count ec.var matches 1 if score #dg_dr ec.var matches 18..22 run experience add @s 375 points
execute if score #dg_afx_count ec.var matches 1 if score #dg_dr ec.var matches 23..29 run experience add @s 750 points
execute if score #dg_afx_count ec.var matches 1 if score #dg_dr ec.var matches 30.. run experience add @s 1250 points
execute if score #dg_afx_count ec.var matches 2 if score #dg_dr ec.var matches ..6 run experience add @s 100 points
execute if score #dg_afx_count ec.var matches 2 if score #dg_dr ec.var matches 7..12 run experience add @s 200 points
execute if score #dg_afx_count ec.var matches 2 if score #dg_dr ec.var matches 13..17 run experience add @s 400 points
execute if score #dg_afx_count ec.var matches 2 if score #dg_dr ec.var matches 18..22 run experience add @s 750 points
execute if score #dg_afx_count ec.var matches 2 if score #dg_dr ec.var matches 23..29 run experience add @s 1500 points
execute if score #dg_afx_count ec.var matches 2 if score #dg_dr ec.var matches 30.. run experience add @s 2500 points
execute if score #dg_afx_count ec.var matches 3 if score #dg_dr ec.var matches ..6 run experience add @s 200 points
execute if score #dg_afx_count ec.var matches 3 if score #dg_dr ec.var matches 7..12 run experience add @s 400 points
execute if score #dg_afx_count ec.var matches 3 if score #dg_dr ec.var matches 13..17 run experience add @s 800 points
execute if score #dg_afx_count ec.var matches 3 if score #dg_dr ec.var matches 18..22 run experience add @s 1500 points
execute if score #dg_afx_count ec.var matches 3 if score #dg_dr ec.var matches 23..29 run experience add @s 3000 points
execute if score #dg_afx_count ec.var matches 3 if score #dg_dr ec.var matches 30.. run experience add @s 5000 points
# (affix bonus messages consolidated below)

# Multi-Floor bonus: Floor 2 = +50% XP, Floor 3 = +100% XP + bonus loot roll
execute if score #dg_floor ec.var matches 2 if score #dg_dr ec.var matches ..6 run experience add @s 100 points
execute if score #dg_floor ec.var matches 2 if score #dg_dr ec.var matches 7..12 run experience add @s 200 points
execute if score #dg_floor ec.var matches 2 if score #dg_dr ec.var matches 13..17 run experience add @s 400 points
execute if score #dg_floor ec.var matches 2 if score #dg_dr ec.var matches 18..22 run experience add @s 750 points
execute if score #dg_floor ec.var matches 2 if score #dg_dr ec.var matches 23..29 run experience add @s 1500 points
execute if score #dg_floor ec.var matches 2 if score #dg_dr ec.var matches 30.. run experience add @s 2500 points
# (floor bonus messages consolidated below)
execute if score #dg_floor ec.var matches 3 if score #dg_dr ec.var matches ..6 run experience add @s 200 points
execute if score #dg_floor ec.var matches 3 if score #dg_dr ec.var matches 7..12 run experience add @s 400 points
execute if score #dg_floor ec.var matches 3 if score #dg_dr ec.var matches 13..17 run experience add @s 800 points
execute if score #dg_floor ec.var matches 3 if score #dg_dr ec.var matches 18..22 run experience add @s 1500 points
execute if score #dg_floor ec.var matches 3 if score #dg_dr ec.var matches 23..29 run experience add @s 3000 points
execute if score #dg_floor ec.var matches 3 if score #dg_dr ec.var matches 30.. run experience add @s 5000 points
# (floor 3 bonus message consolidated below)
# Floor 3: bonus loot roll at same tier
execute if score #dg_floor ec.var matches 3 if score #dg_dr ec.var matches ..6 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:crates/items/common
execute if score #dg_floor ec.var matches 3 if score #dg_dr ec.var matches 7..12 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:crates/items/uncommon
execute if score #dg_floor ec.var matches 3 if score #dg_dr ec.var matches 13..17 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:crates/items/rare
execute if score #dg_floor ec.var matches 3 if score #dg_dr ec.var matches 18..22 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:crates/items/ornate
execute if score #dg_floor ec.var matches 3 if score #dg_dr ec.var matches 23..29 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:crates/items/exquisite
execute if score #dg_floor ec.var matches 3 if score #dg_dr ec.var matches 30.. if score #inv_full ec.var matches 0 run loot give @s loot evercraft:crates/items/mythical

# === CONSOLIDATED BONUS MESSAGE (replaces 5+ individual messages) ===
# Track if any bonus was applied, then show one summary line
scoreboard players set #dg_has_bonus ec.var 0
execute if score #dg_modifier ec.var matches 1.. run scoreboard players set #dg_has_bonus ec.var 1
execute if score #dg_afx_count ec.var matches 1.. run scoreboard players set #dg_has_bonus ec.var 1
execute if score #dg_floor ec.var matches 2.. run scoreboard players set #dg_has_bonus ec.var 1
execute if score @s ec.tome_lvl matches 1.. run scoreboard players set #dg_has_bonus ec.var 1
execute if score #dg_has_bonus ec.var matches 1 run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Bonus XP applied!",color:"yellow"}]
execute if score #dg_floor ec.var matches 3 run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Deep Delver! ",color:"dark_red",bold:true},{text:"+Bonus Crate!",color:"gold"}]

# === DAILY CHALLENGE BONUS: 2x REWARDS ===
# Grants a second crate + bonus emeralds + bonus XP when completing today's daily challenge
execute if score #dg_is_daily ec.var matches 1 if score #dg_dr ec.var matches ..6 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:crates/items/common
execute if score #dg_is_daily ec.var matches 1 if score #dg_dr ec.var matches ..6 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:crates/items/common
execute if score #dg_is_daily ec.var matches 1 if score #dg_dr ec.var matches ..6 if score #inv_full ec.var matches 0 run give @s emerald 16
execute if score #dg_is_daily ec.var matches 1 if score #dg_dr ec.var matches ..6 if score #inv_full ec.var matches 1 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",count:16}}
execute if score #dg_is_daily ec.var matches 1 if score #dg_dr ec.var matches ..6 run experience add @s 200 points

execute if score #dg_is_daily ec.var matches 1 if score #dg_dr ec.var matches 7..12 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:crates/items/uncommon
execute if score #dg_is_daily ec.var matches 1 if score #dg_dr ec.var matches 7..12 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:crates/items/uncommon
execute if score #dg_is_daily ec.var matches 1 if score #dg_dr ec.var matches 7..12 if score #inv_full ec.var matches 0 run give @s emerald 24
execute if score #dg_is_daily ec.var matches 1 if score #dg_dr ec.var matches 7..12 if score #inv_full ec.var matches 1 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",count:24}}
execute if score #dg_is_daily ec.var matches 1 if score #dg_dr ec.var matches 7..12 run experience add @s 400 points

execute if score #dg_is_daily ec.var matches 1 if score #dg_dr ec.var matches 13..17 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:crates/items/rare
execute if score #dg_is_daily ec.var matches 1 if score #dg_dr ec.var matches 13..17 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:crates/items/rare
execute if score #dg_is_daily ec.var matches 1 if score #dg_dr ec.var matches 13..17 if score #inv_full ec.var matches 0 run give @s emerald 32
execute if score #dg_is_daily ec.var matches 1 if score #dg_dr ec.var matches 13..17 if score #inv_full ec.var matches 1 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",count:32}}
execute if score #dg_is_daily ec.var matches 1 if score #dg_dr ec.var matches 13..17 run experience add @s 800 points

execute if score #dg_is_daily ec.var matches 1 if score #dg_dr ec.var matches 18..22 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:crates/items/ornate
execute if score #dg_is_daily ec.var matches 1 if score #dg_dr ec.var matches 18..22 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:crates/items/ornate
execute if score #dg_is_daily ec.var matches 1 if score #dg_dr ec.var matches 18..22 if score #inv_full ec.var matches 0 run give @s emerald 48
execute if score #dg_is_daily ec.var matches 1 if score #dg_dr ec.var matches 18..22 if score #inv_full ec.var matches 1 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",count:48}}
execute if score #dg_is_daily ec.var matches 1 if score #dg_dr ec.var matches 18..22 run experience add @s 1500 points

execute if score #dg_is_daily ec.var matches 1 if score #dg_dr ec.var matches 23..29 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:crates/items/exquisite
execute if score #dg_is_daily ec.var matches 1 if score #dg_dr ec.var matches 23..29 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:crates/items/exquisite
execute if score #dg_is_daily ec.var matches 1 if score #dg_dr ec.var matches 23..29 if score #inv_full ec.var matches 0 run give @s emerald 64
execute if score #dg_is_daily ec.var matches 1 if score #dg_dr ec.var matches 23..29 if score #inv_full ec.var matches 1 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",count:64}}
execute if score #dg_is_daily ec.var matches 1 if score #dg_dr ec.var matches 23..29 run experience add @s 3000 points

execute if score #dg_is_daily ec.var matches 1 if score #dg_dr ec.var matches 30.. if score #inv_full ec.var matches 0 run loot give @s loot evercraft:crates/items/mythical
execute if score #dg_is_daily ec.var matches 1 if score #dg_dr ec.var matches 30.. if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:crates/items/mythical
execute if score #dg_is_daily ec.var matches 1 if score #dg_dr ec.var matches 30.. if score #inv_full ec.var matches 0 run give @s emerald_block 4
execute if score #dg_is_daily ec.var matches 1 if score #dg_dr ec.var matches 30.. if score #inv_full ec.var matches 1 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:emerald_block",count:4}}
execute if score #dg_is_daily ec.var matches 1 if score #dg_dr ec.var matches 30.. run experience add @s 5000 points

execute if score #dg_is_daily ec.var matches 1 run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Daily Challenge Complete! ",color:"gold",bold:true},{text:"Double rewards granted!",color:"yellow"}]
execute if score #dg_is_daily ec.var matches 1 at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.8 1.2
execute if score #dg_is_daily ec.var matches 1 run scoreboard players set @s ec.daily_done 1

# Forever Coin reward by difficulty (no DR scaling)
function evercraft:coins/dungeon_reward

# Track for achievements
scoreboard players add @s ach.dungeons_done 1
scoreboard players add #news_dungeons ec.var 1

# Track dungeon floor record (Spirit Tome quest tracking)
scoreboard players operation @s ec.sq_dg_best > #dg_floor ec.var
