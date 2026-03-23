# Guild Diplomacy — PvP kill during pillage
# @s = player who just died (ec.tomb_death=1, ec.gd_event_active=1)
# At @s position — find nearest enemy participant as the killer

# Find the killer: nearest participating player from the opposing guild within 16 blocks
# who is tagged ec.gd_pvp (in enemy territory and PvP-enabled)

# If victim is guild A, killer must be guild B
execute if score @s ec.guild_id = #gd_event_guild_a ec.var as @a[scores={ec.gd_event_active=1},tag=ec.gd_pvp,distance=..16,sort=nearest,limit=1] if score @s ec.guild_id = #gd_event_guild_b ec.var run function evercraft:guild/diplomacy/event/pvp/credit_kill

# If victim is guild B, killer must be guild A
execute if score @s ec.guild_id = #gd_event_guild_b ec.var as @a[scores={ec.gd_event_active=1},tag=ec.gd_pvp,distance=..16,sort=nearest,limit=1] if score @s ec.guild_id = #gd_event_guild_a ec.var run function evercraft:guild/diplomacy/event/pvp/credit_kill
