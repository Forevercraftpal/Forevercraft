# Test: Spawn all 6 tier chests directly (no animation)
# This bypasses the animation system and spawns barrels directly

tellraw @s ["",{text:"Spawning all 6 tier chests directly...",color:"yellow"}]

# Common Chest
execute positioned ~ ~ ~2 run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/default/common",CustomName:{text:"Common Default Treasure",color:"white"}} destroy
execute positioned ~ ~ ~2 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,background:11184810,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Common",color:"gray",italic:false}]}

# Uncommon Chest
execute positioned ~ ~ ~4 run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/default/uncommon",CustomName:{text:"Uncommon Default Treasure",color:"blue"}} destroy
execute positioned ~ ~ ~4 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,background:5635925,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Uncommon",color:"blue",italic:false}]}

# Rare Chest
execute positioned ~ ~ ~6 run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/default/rare",CustomName:{text:"Rare Default Treasure",color:"aqua"}} destroy
execute positioned ~ ~ ~6 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,background:5592575,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Rare",color:"aqua",italic:false}]}

# Ornate Chest
execute positioned ~ ~ ~8 run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/default/ornate",CustomName:{text:"Ornate Default Treasure",color:"dark_purple"}} destroy
execute positioned ~ ~ ~8 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,background:11141290,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Ornate",color:"dark_purple",italic:false}]}

# Exquisite Chest
execute positioned ~ ~ ~10 run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/default/exquisite",CustomName:{text:"Exquisite Default Treasure",color:"light_purple"}} destroy
execute positioned ~ ~ ~10 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,background:16762378,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Exquisite",color:"light_purple",italic:false}]}

# Mythical Chest
execute positioned ~ ~ ~12 run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/default/mythical",CustomName:{text:"Mythical Default Treasure",color:"gold"}} destroy
execute positioned ~ ~ ~12 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,background:9240576,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Mythical",color:"gold",italic:false}]}

tellraw @s ["",{text:"Spawned 6 chests in front of you!",color:"green"}]
tellraw @s ["",{text:"Common → Mythical (closest to furthest)",color:"gray"}]
