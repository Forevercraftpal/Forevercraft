# Guild Expedition — Load
# Initialize state variables (preserve across reloads)

# Current expedition activity (1-5, 7-13), 0 = none yet
# Fountain (6) was removed as a standalone activity — migrate old worlds
execute unless score #expedition_activity ec.var matches 0.. run scoreboard players set #expedition_activity ec.var 0
execute if score #expedition_activity ec.var matches 6 run scoreboard players set #expedition_activity ec.var 7
# Current multiplier (125-500, ×100 scale: 1.25x to 5.00x)
execute unless score #expedition_mult ec.var matches 0.. run scoreboard players set #expedition_mult ec.var 125
# Day the expedition was rolled
execute unless score #expedition_day ec.var matches 0.. run scoreboard players set #expedition_day ec.var 0
# Fountain bonus active (0/1)
execute unless score #expedition_fountain ec.var matches 0.. run scoreboard players set #expedition_fountain ec.var 0

# === Guild Expedition (Cooperative Biome Exploration) ===
scoreboard objectives add ec.gexp_vote trigger "Expedition Vote"
scoreboard objectives add ec.gexp_contrib dummy "Expedition Contribution"
scoreboard objectives add ec.gexp_kill_base dummy "Expedition Kill Baseline"
scoreboard players enable @a ec.gexp_vote

# Biome name lookup array (indexed 0-24, matches biome/detect IDs)
data modify storage evercraft:expedition biome_names set value ["Plains","Forest","Flower Forest","Dark Forest","Taiga","Mountain","Jungle","Desert","Savanna","Ocean","River","Swamp","Mushroom","Ice","Badlands","Lush Caves","Dripstone Caves","Deep Dark","Nether Wastes","Crimson Forest","Warped Forest","Basalt Deltas","Soul Sand Valley","The End","Windswept"]

# Bossbar for active expeditions (created once, toggled visible/hidden)
bossbar add evercraft:guild_expedition {"text":"Guild Expedition","color":"green"}
bossbar set evercraft:guild_expedition color green
bossbar set evercraft:guild_expedition max 500
bossbar set evercraft:guild_expedition visible false

# Schedule expedition tick
schedule function evercraft:guild/expedition/gexp_tick 5s
