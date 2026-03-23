# Mythical crate animation — 30 frames (plot 30→1)
# Run as armor_stand, positioned ~ ~0.5 ~ (half block up for particle center)
# Mythical = gold

# Enchant + totem particles throughout
execute if score @s ec.crate_plot matches 1 run particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 1 8 force
execute if score @s ec.crate_plot matches 3 run particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 1 8 force
execute if score @s ec.crate_plot matches 5 run particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 1 8 force
execute if score @s ec.crate_plot matches 7 run particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 1 8 force
execute if score @s ec.crate_plot matches 9 run particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 1 8 force
execute if score @s ec.crate_plot matches 11 run particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 1 8 force
execute if score @s ec.crate_plot matches 13 run particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 1 8 force
execute if score @s ec.crate_plot matches 15 run particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 1 8 force
execute if score @s ec.crate_plot matches 17 run particle minecraft:totem_of_undying ~ ~ ~ 0.3 0.3 0.3 0.1 3 force
execute if score @s ec.crate_plot matches 19 run particle minecraft:totem_of_undying ~ ~ ~ 0.3 0.3 0.3 0.1 3 force
execute if score @s ec.crate_plot matches 21 run particle minecraft:totem_of_undying ~ ~ ~ 0.3 0.3 0.3 0.1 3 force
execute if score @s ec.crate_plot matches 23 run particle minecraft:totem_of_undying ~ ~ ~ 0.3 0.3 0.3 0.1 3 force
execute if score @s ec.crate_plot matches 25 run particle minecraft:totem_of_undying ~ ~ ~ 0.3 0.3 0.3 0.1 5 force
execute if score @s ec.crate_plot matches 27 run particle minecraft:totem_of_undying ~ ~ ~ 0.3 0.3 0.3 0.1 5 force
execute if score @s ec.crate_plot matches 29 run particle minecraft:totem_of_undying ~ ~ ~ 0.3 0.3 0.3 0.1 5 force

# Frame dispatch — 30 frames
execute if score @s ec.crate_plot matches 1 run function evercraft:crate_anim/animate/frames/mythical/f0
execute if score @s ec.crate_plot matches 2 run function evercraft:crate_anim/animate/frames/mythical/f1
execute if score @s ec.crate_plot matches 3 run function evercraft:crate_anim/animate/frames/mythical/f2
execute if score @s ec.crate_plot matches 4 run function evercraft:crate_anim/animate/frames/mythical/f3
execute if score @s ec.crate_plot matches 5 run function evercraft:crate_anim/animate/frames/mythical/f4
execute if score @s ec.crate_plot matches 6 run function evercraft:crate_anim/animate/frames/mythical/f5
execute if score @s ec.crate_plot matches 7 run function evercraft:crate_anim/animate/frames/mythical/f6
execute if score @s ec.crate_plot matches 8 run function evercraft:crate_anim/animate/frames/mythical/f7
execute if score @s ec.crate_plot matches 9 run function evercraft:crate_anim/animate/frames/mythical/f8
execute if score @s ec.crate_plot matches 10 run function evercraft:crate_anim/animate/frames/mythical/f9
execute if score @s ec.crate_plot matches 11 run function evercraft:crate_anim/animate/frames/mythical/f10
execute if score @s ec.crate_plot matches 12 run function evercraft:crate_anim/animate/frames/mythical/f11
execute if score @s ec.crate_plot matches 13 run function evercraft:crate_anim/animate/frames/mythical/f12
execute if score @s ec.crate_plot matches 14 run function evercraft:crate_anim/animate/frames/mythical/f13
execute if score @s ec.crate_plot matches 15 run function evercraft:crate_anim/animate/frames/mythical/f14
execute if score @s ec.crate_plot matches 16 run function evercraft:crate_anim/animate/frames/mythical/f15
execute if score @s ec.crate_plot matches 17 run function evercraft:crate_anim/animate/frames/mythical/f16
execute if score @s ec.crate_plot matches 18 run function evercraft:crate_anim/animate/frames/mythical/f17
execute if score @s ec.crate_plot matches 19 run function evercraft:crate_anim/animate/frames/mythical/f18
execute if score @s ec.crate_plot matches 20 run function evercraft:crate_anim/animate/frames/mythical/f19
execute if score @s ec.crate_plot matches 21 run function evercraft:crate_anim/animate/frames/mythical/f20
execute if score @s ec.crate_plot matches 22 run function evercraft:crate_anim/animate/frames/mythical/f21
execute if score @s ec.crate_plot matches 23 run function evercraft:crate_anim/animate/frames/mythical/f22
execute if score @s ec.crate_plot matches 24 run function evercraft:crate_anim/animate/frames/mythical/f23
execute if score @s ec.crate_plot matches 25 run function evercraft:crate_anim/animate/frames/mythical/f24
execute if score @s ec.crate_plot matches 26 run function evercraft:crate_anim/animate/frames/mythical/f25
execute if score @s ec.crate_plot matches 27 run function evercraft:crate_anim/animate/frames/mythical/f26
execute if score @s ec.crate_plot matches 28 run function evercraft:crate_anim/animate/frames/mythical/f27
execute if score @s ec.crate_plot matches 29 run function evercraft:crate_anim/animate/frames/mythical/f28
execute if score @s ec.crate_plot matches 30 run function evercraft:crate_anim/animate/frames/mythical/f29

