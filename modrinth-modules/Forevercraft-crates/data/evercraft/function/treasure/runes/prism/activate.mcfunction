tag @s add ec.rune_activated

execute as @e[type=#evercraft:treasure/projectiles,distance=..50] run function evercraft:treasure/runes/prism/reverse

playsound minecraft:entity.evoker.cast_spell master @a[distance=..50] ~ ~ ~ 1 2 1


function evercraft:treasure/runes/prism/particles

advancement revoke @s only evercraft:treasure/runes/prism_glyph