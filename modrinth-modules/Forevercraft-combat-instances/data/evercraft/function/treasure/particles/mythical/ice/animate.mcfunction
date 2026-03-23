function evercraft:treasure/particles/exquisite/ice/l1/l1_0
execute if score @s ec.plot matches 1 run function evercraft:treasure/particles/exquisite/ice/frames/f0

execute if score @s ec.plot matches 2 run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.01 20 force
execute if score @s ec.plot matches 0 run function evercraft:treasure/particles/exquisite/ice/cube/f0
execute if score @s ec.plot matches 1 run function evercraft:treasure/particles/exquisite/ice/cube/f1
execute if score @s ec.plot matches 2 run function evercraft:treasure/particles/exquisite/ice/cube/f2
execute if score @s ec.plot matches 3 run function evercraft:treasure/particles/exquisite/ice/cube/f3
execute if score @s ec.plot matches 4 run function evercraft:treasure/particles/exquisite/ice/cube/f4
execute if score @s ec.plot matches 5 run function evercraft:treasure/particles/exquisite/ice/cube/f5
execute if score @s ec.plot matches 6 run function evercraft:treasure/particles/exquisite/ice/cube/f6
execute if score @s ec.plot matches 7 run function evercraft:treasure/particles/exquisite/ice/cube/f7
execute if score @s ec.plot matches 8 run function evercraft:treasure/particles/exquisite/ice/cube/f8
execute if score @s ec.plot matches 9 run function evercraft:treasure/particles/exquisite/ice/cube/f9
execute if score @s ec.plot matches 10 run function evercraft:treasure/particles/exquisite/ice/cube/f10
execute if score @s ec.plot matches 11 run function evercraft:treasure/particles/exquisite/ice/cube/f11
execute if score @s ec.plot matches 12 run function evercraft:treasure/particles/exquisite/ice/cube/f12
execute if score @s ec.plot matches 13 run function evercraft:treasure/particles/exquisite/ice/cube/f13
execute if score @s ec.plot matches 14 run function evercraft:treasure/particles/exquisite/ice/cube/f14
execute if score @s ec.plot matches 15 run function evercraft:treasure/particles/exquisite/ice/cube/f15
execute if score @s ec.plot matches 16 run function evercraft:treasure/particles/exquisite/ice/cube/f16
execute if score @s ec.plot matches 17 run function evercraft:treasure/particles/exquisite/ice/cube/f17
execute if score @s ec.plot matches 18 run function evercraft:treasure/particles/exquisite/ice/cube/f18

execute if score @s ec.plot matches 28 run playsound minecraft:block.note_block.bell master @a[distance=..50] ~ ~ ~ 1.4 0.2 0.2
execute if score @s ec.plot matches 26 run playsound minecraft:block.note_block.bell master @a[distance=..50] ~ ~ ~ 0.2 0.3 0.4
execute if score @s ec.plot matches 24 run playsound minecraft:block.note_block.bell master @a[distance=..50] ~ ~ ~ 0.3 0.4 0.6
execute if score @s ec.plot matches 22 run playsound minecraft:block.note_block.bell master @a[distance=..50] ~ ~ ~ 0.4 0.5 0.8
execute if score @s ec.plot matches 20 run playsound minecraft:block.note_block.bell master @a[distance=..50] ~ ~ ~ 0.5 0.6 1
execute if score @s ec.plot matches 18 run playsound minecraft:block.note_block.bell master @a[distance=..50] ~ ~ ~ 0.6 0.7 1
execute if score @s ec.plot matches 16 run playsound minecraft:block.note_block.bell master @a[distance=..50] ~ ~ ~ 0.7 0.8 1
execute if score @s ec.plot matches 14 run playsound minecraft:block.note_block.bell master @a[distance=..50] ~ ~ ~ 0.8 0.9 0.2
execute if score @s ec.plot matches 12 run playsound minecraft:block.note_block.bell master @a[distance=..50] ~ ~ ~ 0.9 1 0.4
execute if score @s ec.plot matches 10 run playsound minecraft:block.note_block.bell master @a[distance=..50] ~ ~ ~ 1 1.1 0.6
execute if score @s ec.plot matches 8 run playsound minecraft:block.note_block.bell master @a[distance=..50] ~ ~ ~ 1.1 1.2 0.8
execute if score @s ec.plot matches 6 run playsound minecraft:block.note_block.bell master @a[distance=..50] ~ ~ ~ 1.2 1.3 1
execute if score @s ec.plot matches 4 run playsound minecraft:block.note_block.bell master @a[distance=..50] ~ ~ ~ 1.3 1.4 1
execute if score @s ec.plot matches 2 run playsound minecraft:block.note_block.bell master @a[distance=..50] ~ ~ ~ 1.4 1.5 1

execute if score @s ec.plot matches 29 run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 1 force
execute if score @s ec.plot matches 15 run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 1 force
execute if score @s ec.plot matches 1 run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 1 force
execute if score @s ec.plot matches 29 run playsound minecraft:block.beacon.activate master @a[distance=..50] ~ ~ ~ 1.2 1.75 1

execute if score @s ec.plot matches 1 run function evercraft:treasure/treasure/biomes/ice/mythical with entity @s equipment.feet.components."minecraft:custom_data"

scoreboard players remove @s ec.plot 1



