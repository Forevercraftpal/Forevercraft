# Mining T10: THE DEEP VEIN — Score 500 ore value in collapsing cave
# Weighted: coal=1, iron=2, copper=2, gold=3, lapis=3, redstone=3, diamond=8, emerald=8, debris=16
# Cave collapses from the back (scheduled fill-air strips)
# Dense ore distribution throughout

# Full deepslate base
$execute positioned $(ax) 300 $(az) run fill ~0 ~ ~0 ~47 ~7 ~47 deepslate replace stone
$execute positioned $(ax) 308 $(az) run fill ~0 ~ ~0 ~47 ~7 ~47 deepslate replace stone
$execute positioned $(ax) 316 $(az) run fill ~0 ~ ~0 ~47 ~5 ~47 deepslate replace stone

# Carve large cave system
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~2 ~46 ~6 ~46 air
$execute positioned $(ax) 308 $(az) run fill ~4 ~ ~4 ~44 ~5 ~44 air
$execute positioned $(ax) 315 $(az) run fill ~6 ~ ~6 ~42 ~4 ~42 air

# Stone pillars for visual interest
$execute positioned $(ax) 300 $(az) run fill ~12 ~ ~12 ~14 ~8 ~14 deepslate
$execute positioned $(ax) 300 $(az) run fill ~34 ~ ~12 ~36 ~8 ~14 deepslate
$execute positioned $(ax) 300 $(az) run fill ~12 ~ ~34 ~14 ~8 ~36 deepslate
$execute positioned $(ax) 300 $(az) run fill ~34 ~ ~34 ~36 ~8 ~36 deepslate

# Dense ore placement (lots of ore for high-value scoring)
# Coal veins (value 1 each)
$execute positioned $(ax) 300 $(az) run fill ~3 ~ ~3 ~8 ~1 ~8 coal_ore
$execute positioned $(ax) 302 $(az) run fill ~38 ~ ~3 ~43 ~1 ~8 coal_ore
$execute positioned $(ax) 304 $(az) run fill ~3 ~ ~38 ~8 ~1 ~43 coal_ore
$execute positioned $(ax) 306 $(az) run fill ~38 ~ ~38 ~43 ~1 ~43 coal_ore

# Iron veins (value 2 each)
$execute positioned $(ax) 301 $(az) run fill ~10 ~ ~5 ~14 ~1 ~8 iron_ore
$execute positioned $(ax) 303 $(az) run fill ~35 ~ ~10 ~40 ~1 ~14 iron_ore
$execute positioned $(ax) 305 $(az) run fill ~5 ~ ~30 ~10 ~1 ~35 iron_ore
$execute positioned $(ax) 307 $(az) run fill ~30 ~ ~35 ~35 ~1 ~40 iron_ore

# Gold veins (value 3 each)
$execute positioned $(ax) 300 $(az) run fill ~18 ~ ~5 ~22 ~ ~8 gold_ore
$execute positioned $(ax) 309 $(az) run fill ~5 ~ ~18 ~8 ~ ~22 gold_ore
$execute positioned $(ax) 309 $(az) run fill ~38 ~ ~18 ~42 ~ ~22 gold_ore
$execute positioned $(ax) 300 $(az) run fill ~18 ~ ~38 ~22 ~ ~42 gold_ore

# Diamond veins (value 8 each)
$execute positioned $(ax) 312 $(az) run fill ~15 ~ ~15 ~17 ~ ~17 deepslate_diamond_ore
$execute positioned $(ax) 312 $(az) run fill ~30 ~ ~30 ~32 ~ ~32 deepslate_diamond_ore
$execute positioned $(ax) 316 $(az) run fill ~22 ~ ~22 ~24 ~ ~24 deepslate_diamond_ore

# Emerald veins (value 8 each)
$execute positioned $(ax) 314 $(az) run fill ~10 ~ ~10 ~12 ~ ~12 deepslate_emerald_ore
$execute positioned $(ax) 314 $(az) run fill ~35 ~ ~35 ~37 ~ ~37 deepslate_emerald_ore

# Lapis/Redstone/Copper (value 2-3 each)
$execute positioned $(ax) 302 $(az) run fill ~25 ~ ~10 ~28 ~ ~13 lapis_ore
$execute positioned $(ax) 308 $(az) run fill ~10 ~ ~25 ~13 ~ ~28 redstone_ore
$execute positioned $(ax) 310 $(az) run fill ~30 ~ ~10 ~33 ~ ~13 copper_ore
$execute positioned $(ax) 304 $(az) run fill ~15 ~ ~30 ~18 ~ ~33 lapis_ore

# Ancient debris (value 16 each — rare, 4 blocks)
$execute positioned $(ax) 318 $(az) run fill ~20 ~ ~20 ~21 ~ ~21 ancient_debris
$execute positioned $(ax) 319 $(az) run fill ~28 ~ ~28 ~29 ~ ~29 ancient_debris

# Start collapse schedule (fills sections with air from back to front)
schedule function evercraft:craftforever/trials/types/mining/collapse_1 3600t
schedule function evercraft:craftforever/trials/types/mining/collapse_2 4200t
schedule function evercraft:craftforever/trials/types/mining/collapse_3 4800t
schedule function evercraft:craftforever/trials/types/mining/collapse_4 5400t
