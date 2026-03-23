# === NODE BIOME VARIANT REGISTRY ===
# Stores visual item/block data for each biome variant in storage
# Called once from init on load

# ============================================================
# FORAGE VISUALS (item_display items)
# ============================================================

# --- Plains ---
data modify storage evercraft:node_variants forage.plains.v1 set value {id:"minecraft:short_grass",count:1}
data modify storage evercraft:node_variants forage.plains.v2 set value {id:"minecraft:poppy",count:1}
data modify storage evercraft:node_variants forage.plains.v3 set value {id:"minecraft:dandelion",count:1}

# --- Desert ---
data modify storage evercraft:node_variants forage.desert.v1 set value {id:"minecraft:dead_bush",count:1}
data modify storage evercraft:node_variants forage.desert.v2 set value {id:"minecraft:cactus",count:1}
data modify storage evercraft:node_variants forage.desert.v3 set value {id:"minecraft:sand",count:1}

# --- Badlands ---
data modify storage evercraft:node_variants forage.badlands.v1 set value {id:"minecraft:red_sand",count:1}
data modify storage evercraft:node_variants forage.badlands.v2 set value {id:"minecraft:terracotta",count:1}
data modify storage evercraft:node_variants forage.badlands.v3 set value {id:"minecraft:dead_bush",count:1}

# --- Ice / Snowy ---
data modify storage evercraft:node_variants forage.ice.v1 set value {id:"minecraft:sweet_berries",count:1}
data modify storage evercraft:node_variants forage.ice.v2 set value {id:"minecraft:spruce_sapling",count:1}
data modify storage evercraft:node_variants forage.ice.v3 set value {id:"minecraft:snow_block",count:1}

# --- Swamp ---
data modify storage evercraft:node_variants forage.swamp.v1 set value {id:"minecraft:lily_pad",count:1}
data modify storage evercraft:node_variants forage.swamp.v2 set value {id:"minecraft:vine",count:1}
data modify storage evercraft:node_variants forage.swamp.v3 set value {id:"minecraft:brown_mushroom",count:1}

# --- Forest ---
data modify storage evercraft:node_variants forage.forest.v1 set value {id:"minecraft:oak_sapling",count:1}
data modify storage evercraft:node_variants forage.forest.v2 set value {id:"minecraft:fern",count:1}
data modify storage evercraft:node_variants forage.forest.v3 set value {id:"minecraft:azalea",count:1}

# --- Flower Forest ---
data modify storage evercraft:node_variants forage.flower_forest.v1 set value {id:"minecraft:allium",count:1}
data modify storage evercraft:node_variants forage.flower_forest.v2 set value {id:"minecraft:poppy",count:1}
data modify storage evercraft:node_variants forage.flower_forest.v3 set value {id:"minecraft:dandelion",count:1}

# --- Dark Forest ---
data modify storage evercraft:node_variants forage.dark_forest.v1 set value {id:"minecraft:dark_oak_sapling",count:1}
data modify storage evercraft:node_variants forage.dark_forest.v2 set value {id:"minecraft:brown_mushroom",count:1}
data modify storage evercraft:node_variants forage.dark_forest.v3 set value {id:"minecraft:red_mushroom",count:1}

# --- Jungle ---
data modify storage evercraft:node_variants forage.jungle.v1 set value {id:"minecraft:jungle_sapling",count:1}
data modify storage evercraft:node_variants forage.jungle.v2 set value {id:"minecraft:bamboo",count:1}
data modify storage evercraft:node_variants forage.jungle.v3 set value {id:"minecraft:vine",count:1}

# --- Taiga ---
data modify storage evercraft:node_variants forage.taiga.v1 set value {id:"minecraft:spruce_sapling",count:1}
data modify storage evercraft:node_variants forage.taiga.v2 set value {id:"minecraft:fern",count:1}
data modify storage evercraft:node_variants forage.taiga.v3 set value {id:"minecraft:sweet_berries",count:1}

# --- Mountain ---
data modify storage evercraft:node_variants forage.mountain.v1 set value {id:"minecraft:cobblestone",count:1}
data modify storage evercraft:node_variants forage.mountain.v2 set value {id:"minecraft:mossy_cobblestone",count:1}
data modify storage evercraft:node_variants forage.mountain.v3 set value {id:"minecraft:calcite",count:1}

# --- Ocean ---
data modify storage evercraft:node_variants forage.ocean.v1 set value {id:"minecraft:kelp",count:1}
data modify storage evercraft:node_variants forage.ocean.v2 set value {id:"minecraft:seagrass",count:1}
data modify storage evercraft:node_variants forage.ocean.v3 set value {id:"minecraft:sea_pickle",count:1}

