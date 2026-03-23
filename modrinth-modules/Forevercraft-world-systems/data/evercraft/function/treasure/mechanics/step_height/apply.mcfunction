tag @s add ec.step_height
attribute @s step_height modifier add ec.step 1 add_value

execute store result storage evercraft:treasure/step_height duration int 0.05 run data get entity @s active_effects[{id:"minecraft:unluck"}]."duration"

playsound minecraft:entity.goat.screaming.milk player @s ~ ~ ~ 1 0

effect clear @s unluck

function evercraft:treasure/mechanics/step_height/apply_time with storage evercraft:treasure/step_height

advancement revoke @s only evercraft:treasure/mechanics/step_height/timer
advancement revoke @s only evercraft:treasure/mechanics/step_height/apply