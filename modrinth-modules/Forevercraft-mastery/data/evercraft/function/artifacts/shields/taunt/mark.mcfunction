# Taunt Mark — runs AS the mob that was hit, with player context available
# Tags mob as taunted, stores owner ID and expiry gametime

# Tag mob as taunted
tag @s add ec.taunted

# Copy taunting player's ID to the mob
scoreboard players operation @s ec.tk_owner = @p ec.tk_id

# Calculate expiry: current gametime + duration_ticks
execute store result score @s ec.tk_expire run time query gametime
scoreboard players operation @s ec.tk_expire += #tk_duration_ticks ec.var

# Visual feedback
execute at @s run particle soul_fire_flame ~ ~1 ~ 0.3 0.5 0.3 0.02 8
execute at @s run playsound minecraft:entity.warden.agitated hostile @a ~ ~ ~ 0.5 1.8
