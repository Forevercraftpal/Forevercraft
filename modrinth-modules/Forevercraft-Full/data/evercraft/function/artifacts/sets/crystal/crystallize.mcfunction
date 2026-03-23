# Crystal - Crystallize enemy
# Runs as enemy at enemy

# Crystal damage
damage @s 8 evercraft:bonus_strike

# Crystallize = frozen in place (slowness + mining fatigue)
effect give @s slowness 5 4 false
effect give @s mining_fatigue 5 2 false
effect give @s weakness 5 1 false

# Crystal particles on enemy
particle dust{color:[0.8,0.5,1.0],scale:1.0} ~ ~1 ~ 0.3 0.5 0.3 0.1 20
particle end_rod ~ ~1 ~ 0.3 0.5 0.3 0.05 10
