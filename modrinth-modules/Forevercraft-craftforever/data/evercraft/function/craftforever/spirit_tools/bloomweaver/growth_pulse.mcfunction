# === BLOOMWEAVER — GROWTH PULSE ===
# Matures all crops within 8 blocks to max age
# Uses fill replace: set all crop blocks to their mature state

# Wheat → age 7
fill ~-8 ~-2 ~-8 ~8 ~2 ~8 wheat[age=7] replace wheat

# Carrots → age 7
fill ~-8 ~-2 ~-8 ~8 ~2 ~8 carrots[age=7] replace carrots

# Potatoes → age 7
fill ~-8 ~-2 ~-8 ~8 ~2 ~8 potatoes[age=7] replace potatoes

# Beetroots → age 3
fill ~-8 ~-2 ~-8 ~8 ~2 ~8 beetroots[age=3] replace beetroots

# Nether Wart → age 3
fill ~-8 ~-2 ~-8 ~8 ~2 ~8 nether_wart[age=3] replace nether_wart

# Visual + audio feedback
particle happy_villager ~ ~1 ~ 4 1 4 0.1 30
playsound minecraft:item.bone_meal.use player @s ~ ~ ~ 0.3 1.5
