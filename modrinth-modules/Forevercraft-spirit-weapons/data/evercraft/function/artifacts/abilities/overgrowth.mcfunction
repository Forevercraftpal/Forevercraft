# Overgrowth — Living Vines Hoe
# On hit: Burst of growth — advance nearby crops
advancement revoke @s only evercraft:artifacts/abilities/overgrowth_trigger
execute at @s run particle happy_villager ~ ~0.5 ~ 2 1 2 0.1 30
execute at @s run fill ~-3 ~-1 ~-3 ~3 ~1 ~3 wheat[age=7] replace wheat[age=6]
execute at @s run fill ~-3 ~-1 ~-3 ~3 ~1 ~3 wheat[age=6] replace wheat[age=5]
execute at @s run fill ~-3 ~-1 ~-3 ~3 ~1 ~3 carrots[age=7] replace carrots[age=6]
execute at @s run fill ~-3 ~-1 ~-3 ~3 ~1 ~3 potatoes[age=7] replace potatoes[age=6]
execute at @s run fill ~-3 ~-1 ~-3 ~3 ~1 ~3 beetroots[age=3] replace beetroots[age=2]
playsound minecraft:item.bone_meal.use player @s ~ ~ ~ 0.8 1

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
