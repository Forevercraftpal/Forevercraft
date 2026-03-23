# Node Map — Set overworld display text with count and per-biome grid
# Shows discovered count and directs to Almanac for full biome-by-biome details

$execute as @e[type=text_display,tag=CF.MapOverworld,distance=..5,limit=1] run data modify entity @s text set value [{"text":"$(ow_count)","color":"#8BC34A","bold":true},{"text":"/12 biomes explored","color":"gray"},{"text":"\n","color":"gray"},{"text":"Frozen \u2022 Desert \u2022 Deep Dark \u2022 Jungle\n","color":"dark_gray"},{"text":"Ocean \u2022 Lush Caves \u2022 Mountain \u2022 Badlands\n","color":"dark_gray"},{"text":"Dark Forest \u2022 Swamp \u2022 Cherry \u2022 Mushroom","color":"dark_gray"}]
