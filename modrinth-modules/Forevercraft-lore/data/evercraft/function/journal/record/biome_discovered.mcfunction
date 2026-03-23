# ============================================================
# Record a Biome Discovery
# Run as player with ec.biome_id already set
# ============================================================

# Add biome tag via macro
execute store result storage eden:temp jn.bid int 1 run scoreboard players get @s ec.biome_id
function evercraft:journal/record/biome_tag_macro with storage eden:temp jn

# Increment biome count
scoreboard players add @s jn.biome_count 1

# Spirit progression — always track biome discovery (synced on weapon equip too)
scoreboard players add @s ec.sp_biomes 1

# Set biome name in storage for notification
execute if score @s ec.biome_id matches 0 run data modify storage eden:temp jn.bname set value "Plains"
execute if score @s ec.biome_id matches 1 run data modify storage eden:temp jn.bname set value "Forest"
execute if score @s ec.biome_id matches 2 run data modify storage eden:temp jn.bname set value "Flower Forest"
execute if score @s ec.biome_id matches 3 run data modify storage eden:temp jn.bname set value "Dark Forest"
execute if score @s ec.biome_id matches 4 run data modify storage eden:temp jn.bname set value "Taiga"
execute if score @s ec.biome_id matches 5 run data modify storage eden:temp jn.bname set value "Mountains"
execute if score @s ec.biome_id matches 6 run data modify storage eden:temp jn.bname set value "Jungle"
execute if score @s ec.biome_id matches 7 run data modify storage eden:temp jn.bname set value "Desert"
execute if score @s ec.biome_id matches 8 run data modify storage eden:temp jn.bname set value "Savanna"
execute if score @s ec.biome_id matches 9 run data modify storage eden:temp jn.bname set value "Ocean"
execute if score @s ec.biome_id matches 10 run data modify storage eden:temp jn.bname set value "River"
execute if score @s ec.biome_id matches 11 run data modify storage eden:temp jn.bname set value "Swamp"
execute if score @s ec.biome_id matches 12 run data modify storage eden:temp jn.bname set value "Mushroom Island"
execute if score @s ec.biome_id matches 13 run data modify storage eden:temp jn.bname set value "Ice Plains"
execute if score @s ec.biome_id matches 14 run data modify storage eden:temp jn.bname set value "Badlands"
execute if score @s ec.biome_id matches 15 run data modify storage eden:temp jn.bname set value "Lush Caves"
execute if score @s ec.biome_id matches 16 run data modify storage eden:temp jn.bname set value "Dripstone Caves"
execute if score @s ec.biome_id matches 17 run data modify storage eden:temp jn.bname set value "Deep Dark"
execute if score @s ec.biome_id matches 18 run data modify storage eden:temp jn.bname set value "Nether Wastes"
execute if score @s ec.biome_id matches 19 run data modify storage eden:temp jn.bname set value "Crimson Forest"
execute if score @s ec.biome_id matches 20 run data modify storage eden:temp jn.bname set value "Warped Forest"
execute if score @s ec.biome_id matches 21 run data modify storage eden:temp jn.bname set value "Basalt Deltas"
execute if score @s ec.biome_id matches 22 run data modify storage eden:temp jn.bname set value "Soul Sand Valley"
execute if score @s ec.biome_id matches 23 run data modify storage eden:temp jn.bname set value "The End"
execute if score @s ec.biome_id matches 24 run data modify storage eden:temp jn.bname set value "Pale Garden"

# Sound + notification via macro
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.7 1.4
function evercraft:journal/record/biome_notify_macro with storage eden:temp jn

# Check region completion
function evercraft:journal/regions/check_all
