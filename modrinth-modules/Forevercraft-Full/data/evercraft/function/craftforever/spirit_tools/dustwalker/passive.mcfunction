# Dustwalker — Passive: Speed III + Haste II + no fall damage
# Run as/at: player holding Dustwalker

execute if score #st_effect_cd ec.var matches 0 run effect give @s speed 3 2 true
execute if score #st_effect_cd ec.var matches 0 run effect give @s haste 3 1 true
function evercraft:craft_affinity/apply_haste_bonus

# Slow falling (prevents fall damage naturally)
execute if score #st_effect_cd ec.var matches 0 run effect give @s slow_falling 3 0 true

# Particles
execute if score #st_effect_cd ec.var matches 0 run particle minecraft:dust{color:[0.76,0.70,0.50],scale:1.0} ~ ~0.1 ~ 0.5 0.1 0.5 0.01 3

# Speed V burst when on path blocks
execute if block ~ ~-1 ~ dirt_path run effect give @s speed 2 4 true
