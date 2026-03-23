# Wise Wanderer — Buy Common Crate (15 XP levels)
# Runs as: interaction entity. Targets nearest WW.InMenu player.

# Check XP level
execute store result score #ww_xp adv.temp run experience query @p[tag=WW.InMenu,distance=..5] levels
execute unless score #ww_xp adv.temp matches 15.. run return run tellraw @p[tag=WW.InMenu,distance=..5] [{text:"✦ ",color:"gold"},{text:"Not enough XP! Need 15 levels.",color:"red"}]

# Check inventory space before purchase
execute as @p[tag=WW.InMenu,distance=..5] store result score #inv_full ec.var run function evercraft:util/check_inv_full

# Deduct XP
experience add @p[tag=WW.InMenu,distance=..5] -15 levels

# Give crate
execute if score #inv_full ec.var matches 0 run loot give @p[tag=WW.InMenu,distance=..5] loot evercraft:professions/wise_wanderer/crates/common_crate
execute if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:professions/wise_wanderer/crates/common_crate

# Feedback
playsound minecraft:entity.experience_orb.pickup master @p[tag=WW.InMenu,distance=..5] ~ ~ ~ 1 1.2
tellraw @p[tag=WW.InMenu,distance=..5] [{text:"✦ ",color:"gold"},{text:"Purchased ",color:"gray"},{text:"Common Crate",color:"white"},{text:" for 15 levels!",color:"gray"}]
execute if score #inv_full ec.var matches 1 run tellraw @p[tag=WW.InMenu,distance=..5] [{text:"[!] ",color:"red"},{text:"Inventory full! Your crate was dropped at your feet.",color:"yellow"}]
execute if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass master @p[tag=WW.InMenu,distance=..5] ~ ~ ~ 1 0.5
