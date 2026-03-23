# Almanac — Set entry text based on discovery
# Run as text_display entity
# Args: bit (bitmask), name, biome, yield, color, hint, rarity, rank

# Check if bit is set in #cf_bits
$scoreboard players set #cf_entry_mask ec.temp $(bit)
scoreboard players operation #cf_entry_check ec.temp = #cf_bits ec.temp
scoreboard players operation #cf_entry_check ec.temp /= #cf_entry_mask ec.temp
scoreboard players operation #cf_entry_check ec.temp %= #2 ec.const

# Discovered: show full info with rarity symbol + biome
# Rarity symbols: Uncommon=\u25c6, Rare=\u2605, Ornate=\u2726, Exquisite=\u2742, Mythical=\u2604
$execute if score #cf_entry_check ec.temp matches 1 run data modify entity @s text set value [{"text":"$(rarity) ","color":"$(color)"},{"text":"$(name)","color":"$(color)","bold":true},{"text":"\n     ","color":"gray"},{"text":"$(biome)","color":"gray"},{"text":" \u2502 ","color":"dark_gray"},{"text":"Yields: ","color":"dark_gray"},{"text":"$(yield)","color":"white"},{"text":" \u2502 ","color":"dark_gray"},{"text":"Rank $(rank)+","color":"dark_gray"}]

# Undiscovered: show atmospheric hint with locked indicator
$execute if score #cf_entry_check ec.temp matches 0 run data modify entity @s text set value [{"text":"\u2617 ","color":"dark_gray"},{"text":"???","color":"dark_gray","bold":true},{"text":"\n     ","color":"dark_gray"},{"text":"\u201c$(hint)\u201d","color":"dark_gray","italic":true}]
