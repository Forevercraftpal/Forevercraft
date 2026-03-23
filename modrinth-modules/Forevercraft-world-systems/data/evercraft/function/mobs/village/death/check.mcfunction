# Villager Death Detection — Census Check (S69)
# Runs every 5s, checks all village markers for population drops
# Run as: each village armor stand marker

# Get previous villager count from marker data
execute store result score #prev ec.temp run data get entity @s data.villager_count

# Count actual villagers within village range (96 blocks)
execute store result score #actual ec.temp if entity @e[type=villager,distance=..96]

# If count dropped, notify nearby players
execute if score #prev ec.temp matches 1.. if score #actual ec.temp < #prev ec.temp run function evercraft:mobs/village/death/notify with entity @s

# Update stored count (always, even on first run)
execute store result entity @s data.villager_count int 1 run scoreboard players get #actual ec.temp
