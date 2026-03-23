playsound minecraft:entity.skeleton.converted_to_stray player @s ~ ~ ~ 0.5 0

tag @s add ec.reach
attribute @s block_interaction_range modifier add ec.reach 1 add_value
attribute @s entity_interaction_range modifier add ec.reach 1 add_value

execute store result storage evercraft:treasure/reach duration int 0.05 run data get entity @s active_effects[{id:"minecraft:unluck"}]."duration"

effect clear @s unluck
function evercraft:treasure/mechanics/reach/apply_time with storage evercraft:treasure/reach

advancement revoke @s only evercraft:treasure/mechanics/reach/timer
advancement revoke @s only evercraft:treasure/mechanics/reach/apply