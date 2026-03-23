# Classify armor slot type
function evercraft:armor_mastery/classify_armor

# Calculate effective enchant level = level + prestige (cap 10)
scoreboard players operation #am_ench_level ec.var = #am_level ec.var
scoreboard players operation #am_ench_level ec.var += #am_prestige ec.var
execute if score #am_ench_level ec.var matches 11.. run scoreboard players set #am_ench_level ec.var 10

# Route to slot-specific enchant function
# All enchants are applied to the hopper minecart item (am_temp)
execute if score #am_armor_type ec.var matches 1 run function evercraft:armor_mastery/enchants/helmet
execute if score #am_armor_type ec.var matches 2 run function evercraft:armor_mastery/enchants/chestplate
execute if score #am_armor_type ec.var matches 3 run function evercraft:armor_mastery/enchants/leggings
execute if score #am_armor_type ec.var matches 4 run function evercraft:armor_mastery/enchants/boots
