# Tomb System — Detect Ground Block for Grave Base
# Execution position: align xyz (snapped to block grid)
# Checks ~ ~-1 ~ first (block under feet), then ~ ~ ~ as fallback
# Sets evercraft:tomb_temp ground_block to the block ID string

# --- Dirt / Grass variants ---
execute if block ~ ~-1 ~ grass_block run data modify storage evercraft:tomb_temp ground_block set value "minecraft:grass_block"
execute if block ~ ~-1 ~ dirt run data modify storage evercraft:tomb_temp ground_block set value "minecraft:dirt"
execute if block ~ ~-1 ~ coarse_dirt run data modify storage evercraft:tomb_temp ground_block set value "minecraft:coarse_dirt"
execute if block ~ ~-1 ~ rooted_dirt run data modify storage evercraft:tomb_temp ground_block set value "minecraft:rooted_dirt"
execute if block ~ ~-1 ~ podzol run data modify storage evercraft:tomb_temp ground_block set value "minecraft:podzol"
execute if block ~ ~-1 ~ mycelium run data modify storage evercraft:tomb_temp ground_block set value "minecraft:mycelium"
execute if block ~ ~-1 ~ mud run data modify storage evercraft:tomb_temp ground_block set value "minecraft:mud"
execute if block ~ ~-1 ~ muddy_mangrove_roots run data modify storage evercraft:tomb_temp ground_block set value "minecraft:muddy_mangrove_roots"
execute if block ~ ~-1 ~ pale_moss_block run data modify storage evercraft:tomb_temp ground_block set value "minecraft:pale_moss_block"
execute if block ~ ~-1 ~ moss_block run data modify storage evercraft:tomb_temp ground_block set value "minecraft:moss_block"

# --- Sand ---
execute if block ~ ~-1 ~ sand run data modify storage evercraft:tomb_temp ground_block set value "minecraft:sand"
execute if block ~ ~-1 ~ red_sand run data modify storage evercraft:tomb_temp ground_block set value "minecraft:red_sand"
execute if block ~ ~-1 ~ sandstone run data modify storage evercraft:tomb_temp ground_block set value "minecraft:sandstone"
execute if block ~ ~-1 ~ red_sandstone run data modify storage evercraft:tomb_temp ground_block set value "minecraft:red_sandstone"
execute if block ~ ~-1 ~ gravel run data modify storage evercraft:tomb_temp ground_block set value "minecraft:gravel"

# --- Stone variants ---
execute if block ~ ~-1 ~ stone run data modify storage evercraft:tomb_temp ground_block set value "minecraft:stone"
execute if block ~ ~-1 ~ granite run data modify storage evercraft:tomb_temp ground_block set value "minecraft:granite"
execute if block ~ ~-1 ~ diorite run data modify storage evercraft:tomb_temp ground_block set value "minecraft:diorite"
execute if block ~ ~-1 ~ andesite run data modify storage evercraft:tomb_temp ground_block set value "minecraft:andesite"
execute if block ~ ~-1 ~ cobblestone run data modify storage evercraft:tomb_temp ground_block set value "minecraft:cobblestone"
execute if block ~ ~-1 ~ mossy_cobblestone run data modify storage evercraft:tomb_temp ground_block set value "minecraft:mossy_cobblestone"
execute if block ~ ~-1 ~ deepslate run data modify storage evercraft:tomb_temp ground_block set value "minecraft:deepslate"
execute if block ~ ~-1 ~ cobbled_deepslate run data modify storage evercraft:tomb_temp ground_block set value "minecraft:cobbled_deepslate"
execute if block ~ ~-1 ~ tuff run data modify storage evercraft:tomb_temp ground_block set value "minecraft:tuff"
execute if block ~ ~-1 ~ calcite run data modify storage evercraft:tomb_temp ground_block set value "minecraft:calcite"
execute if block ~ ~-1 ~ dripstone_block run data modify storage evercraft:tomb_temp ground_block set value "minecraft:dripstone_block"

# --- Ice / Snow ---
execute if block ~ ~-1 ~ snow_block run data modify storage evercraft:tomb_temp ground_block set value "minecraft:snow_block"
execute if block ~ ~-1 ~ ice run data modify storage evercraft:tomb_temp ground_block set value "minecraft:ice"
execute if block ~ ~-1 ~ packed_ice run data modify storage evercraft:tomb_temp ground_block set value "minecraft:packed_ice"
execute if block ~ ~-1 ~ blue_ice run data modify storage evercraft:tomb_temp ground_block set value "minecraft:blue_ice"

