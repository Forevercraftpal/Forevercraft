tag @s add ec.rune_activated

scoreboard players set @s ec.zephyr_rune 160

attribute @s knockback_resistance modifier add ec.zephyr_rune 1000 add_value
attribute @s attack_damage modifier add ec.zephyr_rune 0.1 add_multiplied_total

playsound minecraft:entity.enderman.hurt master @a[distance=..20] ~ ~ ~ 1 0.6 1

particle minecraft:end_rod ~ ~ ~ 0.2 0.200 0.2 0.1 50 force @a

function evercraft:treasure/runes/zephyr/particles

advancement revoke @s only evercraft:treasure/runes/zephyr_glyph