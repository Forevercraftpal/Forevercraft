# Show laborer info in chat
# Runs as: laborer entity. @p = clicking player.

# Header
tellraw @p [{"text":"","color":"gray"},{"text":"══════════════════════════════","color":"gold"}]
tellraw @p [{"text":"  ","color":"gray"},{"selector":"@s","color":"aqua","bold":true}]

# Status line
execute if score @s ec.lb_state matches 0 run tellraw @p [{"text":"  Status: ","color":"gray"},{"text":"Idle","color":"green"}]
execute if score @s ec.lb_state matches 1 run tellraw @p [{"text":"  Status: ","color":"gray"},{"text":"Preparing for Expedition...","color":"yellow"}]
execute if score @s ec.lb_state matches 2 run tellraw @p [{"text":"  Status: ","color":"gray"},{"text":"On Expedition","color":"aqua"}]
execute if score @s ec.lb_state matches 3 run tellraw @p [{"text":"  Status: ","color":"gray"},{"text":"Returned! Click to collect loot","color":"green","bold":true}]

# Type line
execute if score @s ec.lb_type matches 1 run tellraw @p [{"text":"  Type: ","color":"gray"},{"text":"Miner","color":"gold"}]
execute if score @s ec.lb_type matches 2 run tellraw @p [{"text":"  Type: ","color":"gray"},{"text":"Farmer","color":"green"}]
execute if score @s ec.lb_type matches 3 run tellraw @p [{"text":"  Type: ","color":"gray"},{"text":"Fisher","color":"aqua"}]
execute if score @s ec.lb_type matches 4 run tellraw @p [{"text":"  Type: ","color":"gray"},{"text":"Woodcutter","color":"dark_green"}]
execute if score @s ec.lb_type matches 5 run tellraw @p [{"text":"  Type: ","color":"gray"},{"text":"Forager","color":"dark_purple"}]
execute if score @s ec.lb_type matches 6 run tellraw @p [{"text":"  Type: ","color":"gray"},{"text":"Prospector","color":"light_purple"}]

# Satisfaction
execute if score @s ec.lb_fed matches 1.. run tellraw @p [{"text":"  Satisfaction: ","color":"gray"},{"text":"Fed","color":"green"},{"text":" (Tier ","color":"gray"},{"score":{"name":"@s","objective":"ec.lb_food_tier"},"color":"yellow"},{"text":")","color":"gray"}]
execute if score @s ec.lb_fed matches 0 run tellraw @p [{"text":"  Satisfaction: ","color":"gray"},{"text":"Hungry!","color":"red"}]

# Quality
tellraw @p [{"text":"  Quality: ","color":"gray"},{"score":{"name":"@s","objective":"ec.lb_quality"},"color":"yellow"}]

# Stats
tellraw @p [{"text":"  Expeditions: ","color":"gray"},{"score":{"name":"@s","objective":"ec.lb_expeditions"},"color":"white"},{"text":"  Adventures: ","color":"gray"},{"score":{"name":"@s","objective":"ec.lb_adventures"},"color":"white"}]

# Permanent bonus
execute if score @s ec.lb_perm_bonus matches 1.. run tellraw @p [{"text":"  Battle-Hardened: ","color":"gray"},{"text":"+","color":"green"},{"score":{"name":"@s","objective":"ec.lb_perm_bonus"},"color":"green"},{"text":" permanent quality","color":"gray"}]

# Footer with feeding hint
tellraw @p [{"text":"","color":"gray"},{"text":"══════════════════════════════","color":"gold"}]
tellraw @p [{"text":"  ","color":"gray"},{"text":"Hold a cooked meal and right-click to feed","color":"dark_gray","italic":true}]
