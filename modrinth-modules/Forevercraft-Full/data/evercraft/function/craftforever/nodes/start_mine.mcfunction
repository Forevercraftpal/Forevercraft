# Biome Node: Begin 4-second mining progress
# Run as the player who clicked, at player position

# If already mining a regular prospect node, a biome node, or in resonance minigame, ignore
execute if score @s ec.pr_picking matches 1 run return 0
execute if score @s ec.cf_mining matches 1 run return 0
execute if score @s ec.cf_reso matches 1 run return 0

# Require any pickaxe
execute unless items entity @s container.* minecraft:wooden_pickaxe unless items entity @s container.* minecraft:stone_pickaxe unless items entity @s container.* minecraft:iron_pickaxe unless items entity @s container.* minecraft:diamond_pickaxe unless items entity @s container.* minecraft:netherite_pickaxe unless items entity @s container.* *[custom_data~{spirit_pickaxe:true}] run tellraw @s [{text:"You need a pickaxe to extract biome materials.",color:"red"}]
execute unless items entity @s container.* minecraft:wooden_pickaxe unless items entity @s container.* minecraft:stone_pickaxe unless items entity @s container.* minecraft:iron_pickaxe unless items entity @s container.* minecraft:diamond_pickaxe unless items entity @s container.* minecraft:netherite_pickaxe unless items entity @s container.* *[custom_data~{spirit_pickaxe:true}] run return 0

# Check rank requirement from nearest biome node marker
execute store result score #cf_node_rank ec.temp run data get entity @e[type=marker,tag=ec.cf_node_data,distance=..5,limit=1,sort=nearest] data.min_rank
# If player doesn't meet rank and doesn't have spirit pickaxe, deny
execute unless items entity @s weapon.* *[custom_data~{spirit_pickaxe:true}] unless score @s ec.cf_rank >= #cf_node_rank ec.temp run tellraw @s [{text:"Your Artisan Rank is too low to extract this node.",color:"red"},{text:" (Requires rank ",color:"gray"},{score:{name:"#cf_node_rank",objective:"ec.temp"},color:"yellow"},{text:")",color:"gray"}]
execute unless items entity @s weapon.* *[custom_data~{spirit_pickaxe:true}] unless score @s ec.cf_rank >= #cf_node_rank ec.temp run return 0

# Mark player as mining biome node
scoreboard players set @s ec.cf_mining 1
scoreboard players set @s ec.cf_mine_prog 0

# Store node position for range checking
execute store result score @s ec.cf_mine_sx run data get entity @e[type=marker,tag=ec.cf_node_data,distance=..5,limit=1,sort=nearest] Pos[0] 1
execute store result score @s ec.cf_mine_sy run data get entity @e[type=marker,tag=ec.cf_node_data,distance=..5,limit=1,sort=nearest] Pos[1] 1
execute store result score @s ec.cf_mine_sz run data get entity @e[type=marker,tag=ec.cf_node_data,distance=..5,limit=1,sort=nearest] Pos[2] 1

# Store biome ID for loot routing on completion
execute store result score @s ec.cf_node_mined run data get entity @e[type=marker,tag=ec.cf_node_data,distance=..5,limit=1,sort=nearest] data.biome_id

# Show initial progress on actionbar (per-player, no multiplayer collision)
title @s actionbar [{text:"Extracting... ",color:"#8BC34A"},{text:"\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591",color:"dark_gray"}]

# Start sound
playsound minecraft:block.stone.hit master @s ~ ~ ~ 0.6 0.8
