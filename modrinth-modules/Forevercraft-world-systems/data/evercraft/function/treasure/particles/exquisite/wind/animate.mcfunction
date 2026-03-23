function evercraft:treasure/particles/exquisite/wind/l1/l1_0

execute if score @s ec.plot matches 2 run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.01 20 force
execute if score @s ec.plot matches 0 run function evercraft:treasure/particles/exquisite/wind/cube/f0
execute if score @s ec.plot matches 1 run function evercraft:treasure/particles/exquisite/wind/cube/f1
execute if score @s ec.plot matches 2 run function evercraft:treasure/particles/exquisite/wind/cube/f2
execute if score @s ec.plot matches 3 run function evercraft:treasure/particles/exquisite/wind/cube/f3
execute if score @s ec.plot matches 4 run function evercraft:treasure/particles/exquisite/wind/cube/f4
execute if score @s ec.plot matches 5 run function evercraft:treasure/particles/exquisite/wind/cube/f5
execute if score @s ec.plot matches 6 run function evercraft:treasure/particles/exquisite/wind/cube/f6
execute if score @s ec.plot matches 7 run function evercraft:treasure/particles/exquisite/wind/cube/f7
execute if score @s ec.plot matches 8 run function evercraft:treasure/particles/exquisite/wind/cube/f8
execute if score @s ec.plot matches 9 run function evercraft:treasure/particles/exquisite/wind/cube/f9
execute if score @s ec.plot matches 10 run function evercraft:treasure/particles/exquisite/wind/cube/f10
execute if score @s ec.plot matches 11 run function evercraft:treasure/particles/exquisite/wind/cube/f11
execute if score @s ec.plot matches 12 run function evercraft:treasure/particles/exquisite/wind/cube/f12
execute if score @s ec.plot matches 13 run function evercraft:treasure/particles/exquisite/wind/cube/f13
execute if score @s ec.plot matches 14 run function evercraft:treasure/particles/exquisite/wind/cube/f14
execute if score @s ec.plot matches 15 run function evercraft:treasure/particles/exquisite/wind/cube/f15
execute if score @s ec.plot matches 16 run function evercraft:treasure/particles/exquisite/wind/cube/f16
execute if score @s ec.plot matches 17 run function evercraft:treasure/particles/exquisite/wind/cube/f17
execute if score @s ec.plot matches 18 run function evercraft:treasure/particles/exquisite/wind/cube/f18

execute if score @s ec.plot matches 29 run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 1 force
execute if score @s ec.plot matches 15 run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 1 force
execute if score @s ec.plot matches 1 run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 1 force
execute if score @s ec.plot matches 2 run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.01 20 force
execute if score @s ec.plot matches 29 run playsound minecraft:entity.ender_dragon.flap master @a[distance=..50] ~ ~ ~ 1.2 1.95 1
execute if score @s ec.plot matches 29 run playsound minecraft:entity.firework_rocket.launch master @a[distance=..50] ~ ~ ~ 2 1.4 1
execute if score @s ec.plot matches 27 run playsound minecraft:entity.ender_dragon.flap master @a[distance=..50] ~ ~ ~ 1.2 1.90 1
execute if score @s ec.plot matches 25 run playsound minecraft:entity.ender_dragon.flap master @a[distance=..50] ~ ~ ~ 1.2 1.85 1
execute if score @s ec.plot matches 23 run playsound minecraft:entity.ender_dragon.flap master @a[distance=..50] ~ ~ ~ 1.2 1.80 1
execute if score @s ec.plot matches 21 run playsound minecraft:entity.ender_dragon.flap master @a[distance=..50] ~ ~ ~ 1.2 1.75 1
execute if score @s ec.plot matches 21 run playsound minecraft:entity.firework_rocket.launch master @a[distance=..50] ~ ~ ~ 2 1 1
execute if score @s ec.plot matches 19 run playsound minecraft:entity.ender_dragon.flap master @a[distance=..50] ~ ~ ~ 1.2 1.70 1
execute if score @s ec.plot matches 17 run playsound minecraft:entity.ender_dragon.flap master @a[distance=..50] ~ ~ ~ 1.2 1.65 1
execute if score @s ec.plot matches 15 run playsound minecraft:entity.ender_dragon.flap master @a[distance=..50] ~ ~ ~ 1.2 1.60 1
execute if score @s ec.plot matches 13 run playsound minecraft:entity.firework_rocket.launch master @a[distance=..50] ~ ~ ~ 2 1 1
execute if score @s ec.plot matches 13 run playsound minecraft:entity.ender_dragon.flap master @a[distance=..50] ~ ~ ~ 1.2 1.55 1
execute if score @s ec.plot matches 11 run playsound minecraft:entity.ender_dragon.flap master @a[distance=..50] ~ ~ ~ 1.2 1.50 1
execute if score @s ec.plot matches 9 run playsound minecraft:entity.ender_dragon.flap master @a[distance=..50] ~ ~ ~ 1.2 1.45 1
execute if score @s ec.plot matches 7 run playsound minecraft:entity.ender_dragon.flap master @a[distance=..50] ~ ~ ~ 1.2 1.40 1
execute if score @s ec.plot matches 7 run playsound minecraft:entity.firework_rocket.launch master @a[distance=..50] ~ ~ ~ 2 0.6 1

execute if score @s ec.plot matches 1 run function evercraft:treasure/treasure/biomes/wind/exquisite with entity @s equipment.feet.components."minecraft:custom_data"

scoreboard players remove @s ec.plot 1



