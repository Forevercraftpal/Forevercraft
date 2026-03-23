# Infinite Castle — Totem Save (duel-style death prevention)
# Run as: the ic.player who dropped to critical health
# Saves from death, removes from castle, teleports to bed, -30 levels

# === IMMEDIATE SURVIVAL ===
effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:resistance 3 4 true

# === TOTEM ANIMATION ===
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.5 100
playsound minecraft:item.totem.use master @s ~ ~ ~ 1 1

# === PENALTIES ===
# Lose 30 levels
experience add @s -30 levels

# Brief darkness + nausea (knockout feel)
effect give @s minecraft:darkness 5 0 false
effect give @s minecraft:nausea 5 0 false

# Defeat title
title @s times 5 40 15
title @s title {text:"FALLEN",color:"dark_red",bold:true}
title @s subtitle {text:"You have been expelled from the castle.",color:"gray"}

# Sound
playsound minecraft:entity.wither.death master @s ~ ~ ~ 0.3 0.5

# Chat message
tellraw @s [{text:"[Castle] ",color:"dark_red"},{text:"The castle has consumed your strength... (-30 levels)",color:"red"}]

# Update record before removing
scoreboard players operation @s ic.record > #ic_floor ec.var

# Announce to other players
tellraw @a[tag=ic.player,tag=!ic.fallen] [{text:"[Castle] ",color:"dark_red"},{selector:"@s"},{text:" has fallen!",color:"red"}]

# Tag as fallen (prevent re-trigger)
tag @s add ic.fallen

# === TELEPORT TO BED/SPAWN FIRST (so dropped crates land at return point) ===
execute if data entity @s respawn run function evercraft:castle/tp_to_spawn
execute unless data entity @s respawn run spreadplayers ~ ~ 0 1 false @s

# Tally crate coins AFTER teleport (inventory-full drops land at return point)
function evercraft:castle/tally_coins

# Remove from castle
tag @s remove ic.player
tag @s remove ic.fallen
scoreboard players set @s ic.deaths 0

# Recount players
execute store result score #ic_players ec.var if entity @a[tag=ic.player]

# If no players remain, fail the castle
execute unless entity @a[tag=ic.player] run function evercraft:castle/fail
