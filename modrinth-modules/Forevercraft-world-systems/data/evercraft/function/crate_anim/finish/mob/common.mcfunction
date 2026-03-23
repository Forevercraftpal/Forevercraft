# Mob Crate Finish — Common
# Run as animation armor_stand, at the barrel position
# Unlock barrel and play final effects

data remove block ~ ~ ~ lock
data merge block ~ ~ ~ {CustomName:{text:"Common Mob Crate",color:"white",italic:false}}
particle minecraft:firework ~ ~0.5 ~ 0.5 0.5 0.5 0 50 force
playsound minecraft:entity.firework_rocket.blast ambient @a[distance=..16] ~ ~ ~

# Anecdote: Beastkeeper's (once per player)
execute as @p[distance=..16] unless score @s ec.anec_beast matches 1 run function evercraft:anecdotes/give_beastkeepers
