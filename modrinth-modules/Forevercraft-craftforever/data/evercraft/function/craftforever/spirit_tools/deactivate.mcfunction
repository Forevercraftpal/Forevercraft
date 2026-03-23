# Spirit Tools — Deactivate (player switched away from spirit tool)

# FIX #2: Kill any orphaned markers near this player
execute at @s run kill @e[type=marker,tag=ec.st_pick_target,distance=..16]
execute at @s run kill @e[type=marker,tag=ec.st_shov_target,distance=..16]
execute at @s run kill @e[type=marker,tag=ec.st_axe_target,distance=..16]

# FIX #7: Kill whirlpool if Tidecaller deactivated mid-mastery
execute at @s run kill @e[type=marker,tag=ec.st_whirlpool,distance=..32]
scoreboard players set @s ec.st_mastery_t 0

tag @s remove ec.st_held
scoreboard players set @s ec.st_tool 0
scoreboard players set @s ec.st_was_snk 0
scoreboard players set @s ec.st_is_snk 0
scoreboard players set @s ec.st_snk_timer 0
# Effects expire naturally (3s duration)
