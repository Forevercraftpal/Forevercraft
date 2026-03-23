# Chrono Shard — close GUI and clear state
# @s = player, at @s (needs position context for distance-scoped kill)

# Kill only THIS player's GUI entities (distance-scoped)
kill @e[tag=ec.cs_gui,distance=..5]

# Clear state
scoreboard players set @s ec.cs_active 0
scoreboard players set @s ec.cs_select 0
scoreboard players set @s ec.cs_confirm 0
scoreboard players set @s ec.cs_owner 0