# --- Nether ---
execute if block ~ ~-1 ~ netherrack run data modify storage evercraft:tomb_temp ground_block set value "minecraft:netherrack"
execute if block ~ ~-1 ~ soul_sand run data modify storage evercraft:tomb_temp ground_block set value "minecraft:soul_sand"
execute if block ~ ~-1 ~ soul_soil run data modify storage evercraft:tomb_temp ground_block set value "minecraft:soul_soil"
execute if block ~ ~-1 ~ basalt run data modify storage evercraft:tomb_temp ground_block set value "minecraft:basalt"
execute if block ~ ~-1 ~ blackstone run data modify storage evercraft:tomb_temp ground_block set value "minecraft:blackstone"
execute if block ~ ~-1 ~ crimson_nylium run data modify storage evercraft:tomb_temp ground_block set value "minecraft:crimson_nylium"
execute if block ~ ~-1 ~ warped_nylium run data modify storage evercraft:tomb_temp ground_block set value "minecraft:warped_nylium"
execute if block ~ ~-1 ~ nether_bricks run data modify storage evercraft:tomb_temp ground_block set value "minecraft:nether_bricks"
execute if block ~ ~-1 ~ magma_block run data modify storage evercraft:tomb_temp ground_block set value "minecraft:magma_block"
execute if block ~ ~-1 ~ glowstone run data modify storage evercraft:tomb_temp ground_block set value "minecraft:glowstone"

# --- End ---
execute if block ~ ~-1 ~ end_stone run data modify storage evercraft:tomb_temp ground_block set value "minecraft:end_stone"
execute if block ~ ~-1 ~ end_stone_bricks run data modify storage evercraft:tomb_temp ground_block set value "minecraft:end_stone_bricks"
execute if block ~ ~-1 ~ purpur_block run data modify storage evercraft:tomb_temp ground_block set value "minecraft:purpur_block"

# --- Terracotta ---
execute if block ~ ~-1 ~ terracotta run data modify storage evercraft:tomb_temp ground_block set value "minecraft:terracotta"
execute if block ~ ~-1 ~ #terracotta run data modify storage evercraft:tomb_temp ground_block set value "minecraft:terracotta"

# --- Wood / Organic ---
execute if block ~ ~-1 ~ #planks run data modify storage evercraft:tomb_temp ground_block set value "minecraft:oak_planks"
execute if block ~ ~-1 ~ clay run data modify storage evercraft:tomb_temp ground_block set value "minecraft:clay"
execute if block ~ ~-1 ~ farmland run data modify storage evercraft:tomb_temp ground_block set value "minecraft:dirt"
execute if block ~ ~-1 ~ dirt_path run data modify storage evercraft:tomb_temp ground_block set value "minecraft:dirt_path"

# --- Bricks / Constructed ---
execute if block ~ ~-1 ~ stone_bricks run data modify storage evercraft:tomb_temp ground_block set value "minecraft:stone_bricks"
execute if block ~ ~-1 ~ mossy_stone_bricks run data modify storage evercraft:tomb_temp ground_block set value "minecraft:mossy_stone_bricks"
execute if block ~ ~-1 ~ bricks run data modify storage evercraft:tomb_temp ground_block set value "minecraft:bricks"
execute if block ~ ~-1 ~ obsidian run data modify storage evercraft:tomb_temp ground_block set value "minecraft:obsidian"
execute if block ~ ~-1 ~ crying_obsidian run data modify storage evercraft:tomb_temp ground_block set value "minecraft:crying_obsidian"
execute if block ~ ~-1 ~ prismarine run data modify storage evercraft:tomb_temp ground_block set value "minecraft:prismarine"
execute if block ~ ~-1 ~ dark_prismarine run data modify storage evercraft:tomb_temp ground_block set value "minecraft:dark_prismarine"

# --- Copper ---
execute if block ~ ~-1 ~ copper_block run data modify storage evercraft:tomb_temp ground_block set value "minecraft:copper_block"
execute if block ~ ~-1 ~ oxidized_copper run data modify storage evercraft:tomb_temp ground_block set value "minecraft:oxidized_copper"

# --- Misc ---
execute if block ~ ~-1 ~ sculk run data modify storage evercraft:tomb_temp ground_block set value "minecraft:sculk"
execute if block ~ ~-1 ~ mushroom_stem run data modify storage evercraft:tomb_temp ground_block set value "minecraft:mushroom_stem"
execute if block ~ ~-1 ~ brown_mushroom_block run data modify storage evercraft:tomb_temp ground_block set value "minecraft:brown_mushroom_block"
