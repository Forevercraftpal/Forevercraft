# Growth Serum - Apply bone meal effect to nearby crops
# Called at the location of the lingering potion area_effect_cloud
# Advances all crops in a 4-block radius by 3 growth stages (like ~3 bone meal uses)

# Visual/sound effects
particle minecraft:happy_villager ~ ~0.5 ~ 3 1 3 0.1 40
playsound minecraft:item.bone_meal.use master @a ~ ~ ~ 1 0.8

# Run 3 growth passes (each pass = 1 stage advancement for all crops in range)
function evercraft:potions/growth_serum/grow_pass
function evercraft:potions/growth_serum/grow_pass
function evercraft:potions/growth_serum/grow_pass

# Extra particles after growth
particle minecraft:composter ~ ~0.5 ~ 3 1 3 0.05 20

# Kill the area_effect_cloud after applying (prevents lingering healing effect)
kill @s
