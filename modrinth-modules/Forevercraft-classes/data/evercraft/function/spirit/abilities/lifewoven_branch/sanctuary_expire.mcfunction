# Lifewoven Branch — Sanctuary Expire
# Remove sanctuary zone when timer runs out

# Owner check for multiplayer marker filtering
scoreboard players operation #owner_check ec.temp = @s ec.sp_uid

# Final heal burst at marker
execute as @e[tag=ec.sp_sanctuary_marker] if score @s ec.sp_owner = #owner_check ec.temp at @s run effect give @a[distance=..10] regeneration 3 1 true
execute as @e[tag=ec.sp_sanctuary_marker] if score @s ec.sp_owner = #owner_check ec.temp at @s run particle happy_villager ~ ~0.5 ~ 5.0 1.0 5.0 0.2 20
execute as @e[tag=ec.sp_sanctuary_marker] if score @s ec.sp_owner = #owner_check ec.temp at @s run particle poof ~ ~0.5 ~ 3.0 0.5 3.0 0.05 10

# Kill marker
execute as @e[tag=ec.sp_sanctuary_marker] if score @s ec.sp_owner = #owner_check ec.temp run kill @s

# Remove active tag
tag @s remove ec.sp_sanctuary_active

# SFX
playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 0.6 1.5

title @s actionbar [{"text":"Sanctuary faded...","color":"gray","italic":true}]
