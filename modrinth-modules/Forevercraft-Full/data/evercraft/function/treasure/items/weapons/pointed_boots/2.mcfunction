effect give @e[type=#evercraft:treasure/undead,distance=0.1..5.5] instant_health 1 3 true
effect give @e[type=#evercraft:treasure/non_undead,distance=0.1..5.5] instant_damage 1 3 true
particle minecraft:campfire_signal_smoke ~ ~0.2 ~ 2 0.2 2 0 30 force

playsound minecraft:block.pointed_dripstone.land master @a[distance=..10] ~ ~ ~ 10 0.7 1

item replace entity @s armor.feet with air

advancement revoke @s only evercraft:treasure/items/weapons/pointed_boots/2