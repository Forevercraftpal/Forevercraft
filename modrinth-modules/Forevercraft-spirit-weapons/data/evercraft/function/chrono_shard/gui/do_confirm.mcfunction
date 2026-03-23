# Chrono Shard — execute the reset
# @s = interaction entity (hit_yes) — route back to owner player via ec.cs_owner

data remove entity @s interaction
scoreboard players operation #cs_owner ec.temp = @s ec.cs_owner
execute as @a[scores={ec.cs_active=1}] if score @s ec.cs_owner = #cs_owner ec.temp at @s run function evercraft:chrono_shard/gui/confirm_reset
