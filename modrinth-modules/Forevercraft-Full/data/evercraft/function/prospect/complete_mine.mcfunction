# Ore Node: Mining complete — award item
# Run as player, at player position

# Clear actionbar and reset state
title @s actionbar [{text:"Mined!",color:"gold",bold:true}]
scoreboard players set @s ec.pr_picking 0
scoreboard players set @s ec.pr_progress 0

# Write stored node coords to storage for precise targeting
execute store result storage evercraft:pr_temp pr_x int 1 run scoreboard players get @s ec.pr_sx
execute store result storage evercraft:pr_temp pr_y int 1 run scoreboard players get @s ec.pr_sy
execute store result storage evercraft:pr_temp pr_z int 1 run scoreboard players get @s ec.pr_sz

# Read biome and despawn the exact node we started mining (prevents wrong-node despawn)
data modify storage evercraft:pr_temp node_biome set value "plains"
function evercraft:prospect/target_node with storage evercraft:pr_temp

# Roll biome-specific loot and give to player
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full
execute if score #inv_full ec.var matches 0 run function evercraft:prospect/give_biome_loot with storage evercraft:pr_temp
execute if score #inv_full ec.var matches 1 at @s run function evercraft:prospect/spawn_biome_loot with storage evercraft:pr_temp

# Warn if inventory full
execute if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Your loot was dropped at your feet.",color:"yellow"}]
execute if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5

# Forge material roll (independent — NOT doubled by events/convergence/companions)
loot give @s loot evercraft:prospect/forge_materials

# Hearty Harvest (P1): 10% chance for bonus drops
execute if score @s adv.pa_culi1 matches 1 store result score #hh_roll ec.temp run random value 1..10
execute if score @s adv.pa_culi1 matches 1 if score #hh_roll ec.temp matches 1 if score #inv_full ec.var matches 0 run function evercraft:prospect/give_biome_loot with storage evercraft:pr_temp
execute if score @s adv.pa_culi1 matches 1 if score #hh_roll ec.temp matches 1 if score #inv_full ec.var matches 1 at @s run function evercraft:prospect/spawn_biome_loot with storage evercraft:pr_temp
execute if score @s adv.pa_culi1 matches 1 if score #hh_roll ec.temp matches 1 run tellraw @s [{text:"[Hearty Harvest] ",color:"green"},{text:"Bonus ore drops!",color:"yellow"}]

# Fortune bonus: held tool with fortune gives chance for bonus rare drop
# Fortune 1: 2%, Fortune 2: 4%, Fortune 3: 6%, Fortune 4: 8%, Fortune 5: 10%
scoreboard players set #ft_thresh ec.temp 0
execute if predicate evercraft:harvest/enchantments/fortune_1 run scoreboard players set #ft_thresh ec.temp 2
execute if predicate evercraft:harvest/enchantments/fortune_2 run scoreboard players set #ft_thresh ec.temp 4
execute if predicate evercraft:harvest/enchantments/fortune_3 run scoreboard players set #ft_thresh ec.temp 6
execute if predicate evercraft:harvest/enchantments/fortune_4 run scoreboard players set #ft_thresh ec.temp 8
execute if predicate evercraft:harvest/enchantments/fortune_5 run scoreboard players set #ft_thresh ec.temp 10
scoreboard players set #ft_hit ec.temp 0
execute if score #ft_thresh ec.temp matches 1.. store result score #ft_roll ec.temp run random value 1..100
execute if score #ft_thresh ec.temp matches 1.. if score #ft_roll ec.temp <= #ft_thresh ec.temp run scoreboard players set #ft_hit ec.temp 1
execute if score #ft_hit ec.temp matches 1 store result score #inv_full ec.var run function evercraft:util/check_inv_full
execute if score #ft_hit ec.temp matches 1 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:prospect/fortune_drops
execute if score #ft_hit ec.temp matches 1 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:prospect/fortune_drops
execute if score #ft_hit ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Your keen eye found a rare bonus!",color:"light_purple"}]

# +4 Mining tree progress
scoreboard players add @s adv.stat_mine 4

# 1/100 chance for a bonus crate
execute store result score #pr_crate ec.temp run random value 1..100
execute if score #pr_crate ec.temp matches 1 store result score #inv_full ec.var run function evercraft:util/check_inv_full
execute if score #pr_crate ec.temp matches 1 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:cooking/bonus_crate
execute if score #pr_crate ec.temp matches 1 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:cooking/bonus_crate
execute if score #pr_crate ec.temp matches 1 run tellraw @s [{text:"[Prospecting] ",color:"white"},{text:"A crate was lodged in the rock!",color:"yellow"}]
execute if score #pr_crate ec.temp matches 1 if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Your crate was dropped at your feet.",color:"yellow"}]
execute if score #pr_crate ec.temp matches 1 if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5

