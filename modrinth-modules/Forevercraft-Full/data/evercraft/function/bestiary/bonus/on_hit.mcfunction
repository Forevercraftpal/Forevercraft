# Bestiary — On Hit (Macro)
# Args: {pow:"#pow1", field:"lo", mob:"blaze", type:"minecraft:blaze", smob:"blaze"}
# Run as the player who hit a mob
# Applies stage-scaled bonus damage if player holds an artifact

# Gate 1: must be holding a class artifact
execute unless items entity @s weapon.mainhand *[custom_data~{is_artifact:true}] run return 0

# Gate 2: check stage score (replaces old mastery bit check)
$execute store result score #bs_stage bs.temp run scoreboard players get @s bs.s_$(smob)
execute unless score #bs_stage bs.temp matches 1.. run return 0

# Apply scaled damage: stage 1-2=+1, 3-4=+2, 5-6=+3, 7=+4
$execute if score #bs_stage bs.temp matches 1..2 as @e[type=$(type),distance=..8,nbt={HurtTime:10s},limit=1,sort=nearest] run damage @s 1 minecraft:generic
$execute if score #bs_stage bs.temp matches 3..4 as @e[type=$(type),distance=..8,nbt={HurtTime:10s},limit=1,sort=nearest] run damage @s 2 minecraft:generic
$execute if score #bs_stage bs.temp matches 5..6 as @e[type=$(type),distance=..8,nbt={HurtTime:10s},limit=1,sort=nearest] run damage @s 3 minecraft:generic
$execute if score #bs_stage bs.temp matches 7 as @e[type=$(type),distance=..8,nbt={HurtTime:10s},limit=1,sort=nearest] run damage @s 4 minecraft:generic
