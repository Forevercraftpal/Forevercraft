# Reaper — Heal entity to max HP (after attribute scaling)
# Run as the entity

execute store result score #rp_maxhp rp.temp run attribute @s max_health get 1
execute store result entity @s Health float 1 run scoreboard players get #rp_maxhp rp.temp
