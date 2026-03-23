# Mob Crate Finish — Uncommon
# Run as animation armor_stand, at the barrel position

data remove block ~ ~ ~ lock
data merge block ~ ~ ~ {CustomName:{text:"Uncommon Mob Crate",color:"blue",italic:false}}
particle minecraft:firework ~ ~0.5 ~ 0.5 0.5 0.5 0 50 force
particle minecraft:happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0 15 force
playsound minecraft:entity.firework_rocket.blast ambient @a[distance=..16] ~ ~ ~

# Anecdote: Beastkeeper's (once per player)
execute as @p[distance=..16] unless score @s ec.anec_beast matches 1 run function evercraft:anecdotes/give_beastkeepers
