# Ore Node: Per-node particle rendering
# Run as node marker, at node position

# Subtle shimmer particles
particle dust{color:[0.7,0.7,0.8],scale:0.4} ~ ~0.2 ~ 0.1 0.1 0.1 0 1
particle minecraft:electric_spark ~ ~0.15 ~ 0.1 0.05 0.1 0 1

# Pulse effect every ~4 seconds (gametime % 80, pulse when < 10)
execute store result score #pr_pulse ec.temp run time query gametime
scoreboard players operation #pr_pulse ec.temp %= #80 ec.const
execute if score #pr_pulse ec.temp matches ..9 run particle dust{color:[0.9,0.8,0.5],scale:0.7} ~ ~0.2 ~ 0.2 0.1 0.2 0 4
