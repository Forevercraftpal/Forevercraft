# Lore Discovery: Per-sparkle particle rendering
# Run as sparkle marker, at sparkle position

# Gentle ambient particles (warm gold dust + floating motes)
particle dust{color:[0.95,0.9,0.5],scale:0.6} ~ ~0.3 ~ 0.15 0.2 0.15 0 2
particle minecraft:end_rod ~ ~0.4 ~ 0.05 0.15 0.05 0.005 1

# Pulse effect every ~3 seconds (gametime % 60, pulse when < 10)
execute store result score #lore_pulse ec.temp run time query gametime
scoreboard players operation #lore_pulse ec.temp %= #60 ec.const
execute if score #lore_pulse ec.temp matches ..9 run particle dust{color:[1.0,0.95,0.6],scale:1.0} ~ ~0.5 ~ 0.3 0.3 0.3 0 6
