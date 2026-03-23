# Multi-Floor Dungeon — Offer descent to next floor
# Called instead of dungeon/complete when floor < 10
# Shows clickable text prompt to all dg.player participants

# Floor cleared announcement
tellraw @a[tag=dg.player] [{text:""},{"text":"[Dungeon] ","color":"dark_purple"},{"text":"Floor Cleared!","color":"gold","bold":true}]

# Calculate next floor number for display
scoreboard players operation #dg_floor_next ec.var = #dg_floor ec.var
scoreboard players add #dg_floor_next ec.var 1

# Show descent option
execute store result storage evercraft:dungeon floor.next int 1 run scoreboard players get #dg_floor_next ec.var
function evercraft:dungeon/floor/show_prompt with storage evercraft:dungeon floor

# Start 15-second timer for decision (auto-complete if no descent)
scoreboard players set #dg_descent_timer ec.var 300
tag @a[tag=dg.player] add dg.awaiting_descent
