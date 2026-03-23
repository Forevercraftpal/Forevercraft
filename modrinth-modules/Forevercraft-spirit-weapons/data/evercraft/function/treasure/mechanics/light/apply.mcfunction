playsound minecraft:entity.breeze.deflect player @s ~ ~ ~ 1 0

tag @s add ec.light
attribute @s gravity modifier add ec.light -0.85 add_multiplied_total
attribute @s safe_fall_distance modifier add ec.light 50 add_value

execute store result storage evercraft:treasure/light duration int 0.05 run data get entity @s active_effects[{id:"minecraft:unluck"}]."duration"

effect clear @s unluck
function evercraft:treasure/mechanics/light/apply_time with storage evercraft:treasure/light

advancement revoke @s only evercraft:treasure/mechanics/light/timer
advancement revoke @s only evercraft:treasure/mechanics/light/apply