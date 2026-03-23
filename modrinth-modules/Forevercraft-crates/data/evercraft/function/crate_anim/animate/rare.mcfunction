# Rare crate animation — 15 frames (plot 15→1)
# Run as armor_stand, positioned ~ ~0.5 ~ (half block up for particle center)

# Campfire smoke at frame 1
execute if score @s ec.crate_plot matches 1 run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.01 20 force

# Frame dispatch — 15 frames, same count as MT
execute if score @s ec.crate_plot matches 1 run function evercraft:crate_anim/animate/frames/rare/f0
execute if score @s ec.crate_plot matches 2 run function evercraft:crate_anim/animate/frames/rare/f1
execute if score @s ec.crate_plot matches 3 run function evercraft:crate_anim/animate/frames/rare/f2
execute if score @s ec.crate_plot matches 4 run function evercraft:crate_anim/animate/frames/rare/f3
execute if score @s ec.crate_plot matches 5 run function evercraft:crate_anim/animate/frames/rare/f4
execute if score @s ec.crate_plot matches 6 run function evercraft:crate_anim/animate/frames/rare/f5
execute if score @s ec.crate_plot matches 7 run function evercraft:crate_anim/animate/frames/rare/f6
execute if score @s ec.crate_plot matches 8 run function evercraft:crate_anim/animate/frames/rare/f7
execute if score @s ec.crate_plot matches 9 run function evercraft:crate_anim/animate/frames/rare/f8
execute if score @s ec.crate_plot matches 10 run function evercraft:crate_anim/animate/frames/rare/f9
execute if score @s ec.crate_plot matches 11 run function evercraft:crate_anim/animate/frames/rare/f10
execute if score @s ec.crate_plot matches 12 run function evercraft:crate_anim/animate/frames/rare/f11
execute if score @s ec.crate_plot matches 13 run function evercraft:crate_anim/animate/frames/rare/f12
execute if score @s ec.crate_plot matches 14 run function evercraft:crate_anim/animate/frames/rare/f13
execute if score @s ec.crate_plot matches 15 run function evercraft:crate_anim/animate/frames/rare/f14

# Soul fire flame burst at first frame (plot 15)
execute if score @s ec.crate_plot matches 15 run particle soul_fire_flame ~ ~ ~ 0.2 0.2 0.2 0.02 15 force

# Ascending chime sounds every 2 frames (louder range)
execute if score @s ec.crate_plot matches 14 run playsound minecraft:block.note_block.chime master @a[distance=..20] ~ ~ ~ 0.2 0.3 0.2
execute if score @s ec.crate_plot matches 12 run playsound minecraft:block.note_block.chime master @a[distance=..20] ~ ~ ~ 0.3 0.6 0.4
execute if score @s ec.crate_plot matches 10 run playsound minecraft:block.note_block.chime master @a[distance=..20] ~ ~ ~ 0.4 0.9 0.6
execute if score @s ec.crate_plot matches 8 run playsound minecraft:block.note_block.chime master @a[distance=..20] ~ ~ ~ 0.5 1.2 0.8
execute if score @s ec.crate_plot matches 6 run playsound minecraft:block.note_block.chime master @a[distance=..20] ~ ~ ~ 0.6 1.5 1
execute if score @s ec.crate_plot matches 4 run playsound minecraft:block.note_block.chime master @a[distance=..20] ~ ~ ~ 0.7 1.8 1
execute if score @s ec.crate_plot matches 2 run playsound minecraft:block.note_block.chime master @a[distance=..20] ~ ~ ~ 0.8 2.0 1

# Realm News daily counter
execute if score @s ec.crate_plot matches 1 run scoreboard players add #news_crates ec.var 1

# At plot 1: dispatch to system-specific finish
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.mob_crate] run function evercraft:crate_anim/finish/mob/rare
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.fishing_crate] run function evercraft:crate_anim/finish/fishing/rare
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.harvest_crate] run function evercraft:crate_anim/finish/harvest/rare
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.structure_crate] run function evercraft:crate_anim/finish/structure
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.achievement_crate] run function evercraft:crate_anim/finish/achievement/rare
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.companion_crate] run function evercraft:crate_anim/finish/companion/rare
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.artifact_crate] run function evercraft:crate_anim/finish/artifact/rare

# Fallback: unlock barrel if no system tag matched (prevents permanent lock)
execute if score @s ec.crate_plot matches 1 unless entity @s[tag=ec.mob_crate] unless entity @s[tag=ec.fishing_crate] unless entity @s[tag=ec.harvest_crate] unless entity @s[tag=ec.structure_crate] unless entity @s[tag=ec.achievement_crate] unless entity @s[tag=ec.companion_crate] unless entity @s[tag=ec.artifact_crate] run data remove block ~ ~ ~ lock

# Decrement animation counter
scoreboard players remove @s ec.crate_plot 1
