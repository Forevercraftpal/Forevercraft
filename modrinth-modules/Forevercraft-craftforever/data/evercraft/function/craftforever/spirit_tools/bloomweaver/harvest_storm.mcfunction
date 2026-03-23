# === BLOOMWEAVER — 7x7 HARVEST STORM ===
# Auto-harvest all mature crops in 7x7, replant at age 0
# Run at player position

# Harvest mature wheat → drop items, replant
execute store result score #st_harvested ec.var run fill ~-3 ~-1 ~-3 ~3 ~1 ~3 wheat[age=0] replace wheat[age=7]

# Harvest mature carrots
execute store result score #st_h2 ec.var run fill ~-3 ~-1 ~-3 ~3 ~1 ~3 carrots[age=0] replace carrots[age=7]
scoreboard players operation #st_harvested ec.var += #st_h2 ec.var

# Harvest mature potatoes
execute store result score #st_h2 ec.var run fill ~-3 ~-1 ~-3 ~3 ~1 ~3 potatoes[age=0] replace potatoes[age=7]
scoreboard players operation #st_harvested ec.var += #st_h2 ec.var

# Harvest mature beetroots
execute store result score #st_h2 ec.var run fill ~-3 ~-1 ~-3 ~3 ~1 ~3 beetroots[age=0] replace beetroots[age=3]
scoreboard players operation #st_harvested ec.var += #st_h2 ec.var

# Harvest mature nether wart
execute store result score #st_h2 ec.var run fill ~-3 ~-1 ~-3 ~3 ~1 ~3 nether_wart[age=0] replace nether_wart[age=3]
scoreboard players operation #st_harvested ec.var += #st_h2 ec.var

# Only give feedback if something was harvested
execute if score #st_harvested ec.var matches 1.. run function evercraft:craftforever/spirit_tools/bloomweaver/harvest_drops

# Auto-replant happens via the fill replace (sets age back to 0)
