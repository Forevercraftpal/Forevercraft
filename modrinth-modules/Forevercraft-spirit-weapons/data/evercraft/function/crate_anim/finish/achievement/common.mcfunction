# Achievement Crate Finish — Common
data remove block ~ ~ ~ lock
data merge block ~ ~ ~ {CustomName:{text:"Common Achievement Crate",color:"white",italic:false}}
particle minecraft:firework ~ ~0.5 ~ 0.5 0.5 0.5 0 50 force
playsound minecraft:entity.firework_rocket.blast ambient @a[distance=..16] ~ ~ ~

# Anecdotes: Wanderer's first, then Scholar's on next crate (one per crate, once per player)
execute store result score #had_wanderer cf.temp as @p[distance=..16] run scoreboard players get @s ec.anec_wanderer
execute as @p[distance=..16] unless score @s ec.anec_wanderer matches 1 run function evercraft:anecdotes/give_wanderers
execute if score #had_wanderer cf.temp matches 1 as @p[distance=..16] unless score @s ec.anec_scholar matches 1 run function evercraft:anecdotes/give_scholars

# Crate statistics tracking
scoreboard players add @p[distance=..16] ec.crate_ach 1
scoreboard players add @p[distance=..16] ach.crates_opened 1
