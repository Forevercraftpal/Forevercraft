# Node Map — Build end text display
# Run as text_display entity
# #cf_m8 = End (bit 7)

execute if score #cf_m8 ec.temp matches 1 run data modify entity @s text set value [{"text":"\u2713 End Islands","color":"#A855F7"}]
execute if score #cf_m8 ec.temp matches 0 run data modify entity @s text set value [{"text":"\u25cb End Islands","color":"dark_gray"}]
