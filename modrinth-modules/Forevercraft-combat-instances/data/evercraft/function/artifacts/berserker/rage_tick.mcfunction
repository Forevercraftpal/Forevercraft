# Berserker Rage — Per-Tick Processing
# Run as raging berserker player at @s anchored eyes

# Decrement rage timer
scoreboard players remove @s ec.bk_rage 1

# Decrement swing timer
scoreboard players remove @s ec.bk_swing 1

# Fire auto-swing when timer hits 0
execute if score @s ec.bk_swing matches ..0 run function evercraft:artifacts/berserker/rage_swing

# Rage particles (subtle red aura)
particle minecraft:dust{color:[0.8,0.1,0.1],scale:0.8} ~ ~0.5 ~ 0.3 0.5 0.3 0 2

# Check if rage expired
execute if score @s ec.bk_rage matches ..0 run function evercraft:artifacts/berserker/deactivate_rage
