# Mob Crate Finish — Rare
# Run as animation armor_stand, at the barrel position

data remove block ~ ~ ~ lock
data merge block ~ ~ ~ {CustomName:{text:"Rare Mob Crate",color:"aqua",italic:false}}
particle minecraft:firework ~ ~0.5 ~ 0.5 0.5 0.5 0 50 force
particle minecraft:soul_fire_flame ~ ~0.5 ~ 0.3 0.3 0.3 0.02 20 force
playsound minecraft:entity.firework_rocket.blast ambient @a[distance=..20] ~ ~ ~
playsound minecraft:entity.player.levelup master @a[distance=..20] ~ ~ ~ 0.5 1.5

# Anecdote: Beastkeeper's (once per player)
execute as @p[distance=..16] unless score @s ec.anec_beast matches 1 run function evercraft:anecdotes/give_beastkeepers
