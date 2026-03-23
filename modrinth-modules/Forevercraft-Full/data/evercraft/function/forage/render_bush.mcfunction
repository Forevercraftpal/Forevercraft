# Foraging Bush: Per-bush particle rendering
# Run as bush marker, at bush position

# Gentle green nature particles + occasional sparkle
particle dust{color:[0.4,0.8,0.3],scale:0.5} ~ ~0.4 ~ 0.15 0.15 0.15 0 2
particle minecraft:happy_villager ~ ~0.5 ~ 0.2 0.2 0.2 0 1

# Pulse effect every ~3 seconds (gametime % 60, pulse when < 10)
execute store result score #fg_pulse ec.temp run time query gametime
scoreboard players operation #fg_pulse ec.temp %= #60 ec.const
execute if score #fg_pulse ec.temp matches ..9 run particle dust{color:[0.5,0.9,0.4],scale:0.8} ~ ~0.5 ~ 0.3 0.3 0.3 0 5
