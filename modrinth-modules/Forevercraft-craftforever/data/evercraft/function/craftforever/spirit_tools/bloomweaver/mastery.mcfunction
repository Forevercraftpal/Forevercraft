# Bloomweaver Mastery — "Garden of Eden" (90s CD)
# Create an 11x11 auto-farm centered on player

scoreboard players set @s ec.st_cd 1800

title @s actionbar [{"text":"Garden of Eden","color":"green","bold":true}]
playsound minecraft:item.bone_meal.use master @s ~ ~ ~ 1 0.6
playsound minecraft:block.azalea_leaves.place master @s ~ ~ ~ 1 0.8

# Create farmland + water channels in 11x11 at feet level
fill ~-5 ~-1 ~-5 ~5 ~-1 ~5 farmland
# Water channels every 4 blocks
fill ~-5 ~-1 ~-1 ~5 ~-1 ~-1 water
fill ~-5 ~-1 ~3 ~5 ~-1 ~3 water
fill ~-1 ~-1 ~-5 ~-1 ~-1 ~5 water
fill ~3 ~-1 ~-5 ~3 ~-1 ~5 water

# Plant mature crops (random mix by position)
fill ~-5 ~ ~-5 ~-2 ~ ~-2 wheat[age=7] replace air
fill ~1 ~ ~-5 ~5 ~ ~-2 carrots[age=7] replace air
fill ~-5 ~ ~1 ~-2 ~ ~5 potatoes[age=7] replace air
fill ~1 ~ ~1 ~5 ~ ~5 beetroots[age=3] replace air

# Place light blocks above for indoor use
fill ~-5 ~3 ~-5 ~5 ~3 ~5 light[level=15] replace air

# Big VFX
particle minecraft:happy_villager ~ ~1 ~ 5 1 5 0.2 50
particle minecraft:composter ~ ~0.5 ~ 5 0.5 5 0.3 30

# Grant crafting affinity XP: 100 for mastery use
function evercraft:craft_affinity/grant {class_id:3, delta:100}
