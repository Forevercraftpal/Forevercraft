# Multi-Floor Dungeon — Finish the run (chose not to descend)
# Route to normal completion

# Clear descent state
tag @a remove dg.awaiting_descent
scoreboard players set @a ec.dg_descend 0
scoreboard players set #dg_descent_timer ec.var 0

# Run normal completion flow
function evercraft:dungeon/complete
