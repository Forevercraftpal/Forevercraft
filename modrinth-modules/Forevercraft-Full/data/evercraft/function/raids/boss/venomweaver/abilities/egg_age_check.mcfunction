# The Venomweaver — Egg Age Check
# Called as each egg entity — checks if it's old enough to hatch
# Egg's ec.var score = spawn time (#rd_timer at spawn)

# Calculate age: current timer - this egg's spawn time
scoreboard players operation #rd_temp ec.var = #rd_timer ec.var
scoreboard players operation #rd_temp ec.var -= @s ec.var

# If age >= 200 ticks (10 seconds), hatch
execute if score #rd_temp ec.var matches 200.. run function evercraft:raids/boss/venomweaver/abilities/egg_hatch
