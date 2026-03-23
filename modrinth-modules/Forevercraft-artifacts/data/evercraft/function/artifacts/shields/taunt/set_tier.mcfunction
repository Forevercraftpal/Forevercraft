# Set taunt tier values based on equipped mainhand shield tier
# Sets #tk_duration_ticks ec.var (gametime ticks) and #tk_pull_interval ec.var (seconds)
# Also sets ec.tk_tier on the player (1-6)

# Default (common): 20s duration = 400 ticks, 15s pull interval
scoreboard players set @s ec.tk_tier 1
scoreboard players set #tk_duration_ticks ec.var 400
scoreboard players set #tk_pull_interval ec.var 15

# Uncommon: 25s = 500 ticks, 12s pull
execute if items entity @s weapon.mainhand minecraft:shield[custom_data~{tier:"uncommon"}] run scoreboard players set @s ec.tk_tier 2
execute if score @s ec.tk_tier matches 2 run scoreboard players set #tk_duration_ticks ec.var 500
execute if score @s ec.tk_tier matches 2 run scoreboard players set #tk_pull_interval ec.var 12

# Rare: 30s = 600 ticks, 10s pull
execute if items entity @s weapon.mainhand minecraft:shield[custom_data~{tier:"rare"}] run scoreboard players set @s ec.tk_tier 3
execute if score @s ec.tk_tier matches 3 run scoreboard players set #tk_duration_ticks ec.var 600
execute if score @s ec.tk_tier matches 3 run scoreboard players set #tk_pull_interval ec.var 10

# Ornate: 40s = 800 ticks, 7s pull
execute if items entity @s weapon.mainhand minecraft:shield[custom_data~{tier:"ornate"}] run scoreboard players set @s ec.tk_tier 4
execute if score @s ec.tk_tier matches 4 run scoreboard players set #tk_duration_ticks ec.var 800
execute if score @s ec.tk_tier matches 4 run scoreboard players set #tk_pull_interval ec.var 7

# Exquisite: 50s = 1000 ticks, 5s pull
execute if items entity @s weapon.mainhand minecraft:shield[custom_data~{tier:"exquisite"}] run scoreboard players set @s ec.tk_tier 5
execute if score @s ec.tk_tier matches 5 run scoreboard players set #tk_duration_ticks ec.var 1000
execute if score @s ec.tk_tier matches 5 run scoreboard players set #tk_pull_interval ec.var 5

# Mythical: 60s = 1200 ticks, 3s pull
execute if items entity @s weapon.mainhand minecraft:shield[custom_data~{tier:"mythical"}] run scoreboard players set @s ec.tk_tier 6
execute if score @s ec.tk_tier matches 6 run scoreboard players set #tk_duration_ticks ec.var 1200
execute if score @s ec.tk_tier matches 6 run scoreboard players set #tk_pull_interval ec.var 3

# OPT: Initialize pull CD here (was duplicate @a scan in shields/tick)
scoreboard players operation @s ec.tk_pull_cd = #tk_pull_interval ec.var
