function evercraft:treasure/particles/exquisite/desert/l1/l1_0

execute if score @s ec.plot matches 2 run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.01 20 force
execute if score @s ec.plot matches 0 run function evercraft:treasure/particles/exquisite/desert/cube/f0
execute if score @s ec.plot matches 1 run function evercraft:treasure/particles/exquisite/desert/cube/f1
execute if score @s ec.plot matches 2 run function evercraft:treasure/particles/exquisite/desert/cube/f2
execute if score @s ec.plot matches 3 run function evercraft:treasure/particles/exquisite/desert/cube/f3
execute if score @s ec.plot matches 4 run function evercraft:treasure/particles/exquisite/desert/cube/f4
execute if score @s ec.plot matches 5 run function evercraft:treasure/particles/exquisite/desert/cube/f5
execute if score @s ec.plot matches 6 run function evercraft:treasure/particles/exquisite/desert/cube/f6
execute if score @s ec.plot matches 7 run function evercraft:treasure/particles/exquisite/desert/cube/f7
execute if score @s ec.plot matches 8 run function evercraft:treasure/particles/exquisite/desert/cube/f8
execute if score @s ec.plot matches 9 run function evercraft:treasure/particles/exquisite/desert/cube/f9
execute if score @s ec.plot matches 10 run function evercraft:treasure/particles/exquisite/desert/cube/f10
execute if score @s ec.plot matches 11 run function evercraft:treasure/particles/exquisite/desert/cube/f11
execute if score @s ec.plot matches 12 run function evercraft:treasure/particles/exquisite/desert/cube/f12
execute if score @s ec.plot matches 13 run function evercraft:treasure/particles/exquisite/desert/cube/f13
execute if score @s ec.plot matches 14 run function evercraft:treasure/particles/exquisite/desert/cube/f14
execute if score @s ec.plot matches 15 run function evercraft:treasure/particles/exquisite/desert/cube/f15
execute if score @s ec.plot matches 16 run function evercraft:treasure/particles/exquisite/desert/cube/f16
execute if score @s ec.plot matches 17 run function evercraft:treasure/particles/exquisite/desert/cube/f17
execute if score @s ec.plot matches 18 run function evercraft:treasure/particles/exquisite/desert/cube/f18

execute if score @s ec.plot matches 2 run particle minecraft:lava ~ ~ ~ 0 0 0 1.2 100 force
execute if score @s ec.plot matches 29 run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 1 force
execute if score @s ec.plot matches 15 run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 1 force
execute if score @s ec.plot matches 1 run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 1 force
execute if score @s ec.plot matches 29 run playsound minecraft:item.trident.return master @a[distance=..50] ~ ~ ~ 1.2 0.5 1
execute if score @s ec.plot matches 26 run playsound minecraft:item.trident.return master @a[distance=..50] ~ ~ ~ 1.2 0.5 1
execute if score @s ec.plot matches 23 run playsound minecraft:item.trident.return master @a[distance=..50] ~ ~ ~ 1.2 0.5 1
execute if score @s ec.plot matches 20 run playsound minecraft:item.trident.return master @a[distance=..50] ~ ~ ~ 1.2 0.5 1
execute if score @s ec.plot matches 17 run playsound minecraft:item.trident.return master @a[distance=..50] ~ ~ ~ 1.2 0.5 1
execute if score @s ec.plot matches 14 run playsound minecraft:item.trident.return master @a[distance=..50] ~ ~ ~ 1.2 0.5 1
execute if score @s ec.plot matches 14 run playsound minecraft:block.fire.extinguish master @a[distance=..50] ~ ~ ~ 1.2 0.1 1

execute if score @s ec.plot matches 1 run function evercraft:treasure/treasure/biomes/desert/mythical with entity @s equipment.feet.components."minecraft:custom_data"

scoreboard players remove @s ec.plot 1



