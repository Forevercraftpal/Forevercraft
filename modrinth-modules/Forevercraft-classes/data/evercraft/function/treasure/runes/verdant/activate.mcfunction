tag @s add ec.rune_activated

playsound minecraft:entity.player.levelup master @a[distance=..20] ~ ~ ~ 0.2 2 1

execute at @s run particle heart ~ ~2 ~ 0 0 0 0 1 force @a

effect give @s saturation 1 3 true
effect give @s regeneration 1 2 true

effect clear @s minecraft:poison
effect clear @s minecraft:wither
effect clear @s minecraft:weakness
effect clear @s minecraft:slowness
effect clear @s minecraft:blindness
effect clear @s minecraft:mining_fatigue
effect clear @s minecraft:nausea
effect clear @s minecraft:poison
effect clear @s minecraft:unluck
effect clear @s minecraft:darkness

advancement revoke @s only evercraft:treasure/runes/verdant_glyph

function evercraft:treasure/runes/verdant/particles