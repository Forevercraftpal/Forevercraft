# Foraging Bush: Per-tick gathering progress
# Run as player with active gathering, at player position

# --- Range check: cancel if too far from bush ---
execute store result score #fg_px ec.temp run data get entity @s Pos[0] 1
execute store result score #fg_py ec.temp run data get entity @s Pos[1] 1
execute store result score #fg_pz ec.temp run data get entity @s Pos[2] 1
scoreboard players operation #fg_px ec.temp -= @s ec.fg_sx
scoreboard players operation #fg_py ec.temp -= @s ec.fg_sy
scoreboard players operation #fg_pz ec.temp -= @s ec.fg_sz
# Absolute values
execute if score #fg_px ec.temp matches ..-1 run scoreboard players operation #fg_px ec.temp *= #-1 ec.const
execute if score #fg_py ec.temp matches ..-1 run scoreboard players operation #fg_py ec.temp *= #-1 ec.const
execute if score #fg_pz ec.temp matches ..-1 run scoreboard players operation #fg_pz ec.temp *= #-1 ec.const
# Manhattan distance
scoreboard players operation #fg_px ec.temp += #fg_py ec.temp
scoreboard players operation #fg_px ec.temp += #fg_pz ec.temp
# Cancel if Manhattan distance > 4 blocks
execute if score #fg_px ec.temp matches 5.. run return run function evercraft:forage/cancel_gather

# --- Check bush still exists ---
execute unless entity @e[type=marker,tag=ec.forage_data,distance=..8] run return run function evercraft:forage/cancel_gather

# --- Increment progress ---
scoreboard players add @s ec.fg_progress 1

# --- Update boss bar ---
execute store result bossbar evercraft:forage_gather value run scoreboard players get @s ec.fg_progress

# --- Periodic audio feedback ---
execute if score @s ec.fg_progress matches 15 run playsound minecraft:block.grass.hit master @s ~ ~ ~ 0.4 1.0
execute if score @s ec.fg_progress matches 30 run playsound minecraft:block.grass.hit master @s ~ ~ ~ 0.4 1.2
execute if score @s ec.fg_progress matches 45 run playsound minecraft:block.grass.hit master @s ~ ~ ~ 0.4 1.4

# --- Complete at 60 ticks (3 seconds) ---
execute if score @s ec.fg_progress matches 60.. run function evercraft:forage/complete_gather
