tag @s add ec.rune_activated

scoreboard players set @s ec.obsidian_rune 400

attribute @s armor modifier add ec.obsidian_rune 0.2 add_multiplied_total
attribute @s armor_toughness modifier add ec.obsidian_rune 0.2 add_multiplied_total

playsound minecraft:block.anvil.destroy master @a[distance=..20] ~ ~ ~ 0.2 0.2 1

particle minecraft:large_smoke ~ ~ ~ 0.2 0.200 0.2 0.1 50 force @a

function evercraft:treasure/runes/obsidian/particles

advancement revoke @s only evercraft:treasure/runes/obsidian_glyph