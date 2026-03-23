tag @s add ec.rune_activated

tag @s add ec.absorb_steal

playsound minecraft:entity.piglin.jealous master @a[distance=..20] ~ ~ ~ 1 1.2 1

particle block{block_state:"minecraft:gold_block"} ~ ~ ~ 0.2 0.200 0.2 0.1 200 force @a

function evercraft:treasure/runes/gilded/particles

advancement revoke @s only evercraft:treasure/runes/gilded_glyph