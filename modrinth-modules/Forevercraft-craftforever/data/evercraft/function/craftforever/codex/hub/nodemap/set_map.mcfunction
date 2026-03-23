# Node Map — Build text map from bitfield
# Uses #cf_bits ec.temp (copied from ec.cf_nodes_found)
# Builds check/cross for each biome and writes to text_displays

# Helper: check each bit and build the map text
# We'll use a simpler approach — write static text with dynamic check/cross markers

# Overworld (bits 0-4, 8-14): Frozen, Desert, DeepDark, Jungle, Ocean, Mushroom, LushCaves, Mountain, Badlands, DarkForest, Swamp, Cherry
# We'll use inline score display since macro text arrays are complex

# For simplicity, write a pre-formatted text with check/unknown markers
# Overworld grid
scoreboard players set #cf_d ec.temp 1
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
# Store each bit result as individual scores for the map
scoreboard players operation #cf_m1 ec.temp = #cf_b ec.temp

scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 2
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_m2 ec.temp = #cf_b ec.temp

scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 4
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_m3 ec.temp = #cf_b ec.temp

scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 8
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_m4 ec.temp = #cf_b ec.temp

scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 16
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_m5 ec.temp = #cf_b ec.temp

# Build overworld display using conditional text
# Row 1: Frozen, Desert, Deep Dark
# Row 2: Jungle, Ocean, Mushroom
# Row 3: Lush Caves, Mountain, Badlands
# Row 4: Dark Forest, Swamp, Cherry

# Use a simpler approach — write the map with score placeholders
execute as @e[type=text_display,tag=CF.MapOverworld,distance=..5,limit=1] run data modify entity @s text set value [{"score":{"name":"#cf_m1","objective":"ec.temp"},"color":"green","interpret":false},{"text":"","color":"gray"}]

# Actually, score components don't work well for checkmarks. Let's write conditional sets:
# Frozen
execute if score #cf_m1 ec.temp matches 1 as @e[type=text_display,tag=CF.MapOverworld,distance=..5,limit=1] run data modify entity @s text set value [{"text":"\u2713 Frozen  ","color":"#7DD3FC"},{"text":"","color":"gray"}]
execute if score #cf_m1 ec.temp matches 0 as @e[type=text_display,tag=CF.MapOverworld,distance=..5,limit=1] run data modify entity @s text set value [{"text":"\u25cb Frozen  ","color":"dark_gray"},{"text":"","color":"gray"}]

# This approach is limited for multi-line. Let's use a simpler summary format.
# Overworld: list discovered names, show ? for undiscovered
# We'll build a comprehensive text array

# Simplified: just show all names with green check or gray circle
execute as @e[type=text_display,tag=CF.MapOverworld,distance=..5,limit=1] run function evercraft:craftforever/codex/hub/nodemap/build_overworld

# Nether: bits 5-6 (Crimson=32, Warped=64)
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 32
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_m6 ec.temp = #cf_b ec.temp

scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 64
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_m7 ec.temp = #cf_b ec.temp

execute as @e[type=text_display,tag=CF.MapNether,distance=..5,limit=1] run function evercraft:craftforever/codex/hub/nodemap/build_nether

# End: bit 7 (End=128)
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 128
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_m8 ec.temp = #cf_b ec.temp

execute as @e[type=text_display,tag=CF.MapEnd,distance=..5,limit=1] run function evercraft:craftforever/codex/hub/nodemap/build_end
