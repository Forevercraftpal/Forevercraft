# Mob Crate Finish — Ornate
# Run as animation armor_stand, at the barrel position

data remove block ~ ~ ~ lock
data merge block ~ ~ ~ {CustomName:{text:"Ornate Mob Crate",color:"dark_purple",italic:false}}
particle minecraft:firework ~ ~0.5 ~ 0.5 0.5 0.5 0 50 force
particle minecraft:flame ~ ~0.5 ~ 0.3 0.3 0.3 0.01 30 force
playsound minecraft:entity.firework_rocket.blast ambient @a[distance=..32] ~ ~ ~
playsound minecraft:entity.player.levelup master @a[distance=..32] ~ ~ ~ 0.7 1.2
tellraw @a[distance=..64] [{text:"[Forevercraft] ",color:"gold"},{text:"An Ornate Mob Crate has appeared!",color:"dark_purple",italic:true}]

# Anecdote: Beastkeeper's (once per player)
execute as @p[distance=..16] unless score @s ec.anec_beast matches 1 run function evercraft:anecdotes/give_beastkeepers
