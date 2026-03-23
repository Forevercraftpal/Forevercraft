# Exquisite crate animation — 25 frames (plot 25→1)
# Run as armor_stand, positioned ~ ~0.5 ~ (half block up for particle center)
# Exquisite = purple (#8c0691)

# Enchant particles throughout (every other frame)
execute if score @s ec.crate_plot matches 1 run particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 1 5 force
execute if score @s ec.crate_plot matches 3 run particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 1 5 force
execute if score @s ec.crate_plot matches 5 run particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 1 5 force
execute if score @s ec.crate_plot matches 7 run particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 1 5 force
execute if score @s ec.crate_plot matches 9 run particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 1 5 force
execute if score @s ec.crate_plot matches 11 run particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 1 5 force
execute if score @s ec.crate_plot matches 13 run particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 1 5 force
execute if score @s ec.crate_plot matches 15 run particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 1 5 force
execute if score @s ec.crate_plot matches 17 run particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 1 5 force
execute if score @s ec.crate_plot matches 19 run particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 1 5 force
execute if score @s ec.crate_plot matches 21 run particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 1 5 force
execute if score @s ec.crate_plot matches 23 run particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 1 5 force
execute if score @s ec.crate_plot matches 25 run particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 1 5 force

# Frame dispatch — 25 frames
execute if score @s ec.crate_plot matches 1 run function evercraft:crate_anim/animate/frames/exquisite/f0
execute if score @s ec.crate_plot matches 2 run function evercraft:crate_anim/animate/frames/exquisite/f1
execute if score @s ec.crate_plot matches 3 run function evercraft:crate_anim/animate/frames/exquisite/f2
execute if score @s ec.crate_plot matches 4 run function evercraft:crate_anim/animate/frames/exquisite/f3
execute if score @s ec.crate_plot matches 5 run function evercraft:crate_anim/animate/frames/exquisite/f4
execute if score @s ec.crate_plot matches 6 run function evercraft:crate_anim/animate/frames/exquisite/f5
execute if score @s ec.crate_plot matches 7 run function evercraft:crate_anim/animate/frames/exquisite/f6
execute if score @s ec.crate_plot matches 8 run function evercraft:crate_anim/animate/frames/exquisite/f7
execute if score @s ec.crate_plot matches 9 run function evercraft:crate_anim/animate/frames/exquisite/f8
execute if score @s ec.crate_plot matches 10 run function evercraft:crate_anim/animate/frames/exquisite/f9
execute if score @s ec.crate_plot matches 11 run function evercraft:crate_anim/animate/frames/exquisite/f10
execute if score @s ec.crate_plot matches 12 run function evercraft:crate_anim/animate/frames/exquisite/f11
execute if score @s ec.crate_plot matches 13 run function evercraft:crate_anim/animate/frames/exquisite/f12
execute if score @s ec.crate_plot matches 14 run function evercraft:crate_anim/animate/frames/exquisite/f13
execute if score @s ec.crate_plot matches 15 run function evercraft:crate_anim/animate/frames/exquisite/f14
execute if score @s ec.crate_plot matches 16 run function evercraft:crate_anim/animate/frames/exquisite/f15
execute if score @s ec.crate_plot matches 17 run function evercraft:crate_anim/animate/frames/exquisite/f16
execute if score @s ec.crate_plot matches 18 run function evercraft:crate_anim/animate/frames/exquisite/f17
execute if score @s ec.crate_plot matches 19 run function evercraft:crate_anim/animate/frames/exquisite/f18
execute if score @s ec.crate_plot matches 20 run function evercraft:crate_anim/animate/frames/exquisite/f19
execute if score @s ec.crate_plot matches 21 run function evercraft:crate_anim/animate/frames/exquisite/f20
execute if score @s ec.crate_plot matches 22 run function evercraft:crate_anim/animate/frames/exquisite/f21
execute if score @s ec.crate_plot matches 23 run function evercraft:crate_anim/animate/frames/exquisite/f22
execute if score @s ec.crate_plot matches 24 run function evercraft:crate_anim/animate/frames/exquisite/f23
execute if score @s ec.crate_plot matches 25 run function evercraft:crate_anim/animate/frames/exquisite/f24

# Flash at frame 1
execute if score @s ec.crate_plot matches 1 run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0.5 0.5 0.5 0 50 force

# Amethyst + beacon sounds
execute if score @s ec.crate_plot matches 25 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 1.5 2.0 0.2
execute if score @s ec.crate_plot matches 23 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 1.5 1.9 0.4
execute if score @s ec.crate_plot matches 21 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 1.5 1.8 0.6
execute if score @s ec.crate_plot matches 19 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 1.25 1.65 0.8
execute if score @s ec.crate_plot matches 17 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 1.25 1.5 1
execute if score @s ec.crate_plot matches 15 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 1 1.35 1
execute if score @s ec.crate_plot matches 13 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 1 1.2 1
execute if score @s ec.crate_plot matches 11 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 0.75 1.0 0.6
execute if score @s ec.crate_plot matches 9 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 0.75 0.8 0.8
execute if score @s ec.crate_plot matches 7 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 0.5 0.6 1
execute if score @s ec.crate_plot matches 5 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 0.5 0.4 1
execute if score @s ec.crate_plot matches 3 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 0.5 0.2 1
execute if score @s ec.crate_plot matches 1 run playsound minecraft:block.beacon.power_select master @a[distance=..50] ~ ~ ~ 1 1.5 1

# Realm News daily counter
execute if score @s ec.crate_plot matches 1 run scoreboard players add #news_crates ec.var 1

# At plot 1: dispatch to system-specific finish
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.mob_crate] run function evercraft:crate_anim/finish/mob/exquisite
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.fishing_crate] run function evercraft:crate_anim/finish/fishing/exquisite
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.harvest_crate] run function evercraft:crate_anim/finish/harvest/exquisite
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.structure_crate] run function evercraft:crate_anim/finish/structure
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.achievement_crate] run function evercraft:crate_anim/finish/achievement/exquisite
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.companion_crate] run function evercraft:crate_anim/finish/companion/exquisite
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.artifact_crate] run function evercraft:crate_anim/finish/artifact/exquisite

# Fallback: unlock barrel if no system tag matched (prevents permanent lock)
execute if score @s ec.crate_plot matches 1 unless entity @s[tag=ec.mob_crate] unless entity @s[tag=ec.fishing_crate] unless entity @s[tag=ec.harvest_crate] unless entity @s[tag=ec.structure_crate] unless entity @s[tag=ec.achievement_crate] unless entity @s[tag=ec.companion_crate] unless entity @s[tag=ec.artifact_crate] run data remove block ~ ~ ~ lock

# Decrement animation counter
scoreboard players remove @s ec.crate_plot 1
