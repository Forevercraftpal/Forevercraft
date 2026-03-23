# Common crate animation — 10 frames (plot 10→1)
# Run as armor_stand, positioned ~ ~0.5 ~ (half block up for particle center)

# Campfire smoke at frame 2
execute if score @s ec.crate_plot matches 2 run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.01 20 force

# Frame dispatch — each plot value plays the corresponding frame
execute if score @s ec.crate_plot matches 1 run function evercraft:crate_anim/animate/frames/common/f0
execute if score @s ec.crate_plot matches 2 run function evercraft:crate_anim/animate/frames/common/f1
execute if score @s ec.crate_plot matches 3 run function evercraft:crate_anim/animate/frames/common/f2
execute if score @s ec.crate_plot matches 4 run function evercraft:crate_anim/animate/frames/common/f3
execute if score @s ec.crate_plot matches 5 run function evercraft:crate_anim/animate/frames/common/f4
execute if score @s ec.crate_plot matches 6 run function evercraft:crate_anim/animate/frames/common/f5
execute if score @s ec.crate_plot matches 7 run function evercraft:crate_anim/animate/frames/common/f6
execute if score @s ec.crate_plot matches 8 run function evercraft:crate_anim/animate/frames/common/f7
execute if score @s ec.crate_plot matches 9 run function evercraft:crate_anim/animate/frames/common/f8
execute if score @s ec.crate_plot matches 10 run function evercraft:crate_anim/animate/frames/common/f9

# Firework burst at first frame (plot 10)
execute if score @s ec.crate_plot matches 10 run particle firework ~ ~ ~ 0 0 0 0.01 3 force

# Ascending harp sounds every 2 frames
execute if score @s ec.crate_plot matches 10 run playsound minecraft:block.note_block.harp master @a[distance=..10] ~ ~ ~ 0.1 0.3 0.2
execute if score @s ec.crate_plot matches 8 run playsound minecraft:block.note_block.harp master @a[distance=..10] ~ ~ ~ 0.2 0.6 0.4
execute if score @s ec.crate_plot matches 6 run playsound minecraft:block.note_block.harp master @a[distance=..10] ~ ~ ~ 0.4 1.0 0.6
execute if score @s ec.crate_plot matches 4 run playsound minecraft:block.note_block.harp master @a[distance=..10] ~ ~ ~ 0.5 1.5 0.8
execute if score @s ec.crate_plot matches 2 run playsound minecraft:block.note_block.harp master @a[distance=..10] ~ ~ ~ 0.7 2.0 1

# Realm News daily counter
execute if score @s ec.crate_plot matches 1 run scoreboard players add #news_crates ec.var 1

# At plot 1: dispatch to system-specific finish
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.mob_crate] run function evercraft:crate_anim/finish/mob/common
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.fishing_crate] run function evercraft:crate_anim/finish/fishing/common
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.harvest_crate] run function evercraft:crate_anim/finish/harvest/common
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.structure_crate] run function evercraft:crate_anim/finish/structure
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.achievement_crate] run function evercraft:crate_anim/finish/achievement/common
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.companion_crate] run function evercraft:crate_anim/finish/companion/common
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.artifact_crate] run function evercraft:crate_anim/finish/artifact/common

# Fallback: unlock barrel if no system tag matched (prevents permanent lock)
execute if score @s ec.crate_plot matches 1 unless entity @s[tag=ec.mob_crate] unless entity @s[tag=ec.fishing_crate] unless entity @s[tag=ec.harvest_crate] unless entity @s[tag=ec.structure_crate] unless entity @s[tag=ec.achievement_crate] unless entity @s[tag=ec.companion_crate] unless entity @s[tag=ec.artifact_crate] run data remove block ~ ~ ~ lock

# Decrement animation counter
scoreboard players remove @s ec.crate_plot 1
