# Node Map — Overworld detail (click handler)
# Runs as interaction entity

data remove entity @s interaction

# Get nearest codex player's bitfield
execute store result score #cf_bits ec.temp run scoreboard players get @p[tag=CF.InCodex,distance=..5] ec.cf_nodes_found

# Check each overworld bit and build status lines
# Bit 0: Frozen, 1: Desert, 2: Deep Dark, 3: Jungle, 4: Ocean
# Bit 9: Lush Caves, 10: Mountain, 11: Badlands, 12: Dark Forest, 13: Swamp, 14: Cherry, 8: Mushroom

tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"\n"},{"text":"\u2550\u2550\u2550 ","color":"#8BC34A"},{"text":"\u2302 Overworld Nodes","color":"white","bold":true},{"text":" \u2550\u2550\u2550","color":"#8BC34A"},{"text":"\n"},{"text":"12 biome nodes hidden across the Overworld.","color":"gray","italic":true},{"text":"\n"},{"text":"\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500","color":"dark_gray"}]

# Individual node status via conditional tellraws
# Frozen (bit 0)
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"  \u2713 ","color":"#7DD3FC"},{"text":"Frostcrystal Vein","color":"#7DD3FC"},{"text":" \u2014 Frozen Biomes","color":"gray"}]
execute if score #cf_b ec.temp matches 0 run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"  \u25cb ","color":"dark_gray"},{"text":"??? ","color":"dark_gray","italic":true},{"text":"\u2014 Frozen Biomes ","color":"dark_gray"},{"text":"(Rank 15)","color":"dark_gray"}]

# Desert (bit 1)
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 2
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"  \u2713 ","color":"#FCD34D"},{"text":"Sunite Deposit","color":"#FCD34D"},{"text":" \u2014 Desert","color":"gray"}]
execute if score #cf_b ec.temp matches 0 run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"  \u25cb ","color":"dark_gray"},{"text":"??? ","color":"dark_gray","italic":true},{"text":"\u2014 Desert ","color":"dark_gray"},{"text":"(Rank 15)","color":"dark_gray"}]

# Deep Dark (bit 2)
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 4
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"  \u2713 ","color":"#164E63"},{"text":"Voidite Cluster","color":"#164E63"},{"text":" \u2014 Deep Dark","color":"gray"}]
execute if score #cf_b ec.temp matches 0 run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"  \u25cb ","color":"dark_gray"},{"text":"??? ","color":"dark_gray","italic":true},{"text":"\u2014 Deep Dark ","color":"dark_gray"},{"text":"(Rank 40)","color":"#AB47BC"}]

# Jungle (bit 3)
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 8
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"  \u2713 ","color":"#4ADE80"},{"text":"Livingstone Node","color":"#4ADE80"},{"text":" \u2014 Jungle","color":"gray"}]
execute if score #cf_b ec.temp matches 0 run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"  \u25cb ","color":"dark_gray"},{"text":"??? ","color":"dark_gray","italic":true},{"text":"\u2014 Jungle ","color":"dark_gray"},{"text":"(Rank 10)","color":"green"}]

# Ocean (bit 4)
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 16
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"  \u2713 ","color":"#22D3EE"},{"text":"Tideforged Coral","color":"#22D3EE"},{"text":" \u2014 Ocean","color":"gray"}]
execute if score #cf_b ec.temp matches 0 run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"  \u25cb ","color":"dark_gray"},{"text":"??? ","color":"dark_gray","italic":true},{"text":"\u2014 Ocean ","color":"dark_gray"},{"text":"(Rank 25)","color":"yellow"}]

# Mushroom (bit 8)
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 256
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"  \u2713 ","color":"#E879F9"},{"text":"Sporite Growth","color":"#E879F9"},{"text":" \u2014 Mushroom Island","color":"gray"}]
execute if score #cf_b ec.temp matches 0 run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"  \u25cb ","color":"dark_gray"},{"text":"??? ","color":"dark_gray","italic":true},{"text":"\u2014 Mushroom Island ","color":"dark_gray"},{"text":"(Rank 25)","color":"yellow"}]

# Lush Caves (bit 9)
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 512
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"  \u2713 ","color":"#34D399"},{"text":"Verdant Geode","color":"#34D399"},{"text":" \u2014 Lush Caves","color":"gray"}]
execute if score #cf_b ec.temp matches 0 run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"  \u25cb ","color":"dark_gray"},{"text":"??? ","color":"dark_gray","italic":true},{"text":"\u2014 Lush Caves ","color":"dark_gray"},{"text":"(Rank 20)","color":"yellow"}]

# Mountain (bit 10)
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 1024
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"  \u2713 ","color":"#E2E8F0"},{"text":"Skymetal Vein","color":"#E2E8F0"},{"text":" \u2014 Mountain Peaks","color":"gray"}]
execute if score #cf_b ec.temp matches 0 run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"  \u25cb ","color":"dark_gray"},{"text":"??? ","color":"dark_gray","italic":true},{"text":"\u2014 Mountain Peaks ","color":"dark_gray"},{"text":"(Rank 35)","color":"light_purple"}]

# Badlands (bit 11)
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 2048
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"  \u2713 ","color":"#F97316"},{"text":"Sunbaked Clay","color":"#F97316"},{"text":" \u2014 Badlands","color":"gray"}]
execute if score #cf_b ec.temp matches 0 run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"  \u25cb ","color":"dark_gray"},{"text":"??? ","color":"dark_gray","italic":true},{"text":"\u2014 Badlands ","color":"dark_gray"},{"text":"(Rank 15)","color":"yellow"}]

# Dark Forest (bit 12)
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 4096
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"  \u2713 ","color":"#581C87"},{"text":"Shadowroot","color":"#581C87"},{"text":" \u2014 Dark Forest","color":"gray"}]
execute if score #cf_b ec.temp matches 0 run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"  \u25cb ","color":"dark_gray"},{"text":"??? ","color":"dark_gray","italic":true},{"text":"\u2014 Dark Forest ","color":"dark_gray"},{"text":"(Rank 20)","color":"yellow"}]

# Swamp (bit 13)
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 8192
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"  \u2713 ","color":"#65A30D"},{"text":"Bogite Deposit","color":"#65A30D"},{"text":" \u2014 Swamp","color":"gray"}]
execute if score #cf_b ec.temp matches 0 run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"  \u25cb ","color":"dark_gray"},{"text":"??? ","color":"dark_gray","italic":true},{"text":"\u2014 Swamp ","color":"dark_gray"},{"text":"(Rank 10)","color":"green"}]

# Cherry (bit 14)
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 16384
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"  \u2713 ","color":"#F9A8D4"},{"text":"Blossom Crystal","color":"#F9A8D4"},{"text":" \u2014 Cherry Grove","color":"gray"}]
execute if score #cf_b ec.temp matches 0 run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"  \u25cb ","color":"dark_gray"},{"text":"??? ","color":"dark_gray","italic":true},{"text":"\u2014 Cherry Grove ","color":"dark_gray"},{"text":"(Rank 25)","color":"yellow"}]

tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500","color":"dark_gray"}]

# Sound + cooldown
playsound minecraft:ui.button.click master @p[tag=CF.InCodex,distance=..5] ~ ~ ~ 0.5 1.2
execute as @p[tag=CF.InCodex,distance=..5] run scoreboard players set @s ec.cf_codex_cd 3
