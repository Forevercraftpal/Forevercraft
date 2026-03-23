# Blood - Blood damage on enemy
# Runs as enemy at enemy

# Heavy damage
damage @s 12 evercraft:bonus_strike

# Bleeding effect (wither)
effect give @s wither 5 0 false

# Blood particles
particle dust{color:[0.5,0.0,0.0],scale:1.2} ~ ~1 ~ 0.3 0.5 0.3 0.1 20
particle damage_indicator ~ ~1 ~ 0.3 0.5 0.3 0.05 10
