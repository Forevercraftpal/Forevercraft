# Structure Crate Finish — All Tiers
# Run as animation armor_stand, at the barrel position
# Unlock barrel and play tier-appropriate effects based on ec.crate_tier score

# Unlock barrel and set tier-appropriate name
data remove block ~ ~ ~ lock
execute if score @s ec.crate_tier matches 1 run data merge block ~ ~ ~ {CustomName:{text:"Common Structure Crate",color:"white",italic:false}}
execute if score @s ec.crate_tier matches 2 run data merge block ~ ~ ~ {CustomName:{text:"Uncommon Structure Crate",color:"blue",italic:false}}
execute if score @s ec.crate_tier matches 3 run data merge block ~ ~ ~ {CustomName:{text:"Rare Structure Crate",color:"aqua",italic:false}}
execute if score @s ec.crate_tier matches 4 run data merge block ~ ~ ~ {CustomName:{text:"Ornate Structure Crate",color:"dark_purple",italic:false}}
execute if score @s ec.crate_tier matches 5 run data merge block ~ ~ ~ {CustomName:{text:"Exquisite Structure Crate",color:"light_purple",italic:false}}
execute if score @s ec.crate_tier matches 6 run data merge block ~ ~ ~ {CustomName:{text:"Mythical Structure Crate",color:"gold",italic:false}}

# Tier-specific effects
# Common (tier 1)
execute if score @s ec.crate_tier matches 1 run particle minecraft:firework ~ ~0.5 ~ 0.5 0.5 0.5 0 50 force
execute if score @s ec.crate_tier matches 1 run playsound minecraft:entity.firework_rocket.blast ambient @a[distance=..16] ~ ~ ~
execute if score @s ec.crate_tier matches 1 run tellraw @p[distance=..16] [{text:"[Forevercraft] ",color:"gold"},{text:"A Common Structure Crate has appeared.",color:"white"}]

# Uncommon (tier 2)
execute if score @s ec.crate_tier matches 2 run particle minecraft:firework ~ ~0.5 ~ 0.5 0.5 0.5 0 50 force
execute if score @s ec.crate_tier matches 2 run particle minecraft:happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0 15 force
execute if score @s ec.crate_tier matches 2 run playsound minecraft:entity.firework_rocket.blast ambient @a[distance=..16] ~ ~ ~
execute if score @s ec.crate_tier matches 2 run tellraw @p[distance=..20] [{text:"[Forevercraft] ",color:"gold"},{text:"An Uncommon Structure Crate has appeared!",color:"blue"}]

# Rare (tier 3)
execute if score @s ec.crate_tier matches 3 run particle minecraft:firework ~ ~0.5 ~ 0.5 0.5 0.5 0 50 force
execute if score @s ec.crate_tier matches 3 run particle minecraft:soul_fire_flame ~ ~0.5 ~ 0.3 0.3 0.3 0.02 20 force
execute if score @s ec.crate_tier matches 3 run playsound minecraft:entity.firework_rocket.blast ambient @a[distance=..20] ~ ~ ~
execute if score @s ec.crate_tier matches 3 run playsound minecraft:entity.player.levelup master @a[distance=..20] ~ ~ ~ 0.5 1.5
execute if score @s ec.crate_tier matches 3 run tellraw @a[distance=..32] [{text:"[Forevercraft] ",color:"gold"},{text:"A Rare Structure Crate has appeared!",color:"aqua",italic:true}]

# Ornate (tier 4)
execute if score @s ec.crate_tier matches 4 run particle minecraft:firework ~ ~0.5 ~ 0.5 0.5 0.5 0 50 force
execute if score @s ec.crate_tier matches 4 run particle minecraft:flame ~ ~0.5 ~ 0.3 0.3 0.3 0.01 30 force
execute if score @s ec.crate_tier matches 4 run playsound minecraft:entity.firework_rocket.blast ambient @a[distance=..32] ~ ~ ~
execute if score @s ec.crate_tier matches 4 run playsound minecraft:entity.player.levelup master @a[distance=..32] ~ ~ ~ 0.7 1.2
execute if score @s ec.crate_tier matches 4 run tellraw @a[distance=..64] [{text:"[Forevercraft] ",color:"gold"},{text:"An Ornate Structure Crate has appeared!",color:"dark_purple",italic:true}]

