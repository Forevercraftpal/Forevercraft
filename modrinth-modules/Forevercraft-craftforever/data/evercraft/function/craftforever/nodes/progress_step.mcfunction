# Biome Node: Per-tick mining progress
# Run as player with active biome mining, at player position

# --- Range check: cancel if too far from node ---
execute store result score #cf_px ec.temp run data get entity @s Pos[0] 1
execute store result score #cf_py ec.temp run data get entity @s Pos[1] 1
execute store result score #cf_pz ec.temp run data get entity @s Pos[2] 1
scoreboard players operation #cf_px ec.temp -= @s ec.cf_mine_sx
scoreboard players operation #cf_py ec.temp -= @s ec.cf_mine_sy
scoreboard players operation #cf_pz ec.temp -= @s ec.cf_mine_sz
# Absolute values
execute if score #cf_px ec.temp matches ..-1 run scoreboard players operation #cf_px ec.temp *= #-1 ec.const
execute if score #cf_py ec.temp matches ..-1 run scoreboard players operation #cf_py ec.temp *= #-1 ec.const
execute if score #cf_pz ec.temp matches ..-1 run scoreboard players operation #cf_pz ec.temp *= #-1 ec.const
# Manhattan distance
scoreboard players operation #cf_px ec.temp += #cf_py ec.temp
scoreboard players operation #cf_px ec.temp += #cf_pz ec.temp
# Cancel if Manhattan distance > 4 blocks
execute if score #cf_px ec.temp matches 5.. run return run function evercraft:craftforever/nodes/cancel_mine

# --- Check node still exists ---
execute unless entity @e[type=marker,tag=ec.cf_node_data,distance=..8] run return run function evercraft:craftforever/nodes/cancel_mine

# --- Increment progress ---
scoreboard players add @s ec.cf_mine_prog 1

# --- Update actionbar progress (20 segments, each = 4 ticks) ---
# Progress 0-3 = 0 filled, 4-7 = 1 filled, ... 76-79 = 19 filled
execute if score @s ec.cf_mine_prog matches ..3 run title @s actionbar [{text:"Extracting... ",color:"#8BC34A"},{text:"\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591",color:"dark_gray"}]
execute if score @s ec.cf_mine_prog matches 4..7 run title @s actionbar [{text:"Extracting... ",color:"#8BC34A"},{text:"\u2588",color:"#8BC34A"},{text:"\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591",color:"dark_gray"}]
execute if score @s ec.cf_mine_prog matches 8..15 run title @s actionbar [{text:"Extracting... ",color:"#8BC34A"},{text:"\u2588\u2588",color:"#8BC34A"},{text:"\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591",color:"dark_gray"}]
execute if score @s ec.cf_mine_prog matches 16..23 run title @s actionbar [{text:"Extracting... ",color:"#8BC34A"},{text:"\u2588\u2588\u2588\u2588",color:"#8BC34A"},{text:"\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591",color:"dark_gray"}]
execute if score @s ec.cf_mine_prog matches 24..31 run title @s actionbar [{text:"Extracting... ",color:"#8BC34A"},{text:"\u2588\u2588\u2588\u2588\u2588\u2588",color:"#8BC34A"},{text:"\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591",color:"dark_gray"}]
execute if score @s ec.cf_mine_prog matches 32..39 run title @s actionbar [{text:"Extracting... ",color:"#8BC34A"},{text:"\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588",color:"#8BC34A"},{text:"\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591",color:"dark_gray"}]
execute if score @s ec.cf_mine_prog matches 40..47 run title @s actionbar [{text:"Extracting... ",color:"#8BC34A"},{text:"\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588",color:"#8BC34A"},{text:"\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591",color:"dark_gray"}]
execute if score @s ec.cf_mine_prog matches 48..55 run title @s actionbar [{text:"Extracting... ",color:"#8BC34A"},{text:"\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588",color:"#8BC34A"},{text:"\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591",color:"dark_gray"}]
execute if score @s ec.cf_mine_prog matches 56..63 run title @s actionbar [{text:"Extracting... ",color:"#8BC34A"},{text:"\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588",color:"#8BC34A"},{text:"\u2591\u2591\u2591\u2591\u2591\u2591",color:"dark_gray"}]
execute if score @s ec.cf_mine_prog matches 64..71 run title @s actionbar [{text:"Extracting... ",color:"#8BC34A"},{text:"\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588",color:"#8BC34A"},{text:"\u2591\u2591\u2591\u2591",color:"dark_gray"}]
execute if score @s ec.cf_mine_prog matches 72..79 run title @s actionbar [{text:"Extracting... ",color:"#8BC34A"},{text:"\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588",color:"#8BC34A"},{text:"\u2591\u2591",color:"dark_gray"}]

# --- Periodic audio feedback ---
execute if score @s ec.cf_mine_prog matches 20 run playsound minecraft:block.stone.break master @s ~ ~ ~ 0.4 1.0
execute if score @s ec.cf_mine_prog matches 40 run playsound minecraft:block.stone.break master @s ~ ~ ~ 0.4 1.2
execute if score @s ec.cf_mine_prog matches 60 run playsound minecraft:block.stone.break master @s ~ ~ ~ 0.4 1.4

# --- Complete at 80 ticks (4 seconds) ---
execute if score @s ec.cf_mine_prog matches 80.. run function evercraft:craftforever/nodes/complete_mine
