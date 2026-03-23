# Player interacted with a chest minecart - check if in mineshaft
advancement revoke @s only evercraft:structures/interact/open_minecart_chest

# Store the MINECART's position (not the player's!) for looted check
# Find nearest chest_minecart within 7 blocks of the player
execute store result score @s cf.pos_x run data get entity @n[type=chest_minecart,distance=..7] Pos[0]
execute store result score @s cf.pos_y run data get entity @n[type=chest_minecart,distance=..7] Pos[1]
execute store result score @s cf.pos_z run data get entity @n[type=chest_minecart,distance=..7] Pos[2]

# Minecart chests are only in mineshafts - set struct_id 17 (Uncommon base tier 2)
scoreboard players set @s cf.struct_id 17

# Roll tier based on Dream Rate (same as regular structures)
scoreboard players set @s cf.tier 2
function evercraft:structures/interact/roll_vanilla_tier

# Check if already looted and spawn loot
function evercraft:structures/storage/check_looted

# If loot was spawned (#spawn_loot was 1), protect the minecart from being broken
# Place barrier below AND make the minecart entity invulnerable
execute if score #spawn_loot cf.temp matches 1 at @n[type=chest_minecart,distance=..7] run setblock ~ ~-1 ~ minecraft:barrier replace
execute if score #spawn_loot cf.temp matches 1 run data modify entity @n[type=chest_minecart,distance=..7] Invulnerable set value 1b
