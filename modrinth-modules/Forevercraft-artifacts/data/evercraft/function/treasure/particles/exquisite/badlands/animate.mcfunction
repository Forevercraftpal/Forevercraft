function evercraft:treasure/particles/exquisite/badlands/l1/l1_0

execute if score @s ec.plot matches 2 run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.01 20 force
execute if score @s ec.plot matches 0 run function evercraft:treasure/particles/exquisite/badlands/cube/f0
execute if score @s ec.plot matches 1 run function evercraft:treasure/particles/exquisite/badlands/cube/f1
execute if score @s ec.plot matches 2 run function evercraft:treasure/particles/exquisite/badlands/cube/f2
execute if score @s ec.plot matches 3 run function evercraft:treasure/particles/exquisite/badlands/cube/f3
execute if score @s ec.plot matches 4 run function evercraft:treasure/particles/exquisite/badlands/cube/f4
execute if score @s ec.plot matches 5 run function evercraft:treasure/particles/exquisite/badlands/cube/f5
execute if score @s ec.plot matches 6 run function evercraft:treasure/particles/exquisite/badlands/cube/f6
execute if score @s ec.plot matches 7 run function evercraft:treasure/particles/exquisite/badlands/cube/f7
execute if score @s ec.plot matches 8 run function evercraft:treasure/particles/exquisite/badlands/cube/f8
execute if score @s ec.plot matches 9 run function evercraft:treasure/particles/exquisite/badlands/cube/f9
execute if score @s ec.plot matches 10 run function evercraft:treasure/particles/exquisite/badlands/cube/f10
execute if score @s ec.plot matches 11 run function evercraft:treasure/particles/exquisite/badlands/cube/f11
execute if score @s ec.plot matches 12 run function evercraft:treasure/particles/exquisite/badlands/cube/f12
execute if score @s ec.plot matches 13 run function evercraft:treasure/particles/exquisite/badlands/cube/f13
execute if score @s ec.plot matches 14 run function evercraft:treasure/particles/exquisite/badlands/cube/f14
execute if score @s ec.plot matches 15 run function evercraft:treasure/particles/exquisite/badlands/cube/f15
execute if score @s ec.plot matches 16 run function evercraft:treasure/particles/exquisite/badlands/cube/f16
execute if score @s ec.plot matches 17 run function evercraft:treasure/particles/exquisite/badlands/cube/f17
execute if score @s ec.plot matches 18 run function evercraft:treasure/particles/exquisite/badlands/cube/f18

execute if score @s ec.plot matches 29 run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 1 force
execute if score @s ec.plot matches 15 run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 1 force
execute if score @s ec.plot matches 1 run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 1 force
execute if score @s ec.plot matches 29 run playsound minecraft:entity.generic.explode master @a[distance=..50] ~ ~ ~ 1.4 1.75 1
execute if score @s ec.plot matches 27 run playsound minecraft:entity.dragon_fireball.explode master @a[distance=..50] ~ ~ ~ 1.1 0.75 1
execute if score @s ec.plot matches 24 run playsound minecraft:entity.dragon_fireball.explode master @a[distance=..50] ~ ~ ~ 1.3 1.25 1
execute if score @s ec.plot matches 23 run playsound minecraft:entity.generic.explode master @a[distance=..50] ~ ~ ~ 0.9 1.55 1
execute if score @s ec.plot matches 21 run playsound minecraft:entity.dragon_fireball.explode master @a[distance=..50] ~ ~ ~ 1.1 0.45 1
execute if score @s ec.plot matches 20 run playsound minecraft:entity.dragon_fireball.explode master @a[distance=..50] ~ ~ ~ 1.3 1.35 1
execute if score @s ec.plot matches 17 run playsound minecraft:entity.generic.explode master @a[distance=..50] ~ ~ ~ 1.1 1.05 1
execute if score @s ec.plot matches 15 run playsound minecraft:entity.dragon_fireball.explode master @a[distance=..50] ~ ~ ~ 0.7 1.45 1
execute if score @s ec.plot matches 11 run playsound minecraft:entity.dragon_fireball.explode master @a[distance=..50] ~ ~ ~ 1.6 1.08 1
execute if score @s ec.plot matches 8 run playsound minecraft:entity.generic.explode master @a[distance=..50] ~ ~ ~ 1.2 0.1 1

execute if score @s ec.plot matches 1 run function evercraft:treasure/treasure/biomes/badlands/exquisite with entity @s equipment.feet.components."minecraft:custom_data"

scoreboard players remove @s ec.plot 1

