# Spawn all biome weapon variants in labeled barrels
# Uses: /function evercraft:treasure/test/spawn_biome_weapons

tellraw @s ["",{text:"Spawning biome weapon crates...",color:"gold"}]

# Row 1: Badlands, Basalt Deltas, Crimson Forest, Dark Forest, Deep Dark, Desert
# --- Badlands ---
execute positioned ~0 ~ ~0 run setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{text:"Badlands Weapons",color:"gold"}} destroy
execute positioned ~0 ~ ~0 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Badlands",color:"gold",italic:false}]}
execute positioned ~0 ~ ~0 run loot insert ~ ~ ~ loot evercraft:treasure/chests/badlands/orcish_sword
execute positioned ~0 ~ ~0 run loot insert ~ ~ ~ loot evercraft:treasure/chests/badlands/orcish_axe

# --- Basalt Deltas ---
execute positioned ~2 ~ ~0 run setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{text:"Basalt Deltas Weapons",color:"dark_red"}} destroy
execute positioned ~2 ~ ~0 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Basalt Deltas",color:"dark_red",italic:false}]}
execute positioned ~2 ~ ~0 run loot insert ~ ~ ~ loot evercraft:treasure/chests/basalt/basalt_hammer
execute positioned ~2 ~ ~0 run loot insert ~ ~ ~ loot evercraft:treasure/chests/basalt/gravity_hammer

# --- Crimson Forest ---
execute positioned ~4 ~ ~0 run setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{text:"Crimson Weapons",color:"red"}} destroy
execute positioned ~4 ~ ~0 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Crimson",color:"red",italic:false}]}
execute positioned ~4 ~ ~0 run loot insert ~ ~ ~ loot evercraft:treasure/chests/crimson/crimson_glaive
execute positioned ~4 ~ ~0 run loot insert ~ ~ ~ loot evercraft:treasure/chests/crimson/pride_of_the_piglins

# --- Dark Forest ---
execute positioned ~6 ~ ~0 run setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{text:"Dark Forest Weapons",color:"dark_green"}} destroy
execute positioned ~6 ~ ~0 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Dark Forest",color:"dark_green",italic:false}]}
execute positioned ~6 ~ ~0 run loot insert ~ ~ ~ loot evercraft:treasure/chests/dark_forest/dark_katana
execute positioned ~6 ~ ~0 run loot insert ~ ~ ~ loot evercraft:treasure/chests/dark_forest/nightmares_bite

# --- Deep Dark ---
execute positioned ~8 ~ ~0 run setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{text:"Deep Dark Weapons",color:"dark_aqua"}} destroy
execute positioned ~8 ~ ~0 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Deep Dark",color:"dark_aqua",italic:false}]}
execute positioned ~8 ~ ~0 run loot insert ~ ~ ~ loot evercraft:treasure/chests/deep_dark/eternal_knife
execute positioned ~8 ~ ~0 run loot insert ~ ~ ~ loot evercraft:treasure/chests/deep_dark/mythril_saber
execute positioned ~8 ~ ~0 run loot insert ~ ~ ~ loot evercraft:treasure/chests/deep_dark/sword_of_edicts

# --- Desert ---
execute positioned ~10 ~ ~0 run setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{text:"Desert Weapons",color:"yellow"}} destroy
execute positioned ~10 ~ ~0 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Desert",color:"yellow",italic:false}]}
execute positioned ~10 ~ ~0 run loot insert ~ ~ ~ loot evercraft:treasure/chests/desert/hellenic_sword
execute positioned ~10 ~ ~0 run loot insert ~ ~ ~ loot evercraft:treasure/chests/desert/kemetian_sword

# Row 2: Dripstone, End, Flower, Ice, Jungle, Lush Caves
# --- Dripstone ---
execute positioned ~0 ~ ~3 run setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{text:"Dripstone Weapons",color:"gray"}} destroy
execute positioned ~0 ~ ~3 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Dripstone",color:"gray",italic:false}]}
execute positioned ~0 ~ ~3 run loot insert ~ ~ ~ loot evercraft:treasure/chests/dripstone/drill
execute positioned ~0 ~ ~3 run loot insert ~ ~ ~ loot evercraft:treasure/chests/dripstone/mountain_pickaxe

