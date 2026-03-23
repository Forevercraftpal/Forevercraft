# Artifact Gear Mob Scaling
# Run as: mob (during init), at mob's position
# Detects artifact gear on nearest player WITH artifact gear (multiplayer safe)
# Scales: Ornate=flat DR10, Exquisite=flat DR15, Mythical=DR25 base +5/piece

# --- Find target: nearest player with any artifact-tier gear (not just nearest player) ---
tag @a[distance=..64] remove ec.gear_target
execute as @a[distance=..64,sort=nearest] if items entity @s armor.* *[custom_data~{tier:"ornate"}] run tag @s add ec.gear_target
execute as @a[distance=..64,sort=nearest] if items entity @s armor.* *[custom_data~{tier:"exquisite"}] run tag @s add ec.gear_target
execute as @a[distance=..64,sort=nearest] if items entity @s armor.* *[custom_data~{tier:"mythical"}] run tag @s add ec.gear_target
execute as @a[distance=..64,sort=nearest] if items entity @s weapon.offhand *[custom_data~{tier:"ornate"}] run tag @s add ec.gear_target
execute as @a[distance=..64,sort=nearest] if items entity @s weapon.offhand *[custom_data~{tier:"exquisite"}] run tag @s add ec.gear_target
execute as @a[distance=..64,sort=nearest] if items entity @s weapon.offhand *[custom_data~{tier:"mythical"}] run tag @s add ec.gear_target
execute as @a[distance=..64,sort=nearest] if items entity @s hotbar.* *[custom_data~{tier:"ornate"}] run tag @s add ec.gear_target
execute as @a[distance=..64,sort=nearest] if items entity @s hotbar.* *[custom_data~{tier:"exquisite"}] run tag @s add ec.gear_target
execute as @a[distance=..64,sort=nearest] if items entity @s hotbar.* *[custom_data~{tier:"mythical"}] run tag @s add ec.gear_target
execute as @a[distance=..64,sort=nearest] if items entity @s inventory.* *[custom_data~{tier:"ornate"}] run tag @s add ec.gear_target
execute as @a[distance=..64,sort=nearest] if items entity @s inventory.* *[custom_data~{tier:"exquisite"}] run tag @s add ec.gear_target
execute as @a[distance=..64,sort=nearest] if items entity @s inventory.* *[custom_data~{tier:"mythical"}] run tag @s add ec.gear_target
execute unless entity @p[tag=ec.gear_target,distance=..64] run return 0

# --- Determine effective DR from targeted player's gear ---
scoreboard players set #gear_dr ec.temp 0

# Check ornate (any piece = flat DR 10, score 100)
execute if items entity @p[tag=ec.gear_target] armor.* *[custom_data~{tier:"ornate"}] run scoreboard players set #gear_dr ec.temp 100
execute if items entity @p[tag=ec.gear_target] weapon.offhand *[custom_data~{tier:"ornate"}] run scoreboard players set #gear_dr ec.temp 100
execute if items entity @p[tag=ec.gear_target] hotbar.* *[custom_data~{tier:"ornate"}] run scoreboard players set #gear_dr ec.temp 100
execute if items entity @p[tag=ec.gear_target] inventory.* *[custom_data~{tier:"ornate"}] run scoreboard players set #gear_dr ec.temp 100

# Check exquisite (any piece = flat DR 15, score 150 — overwrites ornate if present)
execute if items entity @p[tag=ec.gear_target] armor.* *[custom_data~{tier:"exquisite"}] run scoreboard players set #gear_dr ec.temp 150
execute if items entity @p[tag=ec.gear_target] weapon.offhand *[custom_data~{tier:"exquisite"}] run scoreboard players set #gear_dr ec.temp 150
execute if items entity @p[tag=ec.gear_target] hotbar.* *[custom_data~{tier:"exquisite"}] run scoreboard players set #gear_dr ec.temp 150
execute if items entity @p[tag=ec.gear_target] inventory.* *[custom_data~{tier:"exquisite"}] run scoreboard players set #gear_dr ec.temp 150

