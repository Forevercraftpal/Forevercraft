# Bloomweaver — Growth Aura: Mature all crops within 8 blocks
# fill replace any-age crop with max-age crop

# Wheat (max age 7)
fill ~-8 ~-2 ~-8 ~8 ~2 ~8 wheat[age=7] replace wheat[age=0]
fill ~-8 ~-2 ~-8 ~8 ~2 ~8 wheat[age=7] replace wheat[age=1]
fill ~-8 ~-2 ~-8 ~8 ~2 ~8 wheat[age=7] replace wheat[age=2]
fill ~-8 ~-2 ~-8 ~8 ~2 ~8 wheat[age=7] replace wheat[age=3]
fill ~-8 ~-2 ~-8 ~8 ~2 ~8 wheat[age=7] replace wheat[age=4]
fill ~-8 ~-2 ~-8 ~8 ~2 ~8 wheat[age=7] replace wheat[age=5]
fill ~-8 ~-2 ~-8 ~8 ~2 ~8 wheat[age=7] replace wheat[age=6]

# Carrots (max age 7)
fill ~-8 ~-2 ~-8 ~8 ~2 ~8 carrots[age=7] replace carrots[age=0]
fill ~-8 ~-2 ~-8 ~8 ~2 ~8 carrots[age=7] replace carrots[age=1]
fill ~-8 ~-2 ~-8 ~8 ~2 ~8 carrots[age=7] replace carrots[age=2]
fill ~-8 ~-2 ~-8 ~8 ~2 ~8 carrots[age=7] replace carrots[age=3]
fill ~-8 ~-2 ~-8 ~8 ~2 ~8 carrots[age=7] replace carrots[age=4]
fill ~-8 ~-2 ~-8 ~8 ~2 ~8 carrots[age=7] replace carrots[age=5]
fill ~-8 ~-2 ~-8 ~8 ~2 ~8 carrots[age=7] replace carrots[age=6]

# Potatoes (max age 7)
fill ~-8 ~-2 ~-8 ~8 ~2 ~8 potatoes[age=7] replace potatoes[age=0]
fill ~-8 ~-2 ~-8 ~8 ~2 ~8 potatoes[age=7] replace potatoes[age=1]
fill ~-8 ~-2 ~-8 ~8 ~2 ~8 potatoes[age=7] replace potatoes[age=2]
fill ~-8 ~-2 ~-8 ~8 ~2 ~8 potatoes[age=7] replace potatoes[age=3]
fill ~-8 ~-2 ~-8 ~8 ~2 ~8 potatoes[age=7] replace potatoes[age=4]
fill ~-8 ~-2 ~-8 ~8 ~2 ~8 potatoes[age=7] replace potatoes[age=5]
fill ~-8 ~-2 ~-8 ~8 ~2 ~8 potatoes[age=7] replace potatoes[age=6]

# Beetroots (max age 3)
fill ~-8 ~-2 ~-8 ~8 ~2 ~8 beetroots[age=3] replace beetroots[age=0]
fill ~-8 ~-2 ~-8 ~8 ~2 ~8 beetroots[age=3] replace beetroots[age=1]
fill ~-8 ~-2 ~-8 ~8 ~2 ~8 beetroots[age=3] replace beetroots[age=2]

# Nether wart (max age 3)
fill ~-8 ~-2 ~-8 ~8 ~2 ~8 nether_wart[age=3] replace nether_wart[age=0]
fill ~-8 ~-2 ~-8 ~8 ~2 ~8 nether_wart[age=3] replace nether_wart[age=1]
fill ~-8 ~-2 ~-8 ~8 ~2 ~8 nether_wart[age=3] replace nether_wart[age=2]

particle minecraft:happy_villager ~ ~0.5 ~ 4 0.5 4 0.1 15
playsound minecraft:item.bone_meal.use master @s ~ ~ ~ 0.3 1.2
