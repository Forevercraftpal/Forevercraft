# Biome Node: Per-node particle rendering
# Run as node marker, at node position
# Biome-colored particles based on data.biome_id

# Read biome ID for color selection
execute store result score #cf_render_id ec.temp run data get entity @s data.biome_id

# Default subtle shimmer (green tint for biome nodes)
particle dust{color:[0.4,0.7,0.4],scale:0.4} ~ ~0.2 ~ 0.1 0.1 0.1 0 1

# Biome-specific accent particle
execute if score #cf_render_id ec.temp matches 1 run particle dust{color:[0.5,0.8,1.0],scale:0.3} ~ ~0.15 ~ 0.1 0.05 0.1 0 1
execute if score #cf_render_id ec.temp matches 2 run particle dust{color:[1.0,0.85,0.3],scale:0.3} ~ ~0.15 ~ 0.1 0.05 0.1 0 1
execute if score #cf_render_id ec.temp matches 3 run particle dust{color:[0.0,0.3,0.4],scale:0.3} ~ ~0.15 ~ 0.1 0.05 0.1 0 1
execute if score #cf_render_id ec.temp matches 4 run particle dust{color:[0.2,0.7,0.2],scale:0.3} ~ ~0.15 ~ 0.1 0.05 0.1 0 1
execute if score #cf_render_id ec.temp matches 5 run particle dust{color:[0.2,0.6,0.7],scale:0.3} ~ ~0.15 ~ 0.1 0.05 0.1 0 1
execute if score #cf_render_id ec.temp matches 6 run particle dust{color:[0.8,0.15,0.1],scale:0.3} ~ ~0.15 ~ 0.1 0.05 0.1 0 1
execute if score #cf_render_id ec.temp matches 7 run particle dust{color:[0.1,0.7,0.6],scale:0.3} ~ ~0.15 ~ 0.1 0.05 0.1 0 1
execute if score #cf_render_id ec.temp matches 8 run particle dust{color:[0.6,0.2,0.8],scale:0.3} ~ ~0.15 ~ 0.1 0.05 0.1 0 1
execute if score #cf_render_id ec.temp matches 9 run particle dust{color:[0.7,0.3,0.6],scale:0.3} ~ ~0.15 ~ 0.1 0.05 0.1 0 1
execute if score #cf_render_id ec.temp matches 10 run particle dust{color:[0.1,0.8,0.3],scale:0.3} ~ ~0.15 ~ 0.1 0.05 0.1 0 1
execute if score #cf_render_id ec.temp matches 11 run particle dust{color:[0.85,0.85,0.95],scale:0.3} ~ ~0.15 ~ 0.1 0.05 0.1 0 1
execute if score #cf_render_id ec.temp matches 12 run particle dust{color:[0.8,0.5,0.3],scale:0.3} ~ ~0.15 ~ 0.1 0.05 0.1 0 1
execute if score #cf_render_id ec.temp matches 13 run particle dust{color:[0.3,0.1,0.35],scale:0.3} ~ ~0.15 ~ 0.1 0.05 0.1 0 1
execute if score #cf_render_id ec.temp matches 14 run particle dust{color:[0.35,0.4,0.2],scale:0.3} ~ ~0.15 ~ 0.1 0.05 0.1 0 1
execute if score #cf_render_id ec.temp matches 15 run particle dust{color:[1.0,0.6,0.7],scale:0.3} ~ ~0.15 ~ 0.1 0.05 0.1 0 1

# Pulse effect every ~4 seconds (gametime % 80, pulse when < 10)
execute store result score #cf_pulse ec.temp run time query gametime
scoreboard players operation #cf_pulse ec.temp %= #80 ec.const
execute if score #cf_pulse ec.temp matches ..9 run particle dust{color:[0.6,0.9,0.6],scale:0.7} ~ ~0.2 ~ 0.2 0.1 0.2 0 4
