# Tomb System — Detect Best Sword
# @s = player who died
# Sets ec.tomb_sword score: 1=wood, 2=stone, 3=iron(default), 4=gold, 5=diamond, 6=netherite

# Default to iron sword (3) if no sword found
scoreboard players set @s ec.tomb_sword 3

# Check each tier — highest wins (later checks overwrite lower)
execute store success score #found ec.temp run clear @s wooden_sword 0
execute if score #found ec.temp matches 1 run scoreboard players set @s ec.tomb_sword 1

execute store success score #found ec.temp run clear @s stone_sword 0
execute if score #found ec.temp matches 1 run scoreboard players set @s ec.tomb_sword 2

# iron already default (3) — but check explicitly so it overrides wood/stone
execute store success score #found ec.temp run clear @s iron_sword 0
execute if score #found ec.temp matches 1 run scoreboard players set @s ec.tomb_sword 3

execute store success score #found ec.temp run clear @s golden_sword 0
execute if score #found ec.temp matches 1 run scoreboard players set @s ec.tomb_sword 4

execute store success score #found ec.temp run clear @s diamond_sword 0
execute if score #found ec.temp matches 1 run scoreboard players set @s ec.tomb_sword 5

execute store success score #found ec.temp run clear @s netherite_sword 0
execute if score #found ec.temp matches 1 run scoreboard players set @s ec.tomb_sword 6

# Store sword ID string to temp storage for macro summon
data modify storage evercraft:tomb_temp sword_id set value "minecraft:iron_sword"
execute if score @s ec.tomb_sword matches 1 run data modify storage evercraft:tomb_temp sword_id set value "minecraft:wooden_sword"
execute if score @s ec.tomb_sword matches 2 run data modify storage evercraft:tomb_temp sword_id set value "minecraft:stone_sword"
execute if score @s ec.tomb_sword matches 3 run data modify storage evercraft:tomb_temp sword_id set value "minecraft:iron_sword"
execute if score @s ec.tomb_sword matches 4 run data modify storage evercraft:tomb_temp sword_id set value "minecraft:golden_sword"
execute if score @s ec.tomb_sword matches 5 run data modify storage evercraft:tomb_temp sword_id set value "minecraft:diamond_sword"
execute if score @s ec.tomb_sword matches 6 run data modify storage evercraft:tomb_temp sword_id set value "minecraft:netherite_sword"
