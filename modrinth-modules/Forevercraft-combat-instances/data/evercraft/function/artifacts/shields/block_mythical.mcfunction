# Shield Block — Mythical: Titan's Resolve
# Massive defensive surge + empowered counter + party aura
effect give @s absorption 5 2 false
effect give @s strength 5 0 false
execute at @s run particle end_rod ~ ~1 ~ 0.5 0.8 0.5 0.05 15
playsound minecraft:item.shield.block master @s ~ ~ ~ 1.0 1.0
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.3 1.8

# Party aura — nearby allies get Absorption I
execute at @s as @a[distance=0.1..8,tag=ec.in_party] run effect give @s absorption 3 0 false
