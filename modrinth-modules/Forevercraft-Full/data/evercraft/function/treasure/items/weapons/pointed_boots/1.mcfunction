effect give @e[type=#evercraft:treasure/undead,distance=0.1..4] instant_health 1 2 true
effect give @e[type=#evercraft:treasure/non_undead,distance=0.1..4] instant_damage 1 2 true
particle minecraft:campfire_signal_smoke ~ ~0.2 ~ 1 0.2 1 0 10 force

playsound minecraft:block.pointed_dripstone.land master @a[distance=..10] ~ ~ ~ 10 1.2 1

item replace entity @s armor.feet with air

advancement revoke @s only evercraft:treasure/items/weapons/pointed_boots/1