# Flash at frame 1
execute if score @s ec.crate_plot matches 1 run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0.5 0.5 0.5 0 50 force

# Beacon + end_portal sounds
execute if score @s ec.crate_plot matches 30 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 1.5 2.0 0.2
execute if score @s ec.crate_plot matches 28 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 1.5 1.9 0.4
execute if score @s ec.crate_plot matches 26 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 1.5 1.8 0.6
execute if score @s ec.crate_plot matches 24 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 1.25 1.65 0.8
execute if score @s ec.crate_plot matches 22 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 1.25 1.5 1
execute if score @s ec.crate_plot matches 20 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 1 1.35 1
execute if score @s ec.crate_plot matches 18 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 1 1.2 1
execute if score @s ec.crate_plot matches 16 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 0.75 1.0 0.6
execute if score @s ec.crate_plot matches 14 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 0.75 0.8 0.8
execute if score @s ec.crate_plot matches 12 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 0.5 0.6 1
execute if score @s ec.crate_plot matches 10 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 0.5 0.4 1
execute if score @s ec.crate_plot matches 8 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 0.5 0.2 1
execute if score @s ec.crate_plot matches 6 run playsound minecraft:block.beacon.power_select master @a[distance=..50] ~ ~ ~ 1 1.5 1
execute if score @s ec.crate_plot matches 4 run playsound minecraft:block.beacon.power_select master @a[distance=..50] ~ ~ ~ 1 1.8 1
execute if score @s ec.crate_plot matches 2 run playsound minecraft:block.beacon.power_select master @a[distance=..50] ~ ~ ~ 1 2.0 1

# 3x Anvil sounds + end_portal at finish
execute if score @s ec.crate_plot matches 1 run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 1 1.2 1
execute if score @s ec.crate_plot matches 1 run playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 0.5 1
execute if score @s ec.crate_plot matches 1 run playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 0.75 1
execute if score @s ec.crate_plot matches 1 run playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 1.0 1

# Realm News daily counter
execute if score @s ec.crate_plot matches 1 run scoreboard players add #news_crates ec.var 1

# At plot 1: dispatch to system-specific finish
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.mob_crate] run function evercraft:crate_anim/finish/mob/mythical
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.fishing_crate] run function evercraft:crate_anim/finish/fishing/mythical
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.harvest_crate] run function evercraft:crate_anim/finish/harvest/mythical
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.structure_crate] run function evercraft:crate_anim/finish/structure
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.achievement_crate] run function evercraft:crate_anim/finish/achievement/mythical
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.companion_crate] run function evercraft:crate_anim/finish/companion/mythical
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.artifact_crate] run function evercraft:crate_anim/finish/artifact/mythical

# Fallback: unlock barrel if no system tag matched (prevents permanent lock)
execute if score @s ec.crate_plot matches 1 unless entity @s[tag=ec.mob_crate] unless entity @s[tag=ec.fishing_crate] unless entity @s[tag=ec.harvest_crate] unless entity @s[tag=ec.structure_crate] unless entity @s[tag=ec.achievement_crate] unless entity @s[tag=ec.companion_crate] unless entity @s[tag=ec.artifact_crate] run data remove block ~ ~ ~ lock

# Decrement animation counter
scoreboard players remove @s ec.crate_plot 1
