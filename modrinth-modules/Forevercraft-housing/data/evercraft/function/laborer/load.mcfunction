# === HOUSING LABORERS SYSTEM ===
# Initialize scoreboards, storage, and start scheduled tick loop

# ═══ PER-PLAYER SCOREBOARDS ═══
scoreboard objectives add ec.lb_count dummy "Laborer Count"
scoreboard objectives add ec.lb_max dummy "Laborer Max Slots"

# ═══ PER-ENTITY SCOREBOARDS (on laborer villagers) ═══
scoreboard objectives add ec.lb_state dummy "Laborer State"
scoreboard objectives add ec.lb_fed dummy "Laborer Fed Until (gametime)"
scoreboard objectives add ec.lb_food_tier dummy "Laborer Food Tier"
scoreboard objectives add ec.lb_food_cat dummy "Laborer Food Category Match"
scoreboard objectives add ec.lb_quality dummy "Laborer Quality Cache"
scoreboard objectives add ec.lb_expeditions dummy "Laborer Expeditions"
scoreboard objectives add ec.lb_adventures dummy "Laborer Adventures"
scoreboard objectives add ec.lb_perm_bonus dummy "Laborer Permanent Bonus"
scoreboard objectives add ec.lb_slot dummy "Laborer Slot Index"
scoreboard objectives add ec.lb_exp_start dummy "Expedition Start (gametime)"
scoreboard objectives add ec.lb_exp_dur dummy "Expedition Duration (ticks)"
scoreboard objectives add ec.lb_type dummy "Laborer Type (1-6)"
scoreboard objectives add ec.lb_owner_id dummy "Laborer Owner ID"

# Type mapping: 1=miner, 2=farmer, 3=fisher, 4=woodcutter, 5=forager, 6=prospector

# ═══ TEMP SCOREBOARDS ═══
scoreboard objectives add ec.lb_temp dummy "Laborer Temp"

# ═══ CONSTANTS ═══
scoreboard players set #lb_base_dur ec.lb_temp 432000
scoreboard players set #lb_min_dur ec.lb_temp 108000
scoreboard players set #lb_1000 ec.lb_temp 1000
scoreboard players set #lb_25 ec.lb_temp 25
scoreboard players set #lb_100 ec.lb_temp 100
scoreboard players set #lb_10 ec.lb_temp 10
scoreboard players set #lb_50 ec.lb_temp 50
scoreboard players set #lb_5 ec.lb_temp 5
scoreboard players set #lb_4 ec.lb_temp 4
scoreboard players set #lb_3 ec.lb_temp 3
scoreboard players set #lb_neg1 ec.lb_temp -1

# ═══ HIRING STATE ═══
scoreboard objectives add ec.lb_hire_type dummy "Laborer Hire Type"
scoreboard objectives add ec.lb_restore dummy "Laborer Contract Restore"

# ═══ INITIALIZE STORAGE ═══
# Storage auto-initializes when first written to — name pools below handle this

# ═══ START SCHEDULED TICK (60-second loop) ═══
schedule function evercraft:laborer/tick 60s replace

# ═══ NAME POOLS (stored in storage for random selection) ═══
data modify storage evercraft:laborers names.miner set value ["Bjorn","Durin","Petra","Slate","Cobalt","Flint","Granite","Basalt","Ember","Cinder","Ironhide","Tungsten","Ore","Pyrite","Jasper","Quarry","Vein","Shaft","Pickwick","Rubble","Smelter","Crucible","Ingot","Lodestone","Copper","Galena","Obsidian","Magma","Gravel","Shale"]
data modify storage evercraft:laborers names.farmer set value ["Barley","Meadow","Thyme","Harvest","Clover","Sage","Silo","Furrow","Winnow","Petal","Sprout","Seedling","Hayward","Rye","Maize","Oat","Tiller","Mulch","Bloom","Reaper","Sheaf","Plough","Verdant","Loam","Husk","Stalk","Tassel","Root","Burrow","Fallow"]
data modify storage evercraft:laborers names.fisher set value ["Anchor","Marina","Drift","Reef","Coral","Tide","Hull","Castaway","Brine","Kelp","Marlin","Tackle","Netter","Hook","Sinker","Bobber","Ripple","Current","Eddy","Shoal","Flotsam","Barnacle","Skipper","Dory","Pike","Perch","Gill","Splash","Wade","Harbor"]
data modify storage evercraft:laborers names.woodcutter set value ["Oakley","Birch","Aspen","Lumber","Timber","Sawyer","Axel","Bark","Knot","Stump","Cedar","Maple","Elm","Willow","Alder","Hickory","Spruce","Bough","Thicket","Copse","Hew","Chip","Shavings","Heartwood","Resin","Sap","Ring","Grain","Branch","Canopy"]
data modify storage evercraft:laborers names.forager set value ["Moss","Fern","Lichen","Bramble","Nettle","Sorrel","Thistle","Rue","Fennel","Tansy","Wort","Hemlock","Yarrow","Comfrey","Mugwort","Burdock","Vervain","Plantain","Elder","Hyssop","Spurge","Bracken","Heather","Gorse","Mallow","Betony","Dill","Cumin","Saffron","Myrrh"]
data modify storage evercraft:laborers names.prospector set value ["Goldrush","Claim","Nugget","Vanguard","Pioneer","Scout","Seeker","Finder","Dowser","Trailblaze","Expedition","Compass","Bearings","Cartograph","Survey","Assay","Strike","Bonanza","Lode","Motherlode","Eureka","Prospect","Fortune","Destiny","Jackpot","Windfall","Bounty","Payload","Treasure","Discovery"]
