# Node Map — Build nether text display
# Run as text_display entity
# #cf_m6 = Crimson (bit 5), #cf_m7 = Warped (bit 6)

# Build nether display
execute if score #cf_m6 ec.temp matches 1 if score #cf_m7 ec.temp matches 1 run data modify entity @s text set value [{"text":"\u2713 Crimson Forest  ","color":"#EF4444"},{"text":"\u2713 Warped Forest","color":"#2DD4BF"}]
execute if score #cf_m6 ec.temp matches 1 if score #cf_m7 ec.temp matches 0 run data modify entity @s text set value [{"text":"\u2713 Crimson Forest  ","color":"#EF4444"},{"text":"\u25cb Warped Forest","color":"dark_gray"}]
execute if score #cf_m6 ec.temp matches 0 if score #cf_m7 ec.temp matches 1 run data modify entity @s text set value [{"text":"\u25cb Crimson Forest  ","color":"dark_gray"},{"text":"\u2713 Warped Forest","color":"#2DD4BF"}]
execute if score #cf_m6 ec.temp matches 0 if score #cf_m7 ec.temp matches 0 run data modify entity @s text set value [{"text":"\u25cb Crimson Forest  ","color":"dark_gray"},{"text":"\u25cb Warped Forest","color":"dark_gray"}]
