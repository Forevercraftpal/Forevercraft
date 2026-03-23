# Harvest Crate Finish — Rare
# Run as animation armor_stand, at the barrel position

data remove block ~ ~ ~ lock
data merge block ~ ~ ~ {CustomName:{text:"Rare Harvest Crate",color:"aqua",italic:false}}
particle minecraft:firework ~ ~0.5 ~ 0.5 0.5 0.5 0 50 force
particle minecraft:soul_fire_flame ~ ~0.5 ~ 0.3 0.3 0.3 0.02 20 force
playsound minecraft:entity.firework_rocket.blast ambient @a[distance=..20] ~ ~ ~
playsound minecraft:entity.player.levelup master @a[distance=..20] ~ ~ ~ 0.5 1.5

# Achievement tracking
scoreboard players add @p ach.crates_harvest 1
scoreboard players add @p ach.crates_opened 1

# 0.1% chance to drop Harvester's Dreamy Seed (+1 permanent DR)
execute unless score @p ec.seed_count matches 1.. if predicate {"condition":"minecraft:random_chance","chance":0.01} run loot give @p loot evercraft:items/harvesters_dreamy_seed

# Anecdote: Elder's (once per player)
execute as @p[distance=..16] unless score @s ec.anec_elder matches 1 run function evercraft:anecdotes/give_elders
