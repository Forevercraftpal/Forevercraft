# Chrono Shard — select Class Affinity
# @s = interaction entity — route to owner via ec.cs_owner
data remove entity @s interaction
scoreboard players operation #cs_owner ec.temp = @s ec.cs_owner
execute as @a[scores={ec.cs_active=1}] if score @s ec.cs_owner = #cs_owner ec.temp run scoreboard players set @s ec.cs_select 1
execute as @a[scores={ec.cs_active=1}] if score @s ec.cs_owner = #cs_owner ec.temp at @s rotated ~ 0 run function evercraft:chrono_shard/gui/show_confirm
execute as @a[scores={ec.cs_active=1}] if score @s ec.cs_owner = #cs_owner ec.temp run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
