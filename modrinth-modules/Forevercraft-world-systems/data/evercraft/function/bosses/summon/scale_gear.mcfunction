# World Boss — Gear-Based DR Scaling
# Detects player artifact tiers and calculates gear-implied DR
# Called as the summoner player (@s). Sets #wb_gear_dr (×10 scale, e.g., 250 = 25 DR)
# Base DR = highest tier's unlock threshold, +5 DR per additional artifact piece

# Count artifact pieces across all equipment slots
scoreboard players set #wb_gear_count ec.var 0
execute if data entity @s equipment.head.components."minecraft:custom_data".tier run scoreboard players add #wb_gear_count ec.var 1
execute if data entity @s equipment.chest.components."minecraft:custom_data".tier run scoreboard players add #wb_gear_count ec.var 1
execute if data entity @s equipment.legs.components."minecraft:custom_data".tier run scoreboard players add #wb_gear_count ec.var 1
execute if data entity @s equipment.feet.components."minecraft:custom_data".tier run scoreboard players add #wb_gear_count ec.var 1
execute if data entity @s equipment.mainhand.components."minecraft:custom_data".tier run scoreboard players add #wb_gear_count ec.var 1
execute if data entity @s equipment.offhand.components."minecraft:custom_data".tier run scoreboard players add #wb_gear_count ec.var 1

# No artifacts equipped? Gear DR = 0
execute if score #wb_gear_count ec.var matches 0 run return run scoreboard players set #wb_gear_dr ec.var 0

# Find highest tier across all slots (check top-down, first match sets base)
scoreboard players set #wb_gear_dr ec.var 0

# Mythical = 25 DR (250)
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.head.components."minecraft:custom_data"{tier:"mythical"} run scoreboard players set #wb_gear_dr ec.var 250
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.chest.components."minecraft:custom_data"{tier:"mythical"} run scoreboard players set #wb_gear_dr ec.var 250
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.legs.components."minecraft:custom_data"{tier:"mythical"} run scoreboard players set #wb_gear_dr ec.var 250
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.feet.components."minecraft:custom_data"{tier:"mythical"} run scoreboard players set #wb_gear_dr ec.var 250
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.mainhand.components."minecraft:custom_data"{tier:"mythical"} run scoreboard players set #wb_gear_dr ec.var 250
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.offhand.components."minecraft:custom_data"{tier:"mythical"} run scoreboard players set #wb_gear_dr ec.var 250

# Exquisite = 17.5 DR (175)
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.head.components."minecraft:custom_data"{tier:"exquisite"} run scoreboard players set #wb_gear_dr ec.var 175
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.chest.components."minecraft:custom_data"{tier:"exquisite"} run scoreboard players set #wb_gear_dr ec.var 175
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.legs.components."minecraft:custom_data"{tier:"exquisite"} run scoreboard players set #wb_gear_dr ec.var 175
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.feet.components."minecraft:custom_data"{tier:"exquisite"} run scoreboard players set #wb_gear_dr ec.var 175
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.mainhand.components."minecraft:custom_data"{tier:"exquisite"} run scoreboard players set #wb_gear_dr ec.var 175
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.offhand.components."minecraft:custom_data"{tier:"exquisite"} run scoreboard players set #wb_gear_dr ec.var 175

# Ornate = 14 DR (140)
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.head.components."minecraft:custom_data"{tier:"ornate"} run scoreboard players set #wb_gear_dr ec.var 140
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.chest.components."minecraft:custom_data"{tier:"ornate"} run scoreboard players set #wb_gear_dr ec.var 140
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.legs.components."minecraft:custom_data"{tier:"ornate"} run scoreboard players set #wb_gear_dr ec.var 140
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.feet.components."minecraft:custom_data"{tier:"ornate"} run scoreboard players set #wb_gear_dr ec.var 140
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.mainhand.components."minecraft:custom_data"{tier:"ornate"} run scoreboard players set #wb_gear_dr ec.var 140
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.offhand.components."minecraft:custom_data"{tier:"ornate"} run scoreboard players set #wb_gear_dr ec.var 140

# Rare = 10 DR (100)
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.head.components."minecraft:custom_data"{tier:"rare"} run scoreboard players set #wb_gear_dr ec.var 100
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.chest.components."minecraft:custom_data"{tier:"rare"} run scoreboard players set #wb_gear_dr ec.var 100
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.legs.components."minecraft:custom_data"{tier:"rare"} run scoreboard players set #wb_gear_dr ec.var 100
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.feet.components."minecraft:custom_data"{tier:"rare"} run scoreboard players set #wb_gear_dr ec.var 100
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.mainhand.components."minecraft:custom_data"{tier:"rare"} run scoreboard players set #wb_gear_dr ec.var 100
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.offhand.components."minecraft:custom_data"{tier:"rare"} run scoreboard players set #wb_gear_dr ec.var 100

# Uncommon = 7.5 DR (75)
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.head.components."minecraft:custom_data"{tier:"uncommon"} run scoreboard players set #wb_gear_dr ec.var 75
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.chest.components."minecraft:custom_data"{tier:"uncommon"} run scoreboard players set #wb_gear_dr ec.var 75
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.legs.components."minecraft:custom_data"{tier:"uncommon"} run scoreboard players set #wb_gear_dr ec.var 75
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.feet.components."minecraft:custom_data"{tier:"uncommon"} run scoreboard players set #wb_gear_dr ec.var 75
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.mainhand.components."minecraft:custom_data"{tier:"uncommon"} run scoreboard players set #wb_gear_dr ec.var 75
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.offhand.components."minecraft:custom_data"{tier:"uncommon"} run scoreboard players set #wb_gear_dr ec.var 75

# Common = 5 DR (50)
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.head.components."minecraft:custom_data"{tier:"common"} run scoreboard players set #wb_gear_dr ec.var 50
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.chest.components."minecraft:custom_data"{tier:"common"} run scoreboard players set #wb_gear_dr ec.var 50
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.legs.components."minecraft:custom_data"{tier:"common"} run scoreboard players set #wb_gear_dr ec.var 50
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.feet.components."minecraft:custom_data"{tier:"common"} run scoreboard players set #wb_gear_dr ec.var 50
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.mainhand.components."minecraft:custom_data"{tier:"common"} run scoreboard players set #wb_gear_dr ec.var 50
execute if score #wb_gear_dr ec.var matches 0 if data entity @s equipment.offhand.components."minecraft:custom_data"{tier:"common"} run scoreboard players set #wb_gear_dr ec.var 50

# Compound: +5 DR (50) per additional artifact piece beyond the first
# gear_dr += (count - 1) × 50
scoreboard players set #wb_temp ec.var 0
execute if score #wb_gear_count ec.var matches 2.. run scoreboard players operation #wb_temp ec.var = #wb_gear_count ec.var
execute if score #wb_temp ec.var matches 2.. run scoreboard players remove #wb_temp ec.var 1
scoreboard players set #wb_temp2 ec.var 50
scoreboard players operation #wb_temp ec.var *= #wb_temp2 ec.var
scoreboard players operation #wb_gear_dr ec.var += #wb_temp ec.var

# Cap at 500 (50 DR max)
execute if score #wb_gear_dr ec.var matches 501.. run scoreboard players set #wb_gear_dr ec.var 500
