# Chrono Shard — go back from confirmation to selection
# @s = interaction entity (hit_no) — route back to owner player via ec.cs_owner

data remove entity @s interaction
scoreboard players operation #cs_owner ec.temp = @s ec.cs_owner

# Reset state on the owner player
execute as @a[scores={ec.cs_active=1}] if score @s ec.cs_owner = #cs_owner ec.temp run scoreboard players set @s ec.cs_confirm 0
execute as @a[scores={ec.cs_active=1}] if score @s ec.cs_owner = #cs_owner ec.temp run scoreboard players set @s ec.cs_select 0

# Kill this player's GUI entities and re-spawn selection (need at @s for position + distance kill)
execute as @a[scores={ec.cs_active=1}] if score @s ec.cs_owner = #cs_owner ec.temp at @s run kill @e[tag=ec.cs_gui,distance=..5]
execute as @a[scores={ec.cs_active=1}] if score @s ec.cs_owner = #cs_owner ec.temp at @s rotated ~ 0 run function evercraft:chrono_shard/gui/spawn_buttons
execute as @a[scores={ec.cs_active=1}] if score @s ec.cs_owner = #cs_owner ec.temp run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
