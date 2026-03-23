# Biome Node: Mining complete — award biome-specific material
# Run as player, at player position
# @s ec.cf_node_mined = biome ID (1-15)

# Clear actionbar and reset state
title @s actionbar [{text:"Extracted!",color:"#8BC34A",bold:true}]
scoreboard players set @s ec.cf_mining 0
scoreboard players set @s ec.cf_mine_prog 0

# Despawn the node (nearest marker within 8 blocks)
execute as @e[type=marker,tag=ec.cf_node_data,distance=..8,limit=1,sort=nearest] at @s run function evercraft:craftforever/nodes/despawn_node

# --- Award biome-specific loot ---
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full

# Route to biome-specific loot table based on ec.cf_node_mined
execute if score @s ec.cf_node_mined matches 1 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:craftforever/nodes/frostcrystal
execute if score @s ec.cf_node_mined matches 1 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:craftforever/nodes/frostcrystal

execute if score @s ec.cf_node_mined matches 2 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:craftforever/nodes/sunite
execute if score @s ec.cf_node_mined matches 2 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:craftforever/nodes/sunite

execute if score @s ec.cf_node_mined matches 3 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:craftforever/nodes/voidite
execute if score @s ec.cf_node_mined matches 3 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:craftforever/nodes/voidite

execute if score @s ec.cf_node_mined matches 4 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:craftforever/nodes/livingstone
execute if score @s ec.cf_node_mined matches 4 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:craftforever/nodes/livingstone

execute if score @s ec.cf_node_mined matches 5 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:craftforever/nodes/tideforged
execute if score @s ec.cf_node_mined matches 5 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:craftforever/nodes/tideforged

execute if score @s ec.cf_node_mined matches 6 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:craftforever/nodes/blazite
execute if score @s ec.cf_node_mined matches 6 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:craftforever/nodes/blazite

execute if score @s ec.cf_node_mined matches 7 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:craftforever/nodes/warpstone
execute if score @s ec.cf_node_mined matches 7 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:craftforever/nodes/warpstone

execute if score @s ec.cf_node_mined matches 8 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:craftforever/nodes/endric
execute if score @s ec.cf_node_mined matches 8 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:craftforever/nodes/endric

execute if score @s ec.cf_node_mined matches 9 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:craftforever/nodes/sporite
execute if score @s ec.cf_node_mined matches 9 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:craftforever/nodes/sporite

execute if score @s ec.cf_node_mined matches 10 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:craftforever/nodes/verdant
execute if score @s ec.cf_node_mined matches 10 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:craftforever/nodes/verdant

execute if score @s ec.cf_node_mined matches 11 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:craftforever/nodes/skymetal
execute if score @s ec.cf_node_mined matches 11 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:craftforever/nodes/skymetal

execute if score @s ec.cf_node_mined matches 12 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:craftforever/nodes/sunforged
execute if score @s ec.cf_node_mined matches 12 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:craftforever/nodes/sunforged

execute if score @s ec.cf_node_mined matches 13 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:craftforever/nodes/shadowroot
execute if score @s ec.cf_node_mined matches 13 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:craftforever/nodes/shadowroot

execute if score @s ec.cf_node_mined matches 14 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:craftforever/nodes/bogstone
execute if score @s ec.cf_node_mined matches 14 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:craftforever/nodes/bogstone

execute if score @s ec.cf_node_mined matches 15 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:craftforever/nodes/blossom
execute if score @s ec.cf_node_mined matches 15 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:craftforever/nodes/blossom

# Warn if inventory full
execute if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Material dropped at your feet.",color:"yellow"}]
execute if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5

# --- Discovery tracking (bitfield) ---
# Check if this biome node was already discovered (bit = biome_id - 1)
# We need 2^(biome_id-1) as a bitmask
# Store biome_id - 1 for bit position
scoreboard players operation #cf_bit_pos ec.temp = @s ec.cf_node_mined
scoreboard players remove #cf_bit_pos ec.temp 1

