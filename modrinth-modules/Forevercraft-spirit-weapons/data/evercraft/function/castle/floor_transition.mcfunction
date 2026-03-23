# Infinite Castle — Floor Transition Timer
# Called from tick_active when #ic_transition >= 1

# Decrement timer
scoreboard players remove #ic_transition ec.var 1

# Check for skip trigger from any player
execute as @a[tag=ic.player] if score @s ec.ic_skip matches 1.. run scoreboard players set #ic_transition ec.var 1
execute as @a[tag=ic.player] run scoreboard players set @s ec.ic_skip 0
execute as @a[tag=ic.player] run scoreboard players enable @s ec.ic_skip

# Timer expired or skipped — advance to next floor
execute if score #ic_transition ec.var matches ..0 run function evercraft:castle/advance_floor
