# ============================================================
# Calculate Depth Multiplier
# Returns multiplier in ec.depth_mult (100 = 1.0x, 150 = 1.5x)
# ============================================================

# Get player Y coordinate
execute store result score @s ec.depth_y run data get entity @s Pos[1]

# Calculate depth tier (0-5)
# Tier 0: Y >= 64 (surface) = 1.0x
# Tier 1: Y 32-63 = 1.1x
# Tier 2: Y 0-31 = 1.2x
# Tier 3: Y -32 to -1 = 1.3x
# Tier 4: Y -48 to -33 = 1.4x
# Tier 5: Y <= -49 (deep) = 1.5x

scoreboard players set @s ec.depth_tier 0
scoreboard players set @s ec.depth_mult 100

execute if score @s ec.depth_y matches 32..63 run scoreboard players set @s ec.depth_tier 1
execute if score @s ec.depth_y matches 32..63 run scoreboard players set @s ec.depth_mult 110

execute if score @s ec.depth_y matches 0..31 run scoreboard players set @s ec.depth_tier 2
execute if score @s ec.depth_y matches 0..31 run scoreboard players set @s ec.depth_mult 120

execute if score @s ec.depth_y matches -32..-1 run scoreboard players set @s ec.depth_tier 3
execute if score @s ec.depth_y matches -32..-1 run scoreboard players set @s ec.depth_mult 130

execute if score @s ec.depth_y matches -48..-33 run scoreboard players set @s ec.depth_tier 4
execute if score @s ec.depth_y matches -48..-33 run scoreboard players set @s ec.depth_mult 140

execute if score @s ec.depth_y matches ..-49 run scoreboard players set @s ec.depth_tier 5
execute if score @s ec.depth_y matches ..-49 run scoreboard players set @s ec.depth_mult 150