# Count mythical pieces (compounds: 25 + (count-1) * 5)
scoreboard players set #mythical_count ec.temp 0
execute store result score #temp ec.temp if items entity @p[tag=ec.gear_target] armor.* *[custom_data~{tier:"mythical"}]
scoreboard players operation #mythical_count ec.temp += #temp ec.temp
execute if items entity @p[tag=ec.gear_target] weapon.offhand *[custom_data~{tier:"mythical"}] run scoreboard players add #mythical_count ec.temp 1
execute store result score #temp ec.temp if items entity @p[tag=ec.gear_target] hotbar.* *[custom_data~{tier:"mythical"}]
scoreboard players operation #mythical_count ec.temp += #temp ec.temp
execute store result score #temp ec.temp if items entity @p[tag=ec.gear_target] inventory.* *[custom_data~{tier:"mythical"}]
scoreboard players operation #mythical_count ec.temp += #temp ec.temp

# Map mythical count → DR score (always higher than ornate/exquisite)
execute if score #mythical_count ec.temp matches 6.. run scoreboard players set #gear_dr ec.temp 500
execute if score #mythical_count ec.temp matches 5 run scoreboard players set #gear_dr ec.temp 450
execute if score #mythical_count ec.temp matches 4 run scoreboard players set #gear_dr ec.temp 400
execute if score #mythical_count ec.temp matches 3 run scoreboard players set #gear_dr ec.temp 350
execute if score #mythical_count ec.temp matches 2 run scoreboard players set #gear_dr ec.temp 300
execute if score #mythical_count ec.temp matches 1 run scoreboard players set #gear_dr ec.temp 250

# No qualifying gear = no scaling
execute unless score #gear_dr ec.temp matches 1.. run return 0

# --- Strength III + Resistance I (mythical only, all mob types) ---
execute if score #mythical_count ec.temp matches 1.. run function evercraft:mobs/mythical_scaling/effects

# --- Skeleton tipped arrows (all tiers, scales with gear DR) ---
execute if entity @s[type=#evercraft:mobs/mythical_scaling/skeletons] run function evercraft:mobs/mythical_scaling/skeleton_arrows

# --- Creeper blast scaling (all tiers, scales with gear DR) ---
execute if entity @s[type=creeper] run function evercraft:mobs/mythical_scaling/creeper_blast

# --- Spider tier tagging (for tick-based abilities that scale with gear DR) ---
# t1 = low (ornate/exquisite), t2 = mid (mythical 1-3), t3 = high (mythical 4+)
execute if entity @s[type=#evercraft:mobs/mythical_scaling/spiders] if score #gear_dr ec.temp matches 100..249 run tag @s add mythical_spider_t1
execute if entity @s[type=#evercraft:mobs/mythical_scaling/spiders] if score #gear_dr ec.temp matches 250..399 run tag @s add mythical_spider_t2
execute if entity @s[type=#evercraft:mobs/mythical_scaling/spiders] if score #gear_dr ec.temp matches 400.. run tag @s add mythical_spider_t3

# --- DR Equipment Scaling (humanoid hostile mobs only) ---
execute unless entity @s[type=#evercraft:mobs/dr_scaling/can_equip] run return 1
execute if entity @s[tag=ec.patron] run return 1
execute if entity @s[tag=ec.furia] run return 1

# Only override if gear-based DR exceeds player's actual DR
execute store result score #actual_dr ec.temp run attribute @p[tag=ec.gear_target] luck get 10
execute if score #actual_dr ec.temp >= #gear_dr ec.temp run return 1

# Route to DR tier (reuses existing tier functions)
scoreboard players operation #mob_dr ec.temp = #gear_dr ec.temp
execute if score #mob_dr ec.temp matches 500.. run return run function evercraft:mobs/dr_scaling/tier/artifact
execute if score #mob_dr ec.temp matches 400..499 run return run function evercraft:mobs/dr_scaling/tier/netherite
execute if score #mob_dr ec.temp matches 300..399 run return run function evercraft:mobs/dr_scaling/tier/diamond
execute if score #mob_dr ec.temp matches 200..299 run return run function evercraft:mobs/dr_scaling/tier/iron
execute if score #mob_dr ec.temp matches 150..199 run return run function evercraft:mobs/dr_scaling/tier/copper
execute if score #mob_dr ec.temp matches 100..149 run function evercraft:mobs/dr_scaling/tier/gold_stone
