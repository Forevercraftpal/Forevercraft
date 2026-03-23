# Harvest Crate Finish — Exquisite
# Run as animation armor_stand, at the barrel position
# Exquisite = purple #8c0691

data remove block ~ ~ ~ lock
data merge block ~ ~ ~ {CustomName:{text:"Exquisite Harvest Crate",color:"light_purple",italic:false}}
particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~0.5 ~ 0.5 0.5 0.5 0 50 force
particle minecraft:totem_of_undying ~ ~0.5 ~ 0.5 0.5 0.5 0.3 40 force
particle minecraft:enchant ~ ~0.5 ~ 0.5 0.5 0.5 1 50 force
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 1 1.2 1
playsound minecraft:ui.toast.challenge_complete master @a[distance=..48] ~ ~ ~ 0.7 1.2

# Title for nearest player
title @p[distance=..32] subtitle {text:"Exquisite Harvest Crate!",color:"#8c0691",bold:true}
title @p[distance=..32] title {text:"⚡",color:"#8c0691",bold:true}

# Global announcement
tellraw @a [{text:"[Forevercraft] ",color:"gold"},{selector:"@p[distance=..32]"},{text:" opened an "},{text:"Exquisite Harvest Crate",color:"#8c0691",bold:true},{text:"!"}]

# Achievement tracking
scoreboard players add @p ach.crates_harvest 1
scoreboard players add @p ach.crates_opened 1

# 0.1% chance to drop Harvester's Dreamy Seed (+1 permanent DR)
execute unless score @p ec.seed_count matches 1.. if predicate {"condition":"minecraft:random_chance","chance":0.035} run loot give @p loot evercraft:items/harvesters_dreamy_seed

# Anecdote: Elder's (once per player)
execute as @p[distance=..16] unless score @s ec.anec_elder matches 1 run function evercraft:anecdotes/give_elders
