# Chrono Shard — cancel (close GUI, keep shard)
# @s = interaction entity — route back to owner player via ec.cs_owner

scoreboard players operation #cs_owner ec.temp = @s ec.cs_owner
execute as @a[scores={ec.cs_active=1}] if score @s ec.cs_owner = #cs_owner ec.temp at @s run function evercraft:chrono_shard/gui/close
execute as @a[scores={ec.cs_active=1}] if score @s ec.cs_owner = #cs_owner ec.temp run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 0.8
