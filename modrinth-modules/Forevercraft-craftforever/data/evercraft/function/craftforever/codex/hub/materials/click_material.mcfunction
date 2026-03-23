# Material Index — Click handler for material row
# Runs as interaction entity, outputs detail tellraw to nearest codex player

data remove entity @s interaction

# Mat 1: Frostcrystal Shard — Frozen biomes
execute if entity @s[tag=CF.MatRow1] run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"\n"},{"text":"\u25c6 ","color":"#7DD3FC"},{"text":"Frostcrystal Shard","color":"#7DD3FC","bold":true},{"text":"\n"},{"text":"Shards of frozen light from tundra nodes.","color":"gray","italic":true},{"text":"\n"},{"text":"Biome: ","color":"gray"},{"text":"Frozen / Snowy","color":"#7DD3FC"},{"text":"\n"},{"text":"Rarity: ","color":"gray"},{"text":"Rare","color":"aqua"},{"text":"\n"},{"text":"Used in higher-tier forging recipes.","color":"dark_gray","italic":true}]

# Mat 2: Sunite Dust — Desert/warm biomes
execute if entity @s[tag=CF.MatRow2] run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"\n"},{"text":"\u25c6 ","color":"#FCD34D"},{"text":"Sunite Dust","color":"#FCD34D","bold":true},{"text":"\n"},{"text":"Golden dust that glitters like sunlight.","color":"gray","italic":true},{"text":"\n"},{"text":"Biome: ","color":"gray"},{"text":"Desert / Badlands","color":"#FCD34D"},{"text":"\n"},{"text":"Rarity: ","color":"gray"},{"text":"Rare","color":"aqua"},{"text":"\n"},{"text":"Used in higher-tier forging recipes.","color":"dark_gray","italic":true}]

# Mat 3: Voidite Fragment — Deep dark
execute if entity @s[tag=CF.MatRow3] run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"\n"},{"text":"\u25c6 ","color":"#164E63"},{"text":"Voidite Fragment","color":"#164E63","bold":true},{"text":"\n"},{"text":"A shard of compressed darkness.","color":"gray","italic":true},{"text":"\n"},{"text":"Biome: ","color":"gray"},{"text":"Deep Dark","color":"#164E63"},{"text":"\n"},{"text":"Rarity: ","color":"gray"},{"text":"Exquisite","color":"gold"},{"text":"\n"},{"text":"Highly prized by master forgers.","color":"dark_gray","italic":true}]

# Mat 4: Livingstone Moss — Lush biomes
execute if entity @s[tag=CF.MatRow4] run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"\n"},{"text":"\u25c6 ","color":"#4ADE80"},{"text":"Livingstone Moss","color":"#4ADE80","bold":true},{"text":"\n"},{"text":"Moss that pulses with gentle life.","color":"gray","italic":true},{"text":"\n"},{"text":"Biome: ","color":"gray"},{"text":"Lush Caves / Forest","color":"#4ADE80"},{"text":"\n"},{"text":"Rarity: ","color":"gray"},{"text":"Uncommon","color":"green"},{"text":"\n"},{"text":"A common but useful crafting material.","color":"dark_gray","italic":true}]

# Mat 5: Tideforged Pearl — Ocean biomes
execute if entity @s[tag=CF.MatRow5] run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"\n"},{"text":"\u25c6 ","color":"#22D3EE"},{"text":"Tideforged Pearl","color":"#22D3EE","bold":true},{"text":"\n"},{"text":"A pearl shaped by ocean currents over millennia.","color":"gray","italic":true},{"text":"\n"},{"text":"Biome: ","color":"gray"},{"text":"Ocean / Beach","color":"#22D3EE"},{"text":"\n"},{"text":"Rarity: ","color":"gray"},{"text":"Rare","color":"aqua"},{"text":"\n"},{"text":"Sought by artisans and traders alike.","color":"dark_gray","italic":true}]

# Mat 6: Blazite Crystal — Nether biomes
execute if entity @s[tag=CF.MatRow6] run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"\n"},{"text":"\u25c6 ","color":"#EF4444"},{"text":"Blazite Crystal","color":"#EF4444","bold":true},{"text":"\n"},{"text":"Crystallized nether flame, burning eternally.","color":"gray","italic":true},{"text":"\n"},{"text":"Biome: ","color":"gray"},{"text":"Nether Wastes / Basalt","color":"#EF4444"},{"text":"\n"},{"text":"Rarity: ","color":"gray"},{"text":"Ornate","color":"light_purple"},{"text":"\n"},{"text":"Essential for advanced alloy forging.","color":"dark_gray","italic":true}]

# Mat 7: Warpstone Dust — Warped Forest
execute if entity @s[tag=CF.MatRow7] run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"\n"},{"text":"\u25c6 ","color":"#2DD4BF"},{"text":"Warpstone Dust","color":"#2DD4BF","bold":true},{"text":"\n"},{"text":"Dust from between dimensions.","color":"gray","italic":true},{"text":"\n"},{"text":"Biome: ","color":"gray"},{"text":"Warped / Crimson Forest","color":"#2DD4BF"},{"text":"\n"},{"text":"Rarity: ","color":"gray"},{"text":"Ornate","color":"light_purple"},{"text":"\n"},{"text":"Bends space when forged into alloys.","color":"dark_gray","italic":true}]

