# Evercraft Fishing Crates - Load
# Scoreboard-based fishing crate system (no enchantments)

scoreboard objectives add ec.init dummy
scoreboard players add fishing_crates ec.init 0
execute unless score fishing_crates ec.init matches 1 run function evercraft:fishing/ref/init

# Ensure delta-tracking scoreboard exists (added post-migration)
scoreboard objectives add fc.prev_fish dummy
