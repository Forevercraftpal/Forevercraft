tag @s add ec.rune_activated

scoreboard players set @s ec.tide_rune 200

playsound minecraft:block.sponge.absorb master @a[distance=..20] ~ ~ ~ 0.75 0.75 1

particle block{block_state:"minecraft:sponge"} ~ ~ ~ 0.2 0.200 0.2 0.1 200 force @a

function evercraft:treasure/runes/tide/particles


advancement revoke @s only evercraft:treasure/runes/tide_glyph