# --- Mushroom ---
data modify storage evercraft:node_variants forage.mushroom.v1 set value {id:"minecraft:brown_mushroom",count:1}
data modify storage evercraft:node_variants forage.mushroom.v2 set value {id:"minecraft:red_mushroom",count:1}
data modify storage evercraft:node_variants forage.mushroom.v3 set value {id:"minecraft:mycelium",count:1}

# --- Savanna ---
data modify storage evercraft:node_variants forage.savanna.v1 set value {id:"minecraft:short_grass",count:1}
data modify storage evercraft:node_variants forage.savanna.v2 set value {id:"minecraft:acacia_sapling",count:1}
data modify storage evercraft:node_variants forage.savanna.v3 set value {id:"minecraft:dead_bush",count:1}

# ============================================================
# PROSPECT VISUALS (block_display block_states)
# ============================================================

# --- Overworld Surface Biomes ---

# Plains
data modify storage evercraft:node_variants prospect.plains.v1 set value {Name:"minecraft:stone"}
data modify storage evercraft:node_variants prospect.plains.v2 set value {Name:"minecraft:mossy_cobblestone"}
data modify storage evercraft:node_variants prospect.plains.v3 set value {Name:"minecraft:gravel"}

# Desert
data modify storage evercraft:node_variants prospect.desert.v1 set value {Name:"minecraft:sandstone"}
data modify storage evercraft:node_variants prospect.desert.v2 set value {Name:"minecraft:smooth_sandstone"}
data modify storage evercraft:node_variants prospect.desert.v3 set value {Name:"minecraft:cut_sandstone"}

# Badlands
data modify storage evercraft:node_variants prospect.badlands.v1 set value {Name:"minecraft:red_sandstone"}
data modify storage evercraft:node_variants prospect.badlands.v2 set value {Name:"minecraft:smooth_red_sandstone"}
data modify storage evercraft:node_variants prospect.badlands.v3 set value {Name:"minecraft:terracotta"}

# Ice / Snowy
data modify storage evercraft:node_variants prospect.ice.v1 set value {Name:"minecraft:packed_ice"}
data modify storage evercraft:node_variants prospect.ice.v2 set value {Name:"minecraft:blue_ice"}
data modify storage evercraft:node_variants prospect.ice.v3 set value {Name:"minecraft:snow_block"}

# Swamp
data modify storage evercraft:node_variants prospect.swamp.v1 set value {Name:"minecraft:mossy_cobblestone"}
data modify storage evercraft:node_variants prospect.swamp.v2 set value {Name:"minecraft:mossy_stone_bricks"}
data modify storage evercraft:node_variants prospect.swamp.v3 set value {Name:"minecraft:mud"}

# Forest
data modify storage evercraft:node_variants prospect.forest.v1 set value {Name:"minecraft:mossy_cobblestone"}
data modify storage evercraft:node_variants prospect.forest.v2 set value {Name:"minecraft:stone"}
data modify storage evercraft:node_variants prospect.forest.v3 set value {Name:"minecraft:coal_ore"}

# Flower Forest
data modify storage evercraft:node_variants prospect.flower_forest.v1 set value {Name:"minecraft:mossy_stone_bricks"}
data modify storage evercraft:node_variants prospect.flower_forest.v2 set value {Name:"minecraft:stone"}
data modify storage evercraft:node_variants prospect.flower_forest.v3 set value {Name:"minecraft:andesite"}

# Dark Forest
data modify storage evercraft:node_variants prospect.dark_forest.v1 set value {Name:"minecraft:cobblestone"}
data modify storage evercraft:node_variants prospect.dark_forest.v2 set value {Name:"minecraft:mossy_cobblestone"}
data modify storage evercraft:node_variants prospect.dark_forest.v3 set value {Name:"minecraft:deepslate"}

# Jungle
data modify storage evercraft:node_variants prospect.jungle.v1 set value {Name:"minecraft:mossy_stone_bricks"}
data modify storage evercraft:node_variants prospect.jungle.v2 set value {Name:"minecraft:mossy_cobblestone"}
data modify storage evercraft:node_variants prospect.jungle.v3 set value {Name:"minecraft:andesite"}

# Taiga
data modify storage evercraft:node_variants prospect.taiga.v1 set value {Name:"minecraft:stone"}
data modify storage evercraft:node_variants prospect.taiga.v2 set value {Name:"minecraft:andesite"}
data modify storage evercraft:node_variants prospect.taiga.v3 set value {Name:"minecraft:cobblestone"}

# Mountain
data modify storage evercraft:node_variants prospect.mountain.v1 set value {Name:"minecraft:granite"}
data modify storage evercraft:node_variants prospect.mountain.v2 set value {Name:"minecraft:calcite"}
data modify storage evercraft:node_variants prospect.mountain.v3 set value {Name:"minecraft:tuff"}

