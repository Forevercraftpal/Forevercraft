# === BLOOMWEAVER — HARVEST DROPS ===
# Spawns items for harvested crops + Fortune III equivalent
# Run as player, #st_harvested has count of blocks replaced

# Spawn crop drops based on harvested count
# Each harvested block drops 1-4 items (Fortune III average)
# We spawn wheat/carrot/potato items proportional to harvest count

# Spawn drops at player feet (magnet will pull)
execute if score #st_harvested ec.var matches 1.. run loot spawn ~ ~1 ~ loot minecraft:blocks/wheat
execute if score #st_harvested ec.var matches 3.. run loot spawn ~ ~1 ~ loot minecraft:blocks/wheat
execute if score #st_harvested ec.var matches 5.. run loot spawn ~ ~1 ~ loot minecraft:blocks/carrots
execute if score #st_harvested ec.var matches 8.. run loot spawn ~ ~1 ~ loot minecraft:blocks/potatoes
execute if score #st_harvested ec.var matches 10.. run loot spawn ~ ~1 ~ loot minecraft:blocks/wheat

# Bonus seeds
execute if score #st_harvested ec.var matches 1.. run loot spawn ~ ~1 ~ loot minecraft:blocks/wheat

# VFX
particle happy_villager ~ ~0.5 ~ 2 0.5 2 0.1 15
playsound minecraft:item.crop.plant player @s ~ ~ ~ 0.8 1.2

# Grant crafting affinity XP: 10 per crop harvested (scales with farm size)
function evercraft:craft_affinity/grant {class_id:3, delta:10}

# Affinity bonus: extra crop drops based on boost %
# 5-9% boost: one extra drop, 10-14%: two, 15%+: three
execute if score @s ec.caff_boost matches 5..9 run loot spawn ~ ~1 ~ loot minecraft:blocks/wheat
execute if score @s ec.caff_boost matches 10..14 run loot spawn ~ ~1 ~ loot minecraft:blocks/wheat
execute if score @s ec.caff_boost matches 10..14 run loot spawn ~ ~1 ~ loot minecraft:blocks/carrots
execute if score @s ec.caff_boost matches 15.. run loot spawn ~ ~1 ~ loot minecraft:blocks/wheat
execute if score @s ec.caff_boost matches 15.. run loot spawn ~ ~1 ~ loot minecraft:blocks/carrots
execute if score @s ec.caff_boost matches 15.. run loot spawn ~ ~1 ~ loot minecraft:blocks/potatoes

# Crate drop chance on harvest
function evercraft:craft_affinity/try_crate_drop
