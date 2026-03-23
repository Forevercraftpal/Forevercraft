tag @s add ec.rune_activated

playsound minecraft:entity.horse.angry master @a[distance=..20] ~ ~ ~ 0.2 2 1

execute as @e[type=#evercraft:treasure/ridable,distance=..10] run function evercraft:treasure/runes/hearth/as

advancement revoke @s only evercraft:treasure/runes/hearth_glyph

function evercraft:treasure/runes/hearth/particles