# Ocean
data modify storage evercraft:node_variants prospect.ocean.v1 set value {Name:"minecraft:prismarine"}
data modify storage evercraft:node_variants prospect.ocean.v2 set value {Name:"minecraft:dark_prismarine"}
data modify storage evercraft:node_variants prospect.ocean.v3 set value {Name:"minecraft:sea_lantern"}

# Mushroom
data modify storage evercraft:node_variants prospect.mushroom.v1 set value {Name:"minecraft:mushroom_stem"}
data modify storage evercraft:node_variants prospect.mushroom.v2 set value {Name:"minecraft:mycelium"}
data modify storage evercraft:node_variants prospect.mushroom.v3 set value {Name:"minecraft:stone"}

# Savanna
data modify storage evercraft:node_variants prospect.savanna.v1 set value {Name:"minecraft:granite"}
data modify storage evercraft:node_variants prospect.savanna.v2 set value {Name:"minecraft:terracotta"}
data modify storage evercraft:node_variants prospect.savanna.v3 set value {Name:"minecraft:stone"}

# --- Underground / Cave Biomes ---

# --- Deep Dark ---
data modify storage evercraft:node_variants prospect.deep_dark.v1 set value {Name:"minecraft:sculk"}
data modify storage evercraft:node_variants prospect.deep_dark.v2 set value {Name:"minecraft:sculk_sensor"}
data modify storage evercraft:node_variants prospect.deep_dark.v3 set value {Name:"minecraft:deepslate"}

# --- Lush Caves ---
data modify storage evercraft:node_variants prospect.lush_caves.v1 set value {Name:"minecraft:moss_block"}
data modify storage evercraft:node_variants prospect.lush_caves.v2 set value {Name:"minecraft:flowering_azalea_leaves"}
data modify storage evercraft:node_variants prospect.lush_caves.v3 set value {Name:"minecraft:calcite"}

# --- Dripstone Caves ---
data modify storage evercraft:node_variants prospect.dripstone_caves.v1 set value {Name:"minecraft:dripstone_block"}
data modify storage evercraft:node_variants prospect.dripstone_caves.v2 set value {Name:"minecraft:calcite"}
data modify storage evercraft:node_variants prospect.dripstone_caves.v3 set value {Name:"minecraft:tuff"}

# --- Crimson Forest ---
data modify storage evercraft:node_variants prospect.crimson_forest.v1 set value {Name:"minecraft:crimson_nylium"}
data modify storage evercraft:node_variants prospect.crimson_forest.v2 set value {Name:"minecraft:nether_wart_block"}
data modify storage evercraft:node_variants prospect.crimson_forest.v3 set value {Name:"minecraft:shroomlight"}

# --- Warped Forest ---
data modify storage evercraft:node_variants prospect.warped_forest.v1 set value {Name:"minecraft:warped_nylium"}
data modify storage evercraft:node_variants prospect.warped_forest.v2 set value {Name:"minecraft:warped_wart_block"}
data modify storage evercraft:node_variants prospect.warped_forest.v3 set value {Name:"minecraft:shroomlight"}

# --- Basalt Deltas ---
data modify storage evercraft:node_variants prospect.basalt_deltas.v1 set value {Name:"minecraft:basalt"}
data modify storage evercraft:node_variants prospect.basalt_deltas.v2 set value {Name:"minecraft:blackstone"}
data modify storage evercraft:node_variants prospect.basalt_deltas.v3 set value {Name:"minecraft:magma_block"}

# --- Soul Sand Valley ---
data modify storage evercraft:node_variants prospect.soul_sand_valley.v1 set value {Name:"minecraft:soul_sand"}
data modify storage evercraft:node_variants prospect.soul_sand_valley.v2 set value {Name:"minecraft:soul_soil"}
data modify storage evercraft:node_variants prospect.soul_sand_valley.v3 set value {Name:"minecraft:bone_block"}

# --- Nether Wastes ---
data modify storage evercraft:node_variants prospect.nether_wastes.v1 set value {Name:"minecraft:netherrack"}
data modify storage evercraft:node_variants prospect.nether_wastes.v2 set value {Name:"minecraft:nether_quartz_ore"}
data modify storage evercraft:node_variants prospect.nether_wastes.v3 set value {Name:"minecraft:glowstone"}

# --- The End ---
data modify storage evercraft:node_variants prospect.the_end.v1 set value {Name:"minecraft:end_stone"}
data modify storage evercraft:node_variants prospect.the_end.v2 set value {Name:"minecraft:purpur_block"}
data modify storage evercraft:node_variants prospect.the_end.v3 set value {Name:"minecraft:end_stone_bricks"}
