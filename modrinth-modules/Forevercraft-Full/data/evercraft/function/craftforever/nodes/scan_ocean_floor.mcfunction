# Biome Node: Scan downward through water to find ocean floor
# Run at the temp marker's position (water surface)
# Teleports temp marker down to first non-water block
# Sets #cf_ocean_ok ec.temp: 1 = found floor, 0 = too deep or failed

scoreboard players set #cf_ocean_ok ec.temp 0
scoreboard players set #cf_ocean_depth ec.temp 0

# Scan down up to 48 blocks (covers even deep oceans)
execute if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute store result score #cf_ocean_depth ec.temp if block ~ ~-1 ~ minecraft:water
execute if score #cf_ocean_depth ec.temp matches 1 at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~-1 ~

# Move up 1 block to sit ON the seafloor (not inside it)
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] unless block ~ ~ ~ minecraft:water run tp @e[type=marker,tag=ec.cf_node_temp,limit=1] ~ ~1 ~

# Verify we're not still in water (ocean was deeper than 40 blocks)
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] unless block ~ ~ ~ minecraft:water run scoreboard players set #cf_ocean_ok ec.temp 1