# --- End ---
execute positioned ~2 ~ ~3 run setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{text:"End Weapons",color:"dark_purple"}} destroy
execute positioned ~2 ~ ~3 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"End",color:"dark_purple",italic:false}]}
execute positioned ~2 ~ ~3 run loot insert ~ ~ ~ loot evercraft:treasure/chests/end/ender_defender_sword
execute positioned ~2 ~ ~3 run loot insert ~ ~ ~ loot evercraft:treasure/chests/end/void_touched_blade

# --- Flower ---
execute positioned ~4 ~ ~3 run setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{text:"Flower Weapons",color:"light_purple"}} destroy
execute positioned ~4 ~ ~3 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Flower",color:"light_purple",italic:false}]}
execute positioned ~4 ~ ~3 run loot insert ~ ~ ~ loot evercraft:treasure/chests/flower/grass_katana
execute positioned ~4 ~ ~3 run loot insert ~ ~ ~ loot evercraft:treasure/chests/flower/sakura_sword

# --- Ice ---
execute positioned ~6 ~ ~3 run setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{text:"Ice Weapons",color:"blue"}} destroy
execute positioned ~6 ~ ~3 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Ice",color:"blue",italic:false}]}
execute positioned ~6 ~ ~3 run loot insert ~ ~ ~ loot evercraft:treasure/chests/ice/frost_bow
execute positioned ~6 ~ ~3 run loot insert ~ ~ ~ loot evercraft:treasure/chests/ice/winters_touch

# --- Jungle ---
execute positioned ~8 ~ ~3 run setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{text:"Jungle Weapons",color:"green"}} destroy
execute positioned ~8 ~ ~3 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Jungle",color:"green",italic:false}]}
execute positioned ~8 ~ ~3 run loot insert ~ ~ ~ loot evercraft:treasure/chests/jungle/bamboo_ballista
execute positioned ~8 ~ ~3 run loot insert ~ ~ ~ loot evercraft:treasure/chests/jungle/jungle_ballista

# --- Lush Caves ---
execute positioned ~10 ~ ~3 run setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{text:"Lush Caves Weapons",color:"green"}} destroy
execute positioned ~10 ~ ~3 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Lush Caves",color:"green",italic:false}]}
execute positioned ~10 ~ ~3 run loot insert ~ ~ ~ loot evercraft:treasure/chests/lush_caves/growing_staff
execute positioned ~10 ~ ~3 run loot insert ~ ~ ~ loot evercraft:treasure/chests/lush_caves/weeping_vine_bow

# Row 3: Mountain, Mushroom, Nether, Ocean, Savanna, Soul Valley
# --- Mountain ---
execute positioned ~0 ~ ~6 run setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{text:"Mountain Weapons",color:"white"}} destroy
execute positioned ~0 ~ ~6 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Mountain",color:"white",italic:false}]}
execute positioned ~0 ~ ~6 run loot insert ~ ~ ~ loot evercraft:treasure/chests/mountain/formidi_ballista
execute positioned ~0 ~ ~6 run loot insert ~ ~ ~ loot evercraft:treasure/chests/mountain/spruce_ballista

# --- Mushroom ---
execute positioned ~2 ~ ~6 run setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{text:"Mushroom Weapons",color:"red"}} destroy
execute positioned ~2 ~ ~6 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Mushroom",color:"red",italic:false}]}
execute positioned ~2 ~ ~6 run loot insert ~ ~ ~ loot evercraft:treasure/chests/mushroom/sinitic_sword

# --- Nether ---
execute positioned ~4 ~ ~6 run setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{text:"Nether Weapons",color:"dark_red"}} destroy
execute positioned ~4 ~ ~6 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Nether",color:"dark_red",italic:false}]}
execute positioned ~4 ~ ~6 run loot insert ~ ~ ~ loot evercraft:treasure/chests/nether/crimson_ballista
execute positioned ~4 ~ ~6 run loot insert ~ ~ ~ loot evercraft:treasure/chests/nether/warped_ballista

