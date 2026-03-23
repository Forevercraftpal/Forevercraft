# Test spawn ALL artifacts (all tiers) - spawns barrels organized by tier
# Each barrel holds max 27 items, so large tiers are split across multiple barrels
# Uses: /function evercraft:treasure/test/spawn_artifacts_all

tellraw @s ["",{text:"Spawning ALL artifacts by tier...",color:"yellow"}]

# Row 1: Common (24) and Uncommon (23)
execute positioned ~ ~ ~2 run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:artifacts/common/all",CustomName:{text:"Common Artifacts",color:"gray",italic:false}} destroy
execute positioned ~ ~ ~2 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,background:5592575,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"COMMON (24)",color:"gray",italic:false}]}

execute positioned ~2 ~ ~2 run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:artifacts/uncommon/all",CustomName:{text:"Uncommon Artifacts",color:"blue",italic:false}} destroy
execute positioned ~2 ~ ~2 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,background:5592575,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"UNCOMMON (23)",color:"blue",italic:false}]}

# Row 2: Rare 1 (27), Rare 2 (4), and Ornate Weapons (17)
execute positioned ~ ~ ~5 run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:artifacts/rare/all",CustomName:{text:"Rare Artifacts 1",color:"aqua",italic:false}} destroy
execute positioned ~ ~ ~5 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,background:5592575,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"RARE 1 (27)",color:"aqua",italic:false}]}

execute positioned ~2 ~ ~5 run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:artifacts/rare/all_2",CustomName:{text:"Rare Artifacts 2",color:"aqua",italic:false}} destroy
execute positioned ~2 ~ ~5 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,background:5592575,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"RARE 2 (4)",color:"aqua",italic:false}]}

execute positioned ~4 ~ ~5 run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:artifacts/ornate/all_weapons",CustomName:{text:"Ornate Weapons",color:"dark_purple",italic:false}} destroy
execute positioned ~4 ~ ~5 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,background:11141290,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"ORNATE Weapons (17)",color:"dark_purple",italic:false}]}

# Row 3: Ornate Accessories (14) and Ornate Armor 1-2
execute positioned ~ ~ ~8 run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:artifacts/ornate/all_accessories",CustomName:{text:"Ornate Accessories",color:"dark_purple",italic:false}} destroy
execute positioned ~ ~ ~8 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,background:11141290,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"ORNATE Accessories (14)",color:"dark_purple",italic:false}]}

execute positioned ~2 ~ ~8 run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:artifacts/ornate/all_armor_1",CustomName:{text:"Ornate Armor 1",color:"dark_purple",italic:false}} destroy
execute positioned ~2 ~ ~8 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,background:11141290,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"ORNATE Armor 1 (27)",color:"dark_purple",italic:false}]}

execute positioned ~4 ~ ~8 run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:artifacts/ornate/all_armor_2",CustomName:{text:"Ornate Armor 2",color:"dark_purple",italic:false}} destroy
execute positioned ~4 ~ ~8 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,background:11141290,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"ORNATE Armor 2 (26)",color:"dark_purple",italic:false}]}

# Row 4: Ornate Armor 3, Ornate Tools, and Exquisite 1
execute positioned ~ ~ ~11 run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:artifacts/ornate/all_armor_3",CustomName:{text:"Ornate Armor 3",color:"dark_purple",italic:false}} destroy
execute positioned ~ ~ ~11 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,background:11141290,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"ORNATE Armor 3 (6)",color:"dark_purple",italic:false}]}

execute positioned ~2 ~ ~11 run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:artifacts/ornate/all_tools",CustomName:{text:"Ornate Tools",color:"dark_purple",italic:false}} destroy
execute positioned ~2 ~ ~11 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,background:11141290,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"ORNATE Tools (18)",color:"dark_purple",italic:false}]}

execute positioned ~4 ~ ~11 run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:artifacts/exquisite/all",CustomName:{text:"Exquisite 1",color:"light_purple",italic:false}} destroy
execute positioned ~4 ~ ~11 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,background:16762378,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"EXQUISITE 1 (27)",color:"light_purple",italic:false}]}

# Row 5: Exquisite 2-3 and Mythical 1
execute positioned ~ ~ ~14 run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:artifacts/exquisite/all_2",CustomName:{text:"Exquisite 2",color:"light_purple",italic:false}} destroy
execute positioned ~ ~ ~14 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,background:16762378,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"EXQUISITE 2 (27)",color:"light_purple",italic:false}]}

execute positioned ~2 ~ ~14 run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:artifacts/exquisite/all_3",CustomName:{text:"Exquisite 3",color:"light_purple",italic:false}} destroy
execute positioned ~2 ~ ~14 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,background:16762378,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"EXQUISITE 3 (4)",color:"light_purple",italic:false}]}

execute positioned ~4 ~ ~14 run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:artifacts/mythical/all",CustomName:{text:"Mythical 1",color:"gold",italic:false}} destroy
execute positioned ~4 ~ ~14 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,background:16733695,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"MYTHICAL 1 (27)",color:"gold",italic:false}]}

# Row 6: Mythical 2-3 and Special
execute positioned ~ ~ ~17 run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:artifacts/mythical/all_2",CustomName:{text:"Mythical 2",color:"gold",italic:false}} destroy
execute positioned ~ ~ ~17 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,background:16733695,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"MYTHICAL 2 (27)",color:"gold",italic:false}]}

execute positioned ~2 ~ ~17 run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:artifacts/mythical/all_3",CustomName:{text:"Mythical 3",color:"gold",italic:false}} destroy
execute positioned ~2 ~ ~17 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,background:16733695,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"MYTHICAL 3 (23)",color:"gold",italic:false}]}

# Special Items barrel (Rings + Graviton Core + Ancient Netherite Core)
execute positioned ~4 ~ ~17 run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:artifacts/special/all",CustomName:{text:"Special Artifacts",color:"dark_purple",italic:false}} destroy
execute positioned ~4 ~ ~17 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,background:11141290,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"SPECIAL (15)",color:"dark_purple",italic:false}]}

tellraw @s ["",{text:"Spawned 19 barrels with ALL artifacts!",color:"green"}]
tellraw @s ["",{text:"Row 1: Common (24) | Uncommon (23)",color:"gray"}]
tellraw @s ["",{text:"Row 2: Rare 1 (27) | Rare 2 (4) | Ornate Weapons (17)",color:"gray"}]
tellraw @s ["",{text:"Row 3: Ornate Accessories (14) | Ornate Armor 1-2",color:"gray"}]
tellraw @s ["",{text:"Row 4: Ornate Armor 3 (6) | Ornate Tools (18) | Exquisite 1 (27)",color:"gray"}]
tellraw @s ["",{text:"Row 5: Exquisite 2-3 | Mythical 1",color:"gray"}]
tellraw @s ["",{text:"Row 6: Mythical 2-3 | Special (Rings + Cores)",color:"gray"}]
