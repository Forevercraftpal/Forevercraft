tag @s add ec.rune_activated

scoreboard players set @s ec.assa_rune 200

attribute @s attack_damage modifier add ec.quick_rune 0.2 add_multiplied_total
attribute @s movement_speed modifier add ec.quick_rune 0.1 add_multiplied_total

playsound minecraft:entity.husk.death master @a[distance=..20] ~ ~ ~ 1 0.6 1

particle minecraft:smoke ~ ~ ~ 0.2 0.200 0.2 0.1 200 force @a

function evercraft:treasure/runes/quick/particles

advancement revoke @s only evercraft:treasure/runes/quick_glyph