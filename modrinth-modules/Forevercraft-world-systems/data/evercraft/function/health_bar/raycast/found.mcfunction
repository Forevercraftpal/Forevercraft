# RPG Health Bar — Mob Found
# Context: positioned at raycast hit point, @s = casting player
# @n = nearest non-ignored, non-player entity within 1.5 blocks

tag @s add hb.found

# Tag the found mob so we can reference it by tag in selector text components
tag @n[distance=..1.5,type=!#evercraft:health_bar_ignore,type=!player] add hb.target

# Get health and max health
execute store result score @s hb.health run data get entity @n[tag=hb.target] Health 1
execute store result score @s hb.maxhealth run attribute @n[tag=hb.target] minecraft:max_health get 1

# Guard: if max health is 0 (shouldn't happen), abort
execute if score @s hb.maxhealth matches ..0 run tag @e[tag=hb.target] remove hb.target
execute if score @s hb.maxhealth matches ..0 run return 0

# Calculate percentage (health * 100 / maxhealth)
scoreboard players operation @s hb.pct = @s hb.health
scoreboard players operation @s hb.pct *= #100 ec.const
scoreboard players operation @s hb.pct /= @s hb.maxhealth

# Clamp to 0-100
execute if score @s hb.pct matches 101.. run scoreboard players set @s hb.pct 100
execute if score @s hb.pct matches ..-1 run scoreboard players set @s hb.pct 0

# Reset linger timer (20 checks at 2t each = 40 ticks = 2 seconds)
scoreboard players set @s hb.linger 20

# Detect mob type for accent colors
tag @s remove hb.accent_patron
tag @s remove hb.accent_furia
tag @s remove hb.accent_pet
execute if entity @n[tag=hb.target,tag=ec.patron] run tag @s add hb.accent_patron
execute if entity @n[tag=hb.target,tag=ec.furia] run tag @s add hb.accent_furia
execute if entity @n[tag=hb.target,tag=companion.spawned] run tag @s add hb.accent_pet

# Store health values for bar name display
execute store result storage evercraft:health_bar hp int 1 run scoreboard players get @s hb.health
execute store result storage evercraft:health_bar max_hp int 1 run scoreboard players get @s hb.maxhealth

# Update the boss bar display (value, color, name)
function evercraft:health_bar/display/update

# Clean up target tag
tag @e[tag=hb.target] remove hb.target