# 1/3000 chance for Prospector's Dream Ore (permanent +1 dream rate)
execute unless score @s ec.dream_ore_count matches 1.. store result score #dream_roll ec.temp run random value 1..3000
execute unless score @s ec.dream_ore_count matches 1.. if score #dream_roll ec.temp matches 1 run loot give @s loot evercraft:items/prospectors_dream_ore
execute unless score @s ec.dream_ore_count matches 1.. if score #dream_roll ec.temp matches 1 run tellraw @s [{text:"\u2726 ",color:"gold"},{text:"A ",color:"yellow"},{text:"Prospector's Dream Ore",color:"yellow",bold:true},{text:" gleams from the rock!",color:"yellow"}]


# World Events + Prospect: Active world event grants guaranteed double drop (vanilla loot only)
execute if score #we_active ec.var matches 1 run function evercraft:prospect/give_biome_loot with storage evercraft:pr_temp
execute if score #we_active ec.var matches 1 run tellraw @s [{text:"  [World Event] ",color:"gold"},{text:"Double ore yield!",color:"yellow"}]

# Harmonic Convergence + Prospect: Additional bonus drop during convergence (vanilla loot only)
execute if score #conv_flag ec.var matches 1 run function evercraft:prospect/give_biome_loot with storage evercraft:pr_temp
execute if score #conv_flag ec.var matches 1 run tellraw @s [{text:"  [Convergence] ",color:"light_purple"},{text:"The convergence amplifies your strike!",color:"#DD99FF"}]

# Prospect + Advantage: Mining level 10+ grants bonus Mining XP
execute if score @s adv.mining matches 10.. run scoreboard players add @s adv.stat_mine 2
execute if score @s adv.mining matches 10.. run tellraw @s [{text:"  [Mining] ",color:"gray"},{text:"+2 bonus progress",color:"white"}]

# Prospect + Glyphforge: 0.5% chance to find a random Glyph lodged in the rock
execute store result score #gl_roll ec.temp run random value 1..200
execute if score #gl_roll ec.temp matches 1 run function evercraft:gacha/pull/grant_random_glyph
execute if score #gl_roll ec.temp matches 1 run tellraw @s [{text:"  [Glyphforge] ",color:"#87CEEB"},{text:"A Glyph was hidden in the ore vein!",color:"aqua"}]
execute if score #gl_roll ec.temp matches 1 run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1.0 1.2

# Prospect + Companions: Active companion with Beastmaster 5+ grants 15% extra ore chance
execute if score @s adv.beastmaster matches 5.. if entity @e[type=item_display,tag=Companion,predicate=evercraft:companions/check_id,distance=..32,limit=1] store result score #pc_roll ec.temp run random value 1..100
execute if score @s adv.beastmaster matches 5.. if entity @e[type=item_display,tag=Companion,predicate=evercraft:companions/check_id,distance=..32,limit=1] if score #pc_roll ec.temp matches 1..15 run function evercraft:prospect/give_biome_loot with storage evercraft:pr_temp
execute if score @s adv.beastmaster matches 5.. if entity @e[type=item_display,tag=Companion,predicate=evercraft:companions/check_id,distance=..32,limit=1] if score #pc_roll ec.temp matches 1..15 run tellraw @s [{text:"  [Companion] ",color:"light_purple"},{text:"Your pet dug up extra ore!",color:"yellow"}]

# Artisan XP: Mining (+3 per prospect)
scoreboard players set #cf_xp_amount ec.cf_temp 3
scoreboard players set #cf_xp_cat ec.cf_temp 0
function evercraft:craftforever/artisan/add_xp

# Track for achievements
scoreboard players add @s ach.prospects_done 1

# Completion effects
playsound minecraft:block.anvil.use master @s ~ ~ ~ 0.6 1.2
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 0.8
particle minecraft:electric_spark ~ ~0.5 ~ 0.3 0.3 0.3 0.02 15

# Award XP for mining
experience add @s 5 points

# Guild Diplomacy Event: Mining Nodes scoring (activity 7)
execute if score #gd_event_active ec.var matches 1 if score #gd_event_activity ec.var matches 7 if score @s ec.gd_event_active matches 1 run scoreboard players add @s ec.gd_event_score 1

# Guild Expedition: Prospecting bonus drops (activity=5)
function evercraft:guild/expedition/bonus_prospect
