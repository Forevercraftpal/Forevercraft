execute if entity @s[tag=ec.big] run function evercraft:treasure/mechanics/big/over

playsound minecraft:entity.mooshroom.convert player @s ~ ~ ~ 0.1 2

tag @s add ec.small
attribute @s scale modifier add ec.small -0.81 add_multiplied_total
attribute @s movement_speed modifier add ec.small -0.33 add_multiplied_total
attribute @s gravity modifier add ec.small -0.5 add_multiplied_total
attribute @s jump_strength modifier add ec.small 0.15 add_multiplied_total
attribute @s fall_damage_multiplier modifier add ec.small -1 add_value
attribute @s block_interaction_range modifier add ec.small -2.5 add_value
attribute @s entity_interaction_range modifier add ec.small -2.5 add_value

execute store result storage evercraft:treasure/small duration int 0.05 run data get entity @s active_effects[{id:"minecraft:unluck"}]."duration"

effect clear @s unluck

function evercraft:treasure/mechanics/small/apply_time with storage evercraft:treasure/small

advancement revoke @s only evercraft:treasure/mechanics/small/timer
advancement revoke @s only evercraft:treasure/mechanics/small/apply