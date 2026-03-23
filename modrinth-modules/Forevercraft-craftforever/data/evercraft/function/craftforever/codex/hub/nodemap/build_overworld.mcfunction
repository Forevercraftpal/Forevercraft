# Node Map — Build overworld text display
# Run as text_display entity
# Uses #cf_m1..m5 + #cf_bits ec.temp
# Shows each biome as a line with check/circle

# Count overworld discovered (bits 0-4, 8-14 = 13 overworld biomes)
scoreboard players set #cf_ow_count ec.temp 0
execute if score #cf_m1 ec.temp matches 1 run scoreboard players add #cf_ow_count ec.temp 1
execute if score #cf_m2 ec.temp matches 1 run scoreboard players add #cf_ow_count ec.temp 1
execute if score #cf_m3 ec.temp matches 1 run scoreboard players add #cf_ow_count ec.temp 1
execute if score #cf_m4 ec.temp matches 1 run scoreboard players add #cf_ow_count ec.temp 1
execute if score #cf_m5 ec.temp matches 1 run scoreboard players add #cf_ow_count ec.temp 1

# Check remaining OW bits (9-14)
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 256
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run scoreboard players add #cf_ow_count ec.temp 1
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 512
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run scoreboard players add #cf_ow_count ec.temp 1
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 1024
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run scoreboard players add #cf_ow_count ec.temp 1
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 2048
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run scoreboard players add #cf_ow_count ec.temp 1
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 4096
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run scoreboard players add #cf_ow_count ec.temp 1
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 8192
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run scoreboard players add #cf_ow_count ec.temp 1
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 16384
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run scoreboard players add #cf_ow_count ec.temp 1

# Store to storage for macro
execute store result storage evercraft:cf_temp ow_count int 1 run scoreboard players get #cf_ow_count ec.temp
function evercraft:craftforever/codex/hub/nodemap/set_overworld with storage evercraft:cf_temp