# Calculate bitmask: 2^bit_pos using successive doubling
scoreboard players set #cf_bitmask ec.temp 1
execute if score #cf_bit_pos ec.temp matches 1.. run scoreboard players operation #cf_bitmask ec.temp *= #2 ec.const
execute if score #cf_bit_pos ec.temp matches 1.. run scoreboard players remove #cf_bit_pos ec.temp 1
execute if score #cf_bit_pos ec.temp matches 1.. run scoreboard players operation #cf_bitmask ec.temp *= #2 ec.const
execute if score #cf_bit_pos ec.temp matches 1.. run scoreboard players remove #cf_bit_pos ec.temp 1
execute if score #cf_bit_pos ec.temp matches 1.. run scoreboard players operation #cf_bitmask ec.temp *= #2 ec.const
execute if score #cf_bit_pos ec.temp matches 1.. run scoreboard players remove #cf_bit_pos ec.temp 1
execute if score #cf_bit_pos ec.temp matches 1.. run scoreboard players operation #cf_bitmask ec.temp *= #2 ec.const
execute if score #cf_bit_pos ec.temp matches 1.. run scoreboard players remove #cf_bit_pos ec.temp 1

# Check if already discovered (AND operation)
scoreboard players operation #cf_check ec.temp = @s ec.cf_nodes_found
scoreboard players operation #cf_check ec.temp /= #cf_bitmask ec.temp
scoreboard players operation #cf_check ec.temp %= #2 ec.const

# If NOT discovered yet (bit is 0), set it and announce
execute if score #cf_check ec.temp matches 0 run scoreboard players operation @s ec.cf_nodes_found += #cf_bitmask ec.temp
execute if score #cf_check ec.temp matches 0 run tellraw @s [{text:"",color:"#8BC34A"},{text:"[Codex Updated] ",bold:true},{text:"New biome node discovered!",color:"green"}]
execute if score #cf_check ec.temp matches 0 run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 0.8 1.0
execute if score #cf_check ec.temp matches 0 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.2

# Also track in materials found bitfield
scoreboard players operation #cf_mat_check ec.temp = @s ec.cf_materials
scoreboard players operation #cf_mat_check ec.temp /= #cf_bitmask ec.temp
scoreboard players operation #cf_mat_check ec.temp %= #2 ec.const
execute if score #cf_mat_check ec.temp matches 0 run scoreboard players operation @s ec.cf_materials += #cf_bitmask ec.temp

# --- Artisan XP ---
# XP based on rarity: Uncommon=5, Rare=10, Ornate=15, Exquisite=20, Mythical=25
scoreboard players set #cf_xp_gain ec.temp 10
execute if score @s ec.cf_node_mined matches 4 run scoreboard players set #cf_xp_gain ec.temp 5
execute if score @s ec.cf_node_mined matches 14 run scoreboard players set #cf_xp_gain ec.temp 5
execute if score @s ec.cf_node_mined matches 6 run scoreboard players set #cf_xp_gain ec.temp 15
execute if score @s ec.cf_node_mined matches 7 run scoreboard players set #cf_xp_gain ec.temp 15
execute if score @s ec.cf_node_mined matches 9 run scoreboard players set #cf_xp_gain ec.temp 15
execute if score @s ec.cf_node_mined matches 3 run scoreboard players set #cf_xp_gain ec.temp 20
execute if score @s ec.cf_node_mined matches 11 run scoreboard players set #cf_xp_gain ec.temp 20
execute if score @s ec.cf_node_mined matches 8 run scoreboard players set #cf_xp_gain ec.temp 25
scoreboard players operation @s ec.cf_xp += #cf_xp_gain ec.temp

# --- Mining stat tracking ---
scoreboard players add @s adv.stat_mine 4

# --- Completion effects ---
playsound minecraft:block.amethyst_block.break master @s ~ ~ ~ 0.8 1.0
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 0.8
particle minecraft:electric_spark ~ ~0.5 ~ 0.3 0.3 0.3 0.02 15

# Award XP orbs
experience add @s 8 points

# --- Forever Coin chance: 3% per node mined (single roll) ---
execute store success score #cf_coin_roll ec.temp if predicate {"condition":"minecraft:random_chance","chance":0.03}
execute if score #cf_coin_roll ec.temp matches 1 run scoreboard players add @s ec.coins 1
execute if score #cf_coin_roll ec.temp matches 1 run scoreboard players add #rm_coins ec.var 1
execute if score #cf_coin_roll ec.temp matches 1 run tellraw @s [{text:"  ★ ",color:"#E0B0FF"},{text:"+1 Forever Coin",color:"#E0B0FF"},{text:" — there's something shiny in between the rocks...",color:"gray",italic:true}]
execute if score #cf_coin_roll ec.temp matches 1 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.3 1.5

# --- Resonance Strike: 5% chance to trigger precision minigame for bonus loot ---
execute store result score #cf_reso_roll ec.temp run random value 1..20
execute if score #cf_reso_roll ec.temp matches 1 run function evercraft:craftforever/nodes/resonance/start
