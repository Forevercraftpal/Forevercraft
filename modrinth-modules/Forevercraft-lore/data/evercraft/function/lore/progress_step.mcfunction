# Lore Discovery: Per-tick pickup progress
# Run as player with active pickup, at player position

# --- Range check: cancel if too far from sparkle ---
execute store result score #lore_px ec.temp run data get entity @s Pos[0] 1
execute store result score #lore_py ec.temp run data get entity @s Pos[1] 1
execute store result score #lore_pz ec.temp run data get entity @s Pos[2] 1
scoreboard players operation #lore_px ec.temp -= @s ec.lore_sx
scoreboard players operation #lore_py ec.temp -= @s ec.lore_sy
scoreboard players operation #lore_pz ec.temp -= @s ec.lore_sz
# Absolute values
execute if score #lore_px ec.temp matches ..-1 run scoreboard players operation #lore_px ec.temp *= #-1 ec.const
execute if score #lore_py ec.temp matches ..-1 run scoreboard players operation #lore_py ec.temp *= #-1 ec.const
execute if score #lore_pz ec.temp matches ..-1 run scoreboard players operation #lore_pz ec.temp *= #-1 ec.const
# Manhattan distance
scoreboard players operation #lore_px ec.temp += #lore_py ec.temp
scoreboard players operation #lore_px ec.temp += #lore_pz ec.temp
# Cancel if Manhattan distance > 5 blocks
execute if score #lore_px ec.temp matches 6.. run return run function evercraft:lore/cancel_pickup

# --- Check sparkle still exists ---
execute unless entity @e[type=marker,tag=ec.lore_data,distance=..8] run return run function evercraft:lore/cancel_pickup

# --- Increment progress ---
scoreboard players add @s ec.lore_progress 1

# --- Update boss bar ---
execute store result bossbar evercraft:lore_pickup value run scoreboard players get @s ec.lore_progress

# --- Periodic audio feedback ---
execute if score @s ec.lore_progress matches 15 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 0.4 1.0
execute if score @s ec.lore_progress matches 30 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 0.4 1.2
execute if score @s ec.lore_progress matches 45 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 0.4 1.4

# --- Complete at 60 ticks (3 seconds) ---
execute if score @s ec.lore_progress matches 60.. run function evercraft:lore/complete_pickup