# --- Ocean ---
execute positioned ~6 ~ ~6 run setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{text:"Ocean Weapons",color:"aqua"}} destroy
execute positioned ~6 ~ ~6 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Ocean",color:"aqua",italic:false}]}
execute positioned ~6 ~ ~6 run loot insert ~ ~ ~ loot evercraft:treasure/chests/ocean/kemetian_trident
execute positioned ~6 ~ ~6 run loot insert ~ ~ ~ loot evercraft:treasure/chests/ocean/norroen_trident
execute positioned ~6 ~ ~6 run loot insert ~ ~ ~ loot evercraft:treasure/chests/ocean/trident

# --- Savanna ---
execute positioned ~8 ~ ~6 run setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{text:"Savanna Weapons",color:"yellow"}} destroy
execute positioned ~8 ~ ~6 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Savanna",color:"yellow",italic:false}]}
execute positioned ~8 ~ ~6 run loot insert ~ ~ ~ loot evercraft:treasure/chests/savanna/acacia_ballista

# --- Soul Valley ---
execute positioned ~10 ~ ~6 run setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{text:"Soul Valley Weapons",color:"aqua"}} destroy
execute positioned ~10 ~ ~6 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Soul Valley",color:"aqua",italic:false}]}
execute positioned ~10 ~ ~6 run loot insert ~ ~ ~ loot evercraft:treasure/chests/soul_valley/bone_scythe
execute positioned ~10 ~ ~6 run loot insert ~ ~ ~ loot evercraft:treasure/chests/soul_valley/deaths_scythe

# Row 4: Swamp, Taiga, Warped, Wind, Default
# --- Swamp ---
execute positioned ~0 ~ ~9 run setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{text:"Swamp Weapons",color:"dark_green"}} destroy
execute positioned ~0 ~ ~9 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Swamp",color:"dark_green",italic:false}]}
execute positioned ~0 ~ ~9 run loot insert ~ ~ ~ loot evercraft:treasure/chests/swamp/nightmares_bite
execute positioned ~0 ~ ~9 run loot insert ~ ~ ~ loot evercraft:treasure/chests/swamp/venom_glaive

# --- Taiga ---
execute positioned ~2 ~ ~9 run setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{text:"Taiga Weapons",color:"dark_green"}} destroy
execute positioned ~2 ~ ~9 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Taiga",color:"dark_green",italic:false}]}
execute positioned ~2 ~ ~9 run loot insert ~ ~ ~ loot evercraft:treasure/chests/taiga/highland_axe
execute positioned ~2 ~ ~9 run loot insert ~ ~ ~ loot evercraft:treasure/chests/taiga/scotsmans_skullcutter

# --- Warped Forest ---
execute positioned ~4 ~ ~9 run setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{text:"Warped Weapons",color:"dark_aqua"}} destroy
execute positioned ~4 ~ ~9 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Warped",color:"dark_aqua",italic:false}]}
execute positioned ~4 ~ ~9 run loot insert ~ ~ ~ loot evercraft:treasure/chests/warped/ender_destructor
execute positioned ~4 ~ ~9 run loot insert ~ ~ ~ loot evercraft:treasure/chests/warped/warped_glaive

# --- Wind ---
execute positioned ~6 ~ ~9 run setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{text:"Wind Weapons",color:"white"}} destroy
execute positioned ~6 ~ ~9 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Wind",color:"white",italic:false}]}
execute positioned ~6 ~ ~9 run loot insert ~ ~ ~ loot evercraft:treasure/chests/wind/chill_gale_knife
execute positioned ~6 ~ ~9 run loot insert ~ ~ ~ loot evercraft:treasure/chests/wind/tower_glaive
execute positioned ~6 ~ ~9 run loot insert ~ ~ ~ loot evercraft:treasure/chests/wind/zantetsuken

# --- Default ---
execute positioned ~8 ~ ~9 run setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{text:"Default Weapons",color:"white"}} destroy
execute positioned ~8 ~ ~9 run summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,billboard:"vertical",alignment:"center",Tags:["mt.entity","mt.marker"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Default",color:"white",italic:false}]}
execute positioned ~8 ~ ~9 run loot insert ~ ~ ~ loot evercraft:treasure/chests/default/broadsword
execute positioned ~8 ~ ~9 run loot insert ~ ~ ~ loot evercraft:treasure/chests/default/claymore

tellraw @s ["",{text:"Spawned 22 biome weapon crates in a 6x4 grid!",color:"green"}]
tellraw @s ["",{text:"Each barrel contains all weapons for that biome.",color:"gray"}]
