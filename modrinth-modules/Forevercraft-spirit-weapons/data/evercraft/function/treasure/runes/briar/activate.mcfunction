tag @s add ec.rune_activated

scoreboard players set @s ec.briar_rune 200

attribute @s movement_speed modifier add ec.briar_rune 0.4 add_multiplied_total
attribute @s attack_speed modifier add ec.briar_rune 0.2 add_multiplied_total

playsound minecraft:entity.panda.bite master @a[distance=..20] ~ ~ ~ 1 0.2 1

particle minecraft:sneeze ~ ~ ~ 0.2 0.200 0.2 0.1 50 force @a

advancement revoke @s only evercraft:treasure/runes/briar_glyph


function evercraft:treasure/runes/briar/particles