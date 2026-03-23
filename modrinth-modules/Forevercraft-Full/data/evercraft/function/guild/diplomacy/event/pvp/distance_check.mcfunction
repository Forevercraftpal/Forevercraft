# Guild Diplomacy — Check if current player (@p) is within enemy guild's zone
# Run as: enemy guild marker entity (at 0 -61 0)
# Player context preserved from check.mcfunction caller

# Get enemy zone coordinates from marker data
execute store result score #gd_ez_x ec.temp run data get entity @s data.zone.x
execute store result score #gd_ez_y ec.temp run data get entity @s data.zone.y
execute store result score #gd_ez_z ec.temp run data get entity @s data.zone.z
execute store result score #gd_ez_dim ec.temp run data get entity @s data.zone.dim

# Get player's current position (player is still @p from the `as @a at @s` chain)
execute store result score #gd_px ec.temp run data get entity @p Pos[0]
execute store result score #gd_py ec.temp run data get entity @p Pos[1]
execute store result score #gd_pz ec.temp run data get entity @p Pos[2]

# Check dimension match
scoreboard players set #gd_pdim ec.temp 0
execute in minecraft:the_nether run scoreboard players set #gd_pdim ec.temp 1
execute in minecraft:the_end run scoreboard players set #gd_pdim ec.temp 2
execute unless score #gd_pdim ec.temp = #gd_ez_dim ec.temp run function evercraft:guild/diplomacy/event/pvp/not_in_zone
execute unless score #gd_pdim ec.temp = #gd_ez_dim ec.temp run return 0

# X distance
scoreboard players operation #gd_px ec.temp -= #gd_ez_x ec.temp
execute if score #gd_px ec.temp matches ..-1 run scoreboard players operation #gd_px ec.temp *= #-1 ec.const

# Y distance
scoreboard players operation #gd_py ec.temp -= #gd_ez_y ec.temp
execute if score #gd_py ec.temp matches ..-1 run scoreboard players operation #gd_py ec.temp *= #-1 ec.const

# Z distance
scoreboard players operation #gd_pz ec.temp -= #gd_ez_z ec.temp
execute if score #gd_pz ec.temp matches ..-1 run scoreboard players operation #gd_pz ec.temp *= #-1 ec.const

# Check if within 128 blocks on all axes
scoreboard players set #gd_in_enemy ec.temp 0
execute if score #gd_px ec.temp matches ..128 if score #gd_py ec.temp matches ..128 if score #gd_pz ec.temp matches ..128 run scoreboard players set #gd_in_enemy ec.temp 1

# State transitions
execute if score #gd_in_enemy ec.temp matches 1 as @p unless entity @s[tag=ec.gd_pvp] run function evercraft:guild/diplomacy/event/pvp/enable
execute if score #gd_in_enemy ec.temp matches 0 as @p if entity @s[tag=ec.gd_pvp] run function evercraft:guild/diplomacy/event/pvp/disable
