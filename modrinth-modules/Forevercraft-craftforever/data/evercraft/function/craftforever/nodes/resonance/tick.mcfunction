# Resonance Strike — Per-tick update
# Run as player with ec.cf_reso=1, at player position

# Decrement timer
scoreboard players remove @s ec.cf_reso_timer 1

# Timeout — auto-resolve as miss
execute if score @s ec.cf_reso_timer matches ..0 run return run function evercraft:craftforever/nodes/resonance/timeout

# Move cursor every 2 ticks
scoreboard players operation #cf_r_tick ec.temp = @s ec.cf_reso_timer
scoreboard players operation #cf_r_tick ec.temp %= #2 ec.const
execute unless score #cf_r_tick ec.temp matches 0 run return 0

# Move cursor in current direction
scoreboard players operation @s ec.cf_reso_pos += @s ec.cf_reso_dir

# Bounce at edges (0 and 19)
execute if score @s ec.cf_reso_pos matches 20.. run scoreboard players set @s ec.cf_reso_dir -1
execute if score @s ec.cf_reso_pos matches 20.. run scoreboard players set @s ec.cf_reso_pos 19
execute if score @s ec.cf_reso_pos matches ..-1 run scoreboard players set @s ec.cf_reso_dir 1
execute if score @s ec.cf_reso_pos matches ..-1 run scoreboard players set @s ec.cf_reso_pos 0

# Render bar with cursor and zone via storage + macro
execute store result storage evercraft:cf_reso pos int 1 run scoreboard players get @s ec.cf_reso_pos
execute store result storage evercraft:cf_reso zone int 1 run scoreboard players get @s ec.cf_reso_zone
function evercraft:craftforever/nodes/resonance/render_bar with storage evercraft:cf_reso

# Tick sound (subtle click every 4 positions)
scoreboard players operation #cf_r_snd ec.temp = @s ec.cf_reso_pos
scoreboard players operation #cf_r_snd ec.temp %= #4 ec.const
execute if score #cf_r_snd ec.temp matches 0 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.15 1.5

# Check for click on interaction entity
execute as @e[type=interaction,tag=ec.cf_reso_click,distance=..5,limit=1] if data entity @s interaction run function evercraft:craftforever/nodes/resonance/on_click