# Exquisite (tier 5) — purple #8c0691
execute if score @s ec.crate_tier matches 5 run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~0.5 ~ 0.5 0.5 0.5 0 50 force
execute if score @s ec.crate_tier matches 5 run particle minecraft:totem_of_undying ~ ~0.5 ~ 0.5 0.5 0.5 0.3 40 force
execute if score @s ec.crate_tier matches 5 run particle minecraft:enchant ~ ~0.5 ~ 0.5 0.5 0.5 1 50 force
execute if score @s ec.crate_tier matches 5 run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 1 1.2 1
execute if score @s ec.crate_tier matches 5 run playsound minecraft:ui.toast.challenge_complete master @a[distance=..48] ~ ~ ~ 0.7 1.2
execute if score @s ec.crate_tier matches 5 run title @p[distance=..32] subtitle {text:"Exquisite Structure Crate!",color:"#8c0691",bold:true}
execute if score @s ec.crate_tier matches 5 run title @p[distance=..32] title {text:"⚡",color:"#8c0691",bold:true}
execute if score @s ec.crate_tier matches 5 run tellraw @a [{text:"[Forevercraft] ",color:"gold"},{selector:"@p[distance=..32]"},{text:" found an "},{text:"Exquisite Structure Crate",color:"#8c0691",bold:true},{text:"!"}]

# Mythical (tier 6) — gold
execute if score @s ec.crate_tier matches 6 run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~0.5 ~ 0.5 0.5 0.5 0 50 force
execute if score @s ec.crate_tier matches 6 run particle minecraft:totem_of_undying ~ ~0.5 ~ 0.6 0.6 0.6 0.5 60 force
execute if score @s ec.crate_tier matches 6 run particle minecraft:end_rod ~ ~0.5 ~ 0.5 0.5 0.5 0.1 30 force
execute if score @s ec.crate_tier matches 6 run particle minecraft:enchant ~ ~1 ~ 0.5 0.5 0.5 2 100 force
execute if score @s ec.crate_tier matches 6 run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 1 1.2 1
execute if score @s ec.crate_tier matches 6 run playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 0.5 1
execute if score @s ec.crate_tier matches 6 run playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 0.75 1
execute if score @s ec.crate_tier matches 6 run playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 1.0 1
execute if score @s ec.crate_tier matches 6 run playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 0.8
execute if score @s ec.crate_tier matches 6 run title @p[distance=..32] subtitle {text:"MYTHICAL Structure Crate!",color:"gold",bold:true}
execute if score @s ec.crate_tier matches 6 run title @p[distance=..32] title {text:"⚡",color:"gold",bold:true}
execute if score @s ec.crate_tier matches 6 run tellraw @a [{text:"[Forevercraft] ",color:"gold"},{selector:"@p[distance=..32]"},{text:" found a "},{text:"MYTHICAL Structure Crate",color:"gold",bold:true},{text:"!"}]

# Campfire Stories — record mythical find
execute if score @s ec.crate_tier matches 6 run data modify storage evercraft:campfire temp.artifact set value "a Mythical Structure Crate"
execute if score @s ec.crate_tier matches 6 as @p[distance=..32] run function evercraft:campfire_stories/record/mythical_find

# Companion memory: Treasure Found + Mythical Discovery (mythical structure crate)
execute if score @s ec.crate_tier matches 6 as @p[distance=..32,tag=companion.activepet] run function evercraft:companions/memories/on_mythical_crate
execute if score @s ec.crate_tier matches 6 as @p[distance=..32,tag=companion.activepet] run function evercraft:companions/memories/on_mythical_artifact

# Dream Echo — permanent wisp at mythical find location
execute if score @s ec.crate_tier matches 6 run function evercraft:dream_echoes/spawn

# World Milestones — mythical artifact found
execute if score @s ec.crate_tier matches 6 as @p[distance=..32] run function evercraft:milestones/increment/mythical_found

# Achievement tracking
scoreboard players add @p ach.crates_structure 1
scoreboard players add @p ach.crates_opened 1
execute if score @s ec.crate_tier matches 6 run scoreboard players operation @p ec.last_mythical_at = @p ach.crates_opened
scoreboard players add @p ach.structures_found 1
