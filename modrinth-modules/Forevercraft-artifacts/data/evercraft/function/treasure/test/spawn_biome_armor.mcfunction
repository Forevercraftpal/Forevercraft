# Test spawn all biome armor pieces - spawns a chest with all 25 pieces
# Uses: /function evercraft:treasure/test/spawn_biome_armor

tellraw @s ["",{text:"Spawning all 25 biome armor pieces...",color:"gold"}]

# Spawn barrel with all biome armor
execute positioned ~ ~ ~2 run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/test/all_biome_armor",CustomName:{text:"All Biome Armor",color:"dark_aqua"}} destroy
execute positioned ~ ~ ~2 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,background:1442840,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Biome Armor (25 pieces)",color:"dark_aqua",italic:false}]}

tellraw @s ["",{text:"Spawned chest 2 blocks in front of you!",color:"green"}]
tellraw @s ["",{text:"Open the barrel to get all 25 biome armor pieces.",color:"gray"}]
