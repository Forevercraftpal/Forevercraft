function evercraft:treasure/particles/exquisite/default/l1/l1_0

execute if score @s ec.plot matches 2 run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.01 20 force
execute if score @s ec.plot matches 0 run function evercraft:treasure/particles/exquisite/default/cube/f0
execute if score @s ec.plot matches 1 run function evercraft:treasure/particles/exquisite/default/cube/f1
execute if score @s ec.plot matches 2 run function evercraft:treasure/particles/exquisite/default/cube/f2
execute if score @s ec.plot matches 3 run function evercraft:treasure/particles/exquisite/default/cube/f3
execute if score @s ec.plot matches 4 run function evercraft:treasure/particles/exquisite/default/cube/f4
execute if score @s ec.plot matches 5 run function evercraft:treasure/particles/exquisite/default/cube/f5
execute if score @s ec.plot matches 6 run function evercraft:treasure/particles/exquisite/default/cube/f6
execute if score @s ec.plot matches 7 run function evercraft:treasure/particles/exquisite/default/cube/f7
execute if score @s ec.plot matches 8 run function evercraft:treasure/particles/exquisite/default/cube/f8
execute if score @s ec.plot matches 9 run function evercraft:treasure/particles/exquisite/default/cube/f9
execute if score @s ec.plot matches 10 run function evercraft:treasure/particles/exquisite/default/cube/f10
execute if score @s ec.plot matches 11 run function evercraft:treasure/particles/exquisite/default/cube/f11
execute if score @s ec.plot matches 12 run function evercraft:treasure/particles/exquisite/default/cube/f12
execute if score @s ec.plot matches 13 run function evercraft:treasure/particles/exquisite/default/cube/f13
execute if score @s ec.plot matches 14 run function evercraft:treasure/particles/exquisite/default/cube/f14
execute if score @s ec.plot matches 15 run function evercraft:treasure/particles/exquisite/default/cube/f15
execute if score @s ec.plot matches 16 run function evercraft:treasure/particles/exquisite/default/cube/f16
execute if score @s ec.plot matches 17 run function evercraft:treasure/particles/exquisite/default/cube/f17
execute if score @s ec.plot matches 18 run function evercraft:treasure/particles/exquisite/default/cube/f18

execute if score @s ec.plot matches 29 run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 1 force
execute if score @s ec.plot matches 15 run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 1 force
execute if score @s ec.plot matches 1 run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 1 force
execute if score @s ec.plot matches 29 run particle minecraft:enchant ~ ~0.6 ~ 0 0 0 1.2 200 force
execute if score @s ec.plot matches 29 run playsound minecraft:block.beacon.activate master @a[distance=..50] ~ ~ ~ 1.2 1.75 1

execute if score @s ec.plot matches 1 run function evercraft:treasure/treasure/biomes/default/mythical with entity @s equipment.feet.components."minecraft:custom_data"
scoreboard players remove @s ec.plot 1