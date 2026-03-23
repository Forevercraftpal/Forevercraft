# Infinite Castle — Remove Dead Player (fallback for actual death)
# Run as: dead player (totem_save missed — deathCount triggered)

# Update record
scoreboard players operation @s ic.record > #ic_floor ec.var

# Penalty: -30 levels
experience add @s -30 levels

# Announce
tellraw @a[tag=ic.player] [{text:"[Castle] ",color:"dark_red"},{selector:"@s"},{text:" has fallen!",color:"red"}]
tellraw @s [{text:"[Castle] ",color:"dark_red"},{text:"The castle has consumed your strength... (-30 levels)",color:"red"}]

# Teleport to bed FIRST (player already respawned from death, ensure correct location)
execute if data entity @s respawn run function evercraft:castle/tp_to_spawn
execute unless data entity @s respawn at @e[type=marker,tag=ic.return,limit=1] run tp @s ~ ~ ~

# Tally crate coins AFTER teleport (inventory-full drops land at return point)
function evercraft:castle/tally_coins

# Remove tag
tag @s remove ic.player
scoreboard players set @s ic.deaths 0

# Recount players
execute store result score #ic_players ec.var if entity @a[tag=ic.player]
