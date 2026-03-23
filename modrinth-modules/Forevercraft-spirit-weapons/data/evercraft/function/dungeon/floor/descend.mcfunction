# Multi-Floor Dungeon — Descend to next floor
# Resets waves, scales mobs harder, continues the run

# Advance floor
scoreboard players add #dg_floor ec.var 1

# Track daily floor count for 30-floor daily limit
scoreboard players add @a[tag=dg.player] ec.dg_floors_today 1

# Clear descent state
tag @a remove dg.awaiting_descent
scoreboard players set @a ec.dg_descend 0
scoreboard players set #dg_descent_timer ec.var 0

# Reset wave counter
scoreboard players set #dg_wave ec.var 0
scoreboard players set #dg_timer ec.var 60

# Kill remaining mobs (safety)
kill @e[tag=dg.mob]

# Pick new instance theme for this floor
execute store result score #dg_instance ec.var run random value 1..16

# Announce floor descent
execute store result storage evercraft:dungeon floor.current int 1 run scoreboard players get #dg_floor ec.var
function evercraft:dungeon/floor/announce_descent with storage evercraft:dungeon floor

# Effects
playsound minecraft:block.end_portal.spawn master @a[tag=dg.player] ~ ~ ~ 0.6 0.6
playsound minecraft:entity.warden.emerge master @a[tag=dg.player] ~ ~ ~ 0.4 0.8
execute at @e[type=marker,tag=dg.center,limit=1] run particle minecraft:reverse_portal ~ ~1 ~ 2 1 2 0.05 150 force
