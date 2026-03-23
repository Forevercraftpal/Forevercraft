# Achievement Crate Finish — Mythical
data remove block ~ ~ ~ lock
data merge block ~ ~ ~ {CustomName:{text:"Mythical Achievement Crate",color:"gold",italic:false}}
particle minecraft:firework ~ ~0.5 ~ 0.5 0.5 0.5 0 100 force
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.15 30 force
playsound minecraft:entity.firework_rocket.blast ambient @a[distance=..32] ~ ~ ~
playsound minecraft:ui.toast.challenge_complete ambient @a[distance=..32] ~ ~ ~ 1 0.8
playsound minecraft:block.end_portal.spawn ambient @a[distance=..32] ~ ~ ~ 0.5 1.2

# Campfire Stories — record mythical find
data modify storage evercraft:campfire temp.artifact set value "a Mythical Achievement Crate"
execute as @p[distance=..32] run function evercraft:campfire_stories/record/mythical_find

# Companion memory: Treasure Found + Mythical Discovery
execute as @p[distance=..32,tag=companion.activepet] run function evercraft:companions/memories/on_mythical_crate
execute as @p[distance=..32,tag=companion.activepet] run function evercraft:companions/memories/on_mythical_artifact

# Dream Echo — permanent wisp at this mythical find location
function evercraft:dream_echoes/spawn

# World Milestones — mythical artifact found
execute as @p[distance=..32] run function evercraft:milestones/increment/mythical_found

# Anecdotes: Wanderer's first, then Scholar's on next crate (one per crate, once per player)
execute store result score #had_wanderer cf.temp as @p[distance=..16] run scoreboard players get @s ec.anec_wanderer
execute as @p[distance=..16] unless score @s ec.anec_wanderer matches 1 run function evercraft:anecdotes/give_wanderers
execute if score #had_wanderer cf.temp matches 1 as @p[distance=..16] unless score @s ec.anec_scholar matches 1 run function evercraft:anecdotes/give_scholars

# Crate statistics tracking
scoreboard players add @p[distance=..16] ec.crate_ach 1
scoreboard players add @p[distance=..16] ach.crates_opened 1
