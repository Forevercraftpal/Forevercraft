# Trade Trial — Death override (intercepts tomb system)
# Run as: the ec.tt_player who died

# Totem pop visual (death intercepted)
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.5 100
playsound minecraft:item.totem.use master @s ~ ~ ~ 1 1

# Respawn at arena center (no tomb, no death penalty)
execute store result storage evercraft:trials arena_x int 1 run scoreboard players get @s ec.tt_arena_x
execute store result storage evercraft:trials arena_z int 1 run scoreboard players get @s ec.tt_arena_z
function evercraft:craftforever/trials/teleport_to_arena with storage evercraft:trials

# Small score penalty
scoreboard players remove @s ec.tt_score 5
execute if score @s ec.tt_score matches ..-1 run scoreboard players set @s ec.tt_score 0

# Feedback
tellraw @s [{"text":"You died! ","color":"red"},{"text":"-5 score penalty","color":"dark_red"}]
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 0.5 1.0
