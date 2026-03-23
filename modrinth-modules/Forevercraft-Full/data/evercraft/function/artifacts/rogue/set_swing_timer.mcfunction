# Rogue — Set base swing timer based on dual state + tier
# OPT: return run exits on first match (was 12 checks always, now 1)

# Single wield timers
execute if score @s ec.rg_dual matches 0 if score @s ec.rg_tier matches 1 run return run scoreboard players set @s ec.rg_swing 15
execute if score @s ec.rg_dual matches 0 if score @s ec.rg_tier matches 2 run return run scoreboard players set @s ec.rg_swing 12
execute if score @s ec.rg_dual matches 0 if score @s ec.rg_tier matches 3 run return run scoreboard players set @s ec.rg_swing 9
execute if score @s ec.rg_dual matches 0 if score @s ec.rg_tier matches 4 run return run scoreboard players set @s ec.rg_swing 7
execute if score @s ec.rg_dual matches 0 if score @s ec.rg_tier matches 5 run return run scoreboard players set @s ec.rg_swing 5
execute if score @s ec.rg_dual matches 0 if score @s ec.rg_tier matches 6 run return run scoreboard players set @s ec.rg_swing 4

# Dual wield timers (70% of normal)
execute if score @s ec.rg_dual matches 1 if score @s ec.rg_tier matches 1 run return run scoreboard players set @s ec.rg_swing 11
execute if score @s ec.rg_dual matches 1 if score @s ec.rg_tier matches 2 run return run scoreboard players set @s ec.rg_swing 9
execute if score @s ec.rg_dual matches 1 if score @s ec.rg_tier matches 3 run return run scoreboard players set @s ec.rg_swing 7
execute if score @s ec.rg_dual matches 1 if score @s ec.rg_tier matches 4 run return run scoreboard players set @s ec.rg_swing 5
execute if score @s ec.rg_dual matches 1 if score @s ec.rg_tier matches 5 run return run scoreboard players set @s ec.rg_swing 4
execute if score @s ec.rg_dual matches 1 if score @s ec.rg_tier matches 6 run return run scoreboard players set @s ec.rg_swing 3
