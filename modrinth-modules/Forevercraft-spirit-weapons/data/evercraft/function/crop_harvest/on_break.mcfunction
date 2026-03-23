# Crop Auto-Replant — On Crop Break (Macro)
# $(crop) = wheat, carrots, potatoes, beetroots, nether_wart
# Run as the player, at their position

# Must be holding a hoe (any type, including Hoe of Honor)
execute unless items entity @s weapon.mainhand wooden_hoe unless items entity @s weapon.mainhand stone_hoe unless items entity @s weapon.mainhand iron_hoe unless items entity @s weapon.mainhand golden_hoe unless items entity @s weapon.mainhand diamond_hoe unless items entity @s weapon.mainhand netherite_hoe run return 0

# Raycast from eyes to find the exposed farmland/soul_sand and replant
scoreboard players set #rh_ray ec.temp 0
$execute anchored eyes positioned ^ ^ ^0.5 run function evercraft:crop_harvest/replant_raycast {crop:"$(crop)"}

# Autumn bonus: 50% chance for extra crop
$execute if score #season_id ec.var matches 0 run function evercraft:seasons/effects/autumn_crop_bonus {crop:"$(crop)"}