# Mat 8: Endric Shard — End biomes
execute if entity @s[tag=CF.MatRow8] run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"\n"},{"text":"\u25c6 ","color":"#A855F7"},{"text":"Endric Shard","color":"#A855F7","bold":true},{"text":"\n"},{"text":"A fragment of the void between stars.","color":"gray","italic":true},{"text":"\n"},{"text":"Biome: ","color":"gray"},{"text":"The End","color":"#A855F7"},{"text":"\n"},{"text":"Rarity: ","color":"gray"},{"text":"Mythical","color":"gold"},{"text":"\n"},{"text":"The rarest of all forging materials.","color":"dark_gray","italic":true}]

# Mat 9: Sporite Cap — Mushroom biomes
execute if entity @s[tag=CF.MatRow9] run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"\n"},{"text":"\u25c6 ","color":"#E879F9"},{"text":"Sporite Cap","color":"#E879F9","bold":true},{"text":"\n"},{"text":"A luminous fungal cap that hums softly.","color":"gray","italic":true},{"text":"\n"},{"text":"Biome: ","color":"gray"},{"text":"Mushroom Fields","color":"#E879F9"},{"text":"\n"},{"text":"Rarity: ","color":"gray"},{"text":"Ornate","color":"light_purple"},{"text":"\n"},{"text":"Prized for its unique alchemical properties.","color":"dark_gray","italic":true}]

# Mat 10: Verdant Gem — Jungle biomes
execute if entity @s[tag=CF.MatRow10] run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"\n"},{"text":"\u25c6 ","color":"#34D399"},{"text":"Verdant Gem","color":"#34D399","bold":true},{"text":"\n"},{"text":"A gem saturated with life energy.","color":"gray","italic":true},{"text":"\n"},{"text":"Biome: ","color":"gray"},{"text":"Jungle / Bamboo","color":"#34D399"},{"text":"\n"},{"text":"Rarity: ","color":"gray"},{"text":"Rare","color":"aqua"},{"text":"\n"},{"text":"Channels natural growth into forged metal.","color":"dark_gray","italic":true}]

# Mat 11: Skymetal Nugget — Mountain biomes
execute if entity @s[tag=CF.MatRow11] run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"\n"},{"text":"\u25c6 ","color":"#E2E8F0"},{"text":"Skymetal Nugget","color":"#E2E8F0","bold":true},{"text":"\n"},{"text":"Metal fallen from beyond the sky.","color":"gray","italic":true},{"text":"\n"},{"text":"Biome: ","color":"gray"},{"text":"Mountains / Peaks","color":"#E2E8F0"},{"text":"\n"},{"text":"Rarity: ","color":"gray"},{"text":"Exquisite","color":"gold"},{"text":"\n"},{"text":"Incredibly light yet unbreakable.","color":"dark_gray","italic":true}]

# Mat 12: Sunforged Brick — Savanna biomes
execute if entity @s[tag=CF.MatRow12] run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"\n"},{"text":"\u25c6 ","color":"#F97316"},{"text":"Sunforged Brick","color":"#F97316","bold":true},{"text":"\n"},{"text":"Clay baked by millennia of unbroken sun.","color":"gray","italic":true},{"text":"\n"},{"text":"Biome: ","color":"gray"},{"text":"Savanna / Plains","color":"#F97316"},{"text":"\n"},{"text":"Rarity: ","color":"gray"},{"text":"Rare","color":"aqua"},{"text":"\n"},{"text":"Retains heat long after forging.","color":"dark_gray","italic":true}]

# Mat 13: Shadowroot Extract — Dark forest
execute if entity @s[tag=CF.MatRow13] run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"\n"},{"text":"\u25c6 ","color":"#581C87"},{"text":"Shadowroot Extract","color":"#581C87","bold":true},{"text":"\n"},{"text":"Sap from roots that grow in total darkness.","color":"gray","italic":true},{"text":"\n"},{"text":"Biome: ","color":"gray"},{"text":"Dark Forest / Roofed","color":"#581C87"},{"text":"\n"},{"text":"Rarity: ","color":"gray"},{"text":"Rare","color":"aqua"},{"text":"\n"},{"text":"Absorbs light and strengthens shadow.","color":"dark_gray","italic":true}]

# Mat 14: Bogstone — Swamp biomes
execute if entity @s[tag=CF.MatRow14] run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"\n"},{"text":"\u25c6 ","color":"#65A30D"},{"text":"Bogstone","color":"#65A30D","bold":true},{"text":"\n"},{"text":"Ancient stone marinated in swamp water.","color":"gray","italic":true},{"text":"\n"},{"text":"Biome: ","color":"gray"},{"text":"Swamp / Mangrove","color":"#65A30D"},{"text":"\n"},{"text":"Rarity: ","color":"gray"},{"text":"Uncommon","color":"green"},{"text":"\n"},{"text":"Surprisingly resilient when properly forged.","color":"dark_gray","italic":true}]

# Mat 15: Blossom Essence — Cherry / Flower biomes
execute if entity @s[tag=CF.MatRow15] run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"\n"},{"text":"\u25c6 ","color":"#F9A8D4"},{"text":"Blossom Essence","color":"#F9A8D4","bold":true},{"text":"\n"},{"text":"Distilled petals from an eternal spring.","color":"gray","italic":true},{"text":"\n"},{"text":"Biome: ","color":"gray"},{"text":"Cherry Grove / Flower","color":"#F9A8D4"},{"text":"\n"},{"text":"Rarity: ","color":"gray"},{"text":"Rare","color":"aqua"},{"text":"\n"},{"text":"Infuses forged items with gentle warmth.","color":"dark_gray","italic":true}]

# Sound + cooldown
playsound minecraft:ui.button.click master @p[tag=CF.InCodex,distance=..5] ~ ~ ~ 0.5 1.2
execute as @p[tag=CF.InCodex,distance=..5] run scoreboard players set @s ec.cf_codex_cd 3
