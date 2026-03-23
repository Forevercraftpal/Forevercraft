# Ornate crate animation — 20 frames (plot 20→1)
# Run as armor_stand, positioned ~ ~0.5 ~ (half block up for particle center)

# Double campfire smoke at frame 2
execute if score @s ec.crate_plot matches 2 run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.01 20 force
execute if score @s ec.crate_plot matches 2 run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.01 20 force

# Frame dispatch — 20 frames
execute if score @s ec.crate_plot matches 1 run function evercraft:crate_anim/animate/frames/ornate/f0
execute if score @s ec.crate_plot matches 2 run function evercraft:crate_anim/animate/frames/ornate/f1
execute if score @s ec.crate_plot matches 3 run function evercraft:crate_anim/animate/frames/ornate/f2
execute if score @s ec.crate_plot matches 4 run function evercraft:crate_anim/animate/frames/ornate/f3
execute if score @s ec.crate_plot matches 5 run function evercraft:crate_anim/animate/frames/ornate/f4
execute if score @s ec.crate_plot matches 6 run function evercraft:crate_anim/animate/frames/ornate/f5
execute if score @s ec.crate_plot matches 7 run function evercraft:crate_anim/animate/frames/ornate/f6
execute if score @s ec.crate_plot matches 8 run function evercraft:crate_anim/animate/frames/ornate/f7
execute if score @s ec.crate_plot matches 9 run function evercraft:crate_anim/animate/frames/ornate/f8
execute if score @s ec.crate_plot matches 10 run function evercraft:crate_anim/animate/frames/ornate/f9
execute if score @s ec.crate_plot matches 11 run function evercraft:crate_anim/animate/frames/ornate/f10
execute if score @s ec.crate_plot matches 12 run function evercraft:crate_anim/animate/frames/ornate/f11
execute if score @s ec.crate_plot matches 13 run function evercraft:crate_anim/animate/frames/ornate/f12
execute if score @s ec.crate_plot matches 14 run function evercraft:crate_anim/animate/frames/ornate/f13
execute if score @s ec.crate_plot matches 15 run function evercraft:crate_anim/animate/frames/ornate/f14
execute if score @s ec.crate_plot matches 16 run function evercraft:crate_anim/animate/frames/ornate/f15
execute if score @s ec.crate_plot matches 17 run function evercraft:crate_anim/animate/frames/ornate/f16
execute if score @s ec.crate_plot matches 18 run function evercraft:crate_anim/animate/frames/ornate/f17
execute if score @s ec.crate_plot matches 19 run function evercraft:crate_anim/animate/frames/ornate/f18
execute if score @s ec.crate_plot matches 20 run function evercraft:crate_anim/animate/frames/ornate/f19

# Flame burst at first frame (plot 19)
execute if score @s ec.crate_plot matches 19 run particle minecraft:flame ~ ~ ~ 0 0 0 0.005 200 force

# Amethyst sounds every frame (descending pitch, matching MT ornate pattern)
execute if score @s ec.crate_plot matches 1 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 1.75 2 0.2
execute if score @s ec.crate_plot matches 2 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 1.75 2 0.4
execute if score @s ec.crate_plot matches 3 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 1.75 1.95 0.6
execute if score @s ec.crate_plot matches 4 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 1.5 1.9 0.8
execute if score @s ec.crate_plot matches 5 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 1.5 1.85 1
execute if score @s ec.crate_plot matches 6 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 1.5 1.75 1
execute if score @s ec.crate_plot matches 7 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 1.25 1.65 1
execute if score @s ec.crate_plot matches 8 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 1.25 1.55 0.4
execute if score @s ec.crate_plot matches 9 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 1.25 1.45 0.6
execute if score @s ec.crate_plot matches 10 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 1.25 1.35 0.8
execute if score @s ec.crate_plot matches 11 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 1 1.25 1
execute if score @s ec.crate_plot matches 12 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 1 1.15 1
execute if score @s ec.crate_plot matches 13 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 1 1.0 1
execute if score @s ec.crate_plot matches 14 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 0.75 0.9 0.4
execute if score @s ec.crate_plot matches 15 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 0.75 0.8 0.6
execute if score @s ec.crate_plot matches 16 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 0.75 0.65 0.8
execute if score @s ec.crate_plot matches 17 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 0.5 0.5 1
execute if score @s ec.crate_plot matches 18 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 0.5 0.35 1
execute if score @s ec.crate_plot matches 19 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 0.5 0.2 1
execute if score @s ec.crate_plot matches 20 run playsound minecraft:block.amethyst_block.place master @a[distance=..50] ~ ~ ~ 0.5 0.075 0.8

# Realm News daily counter
execute if score @s ec.crate_plot matches 1 run scoreboard players add #news_crates ec.var 1

# At plot 1: dispatch to system-specific finish
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.mob_crate] run function evercraft:crate_anim/finish/mob/ornate
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.fishing_crate] run function evercraft:crate_anim/finish/fishing/ornate
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.harvest_crate] run function evercraft:crate_anim/finish/harvest/ornate
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.structure_crate] run function evercraft:crate_anim/finish/structure
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.achievement_crate] run function evercraft:crate_anim/finish/achievement/ornate
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.companion_crate] run function evercraft:crate_anim/finish/companion/ornate
execute if score @s ec.crate_plot matches 1 if entity @s[tag=ec.artifact_crate] run function evercraft:crate_anim/finish/artifact/ornate

# Fallback: unlock barrel if no system tag matched (prevents permanent lock)
execute if score @s ec.crate_plot matches 1 unless entity @s[tag=ec.mob_crate] unless entity @s[tag=ec.fishing_crate] unless entity @s[tag=ec.harvest_crate] unless entity @s[tag=ec.structure_crate] unless entity @s[tag=ec.achievement_crate] unless entity @s[tag=ec.companion_crate] unless entity @s[tag=ec.artifact_crate] run data remove block ~ ~ ~ lock

# Decrement animation counter
scoreboard players remove @s ec.crate_plot 1
