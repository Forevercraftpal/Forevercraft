# ============================================================
# QUEST POOL — 75 Quests Definition
# Stored in eden:database quests.pool
# ============================================================

# Initialize quest storage
data modify storage eden:database quests.pool set value []

# ============================================================
# TIER 1 — ERRAND (15 Quests, 25 Rep, Common Crate)
# ============================================================
data modify storage eden:database quests.pool append value {id:"E01",name:"Wheat Harvest",tier:1,type:"gather",target:"minecraft:wheat",count:32,biomes:[0,1,8],rep:25,crate:"common"}
data modify storage eden:database quests.pool append value {id:"E02",name:"Stone Supply",tier:1,type:"gather",target:"minecraft:cobblestone",count:64,biomes:[],rep:25,crate:"common"}
data modify storage eden:database quests.pool append value {id:"E03",name:"Wood Run",tier:1,type:"gather",target:"#minecraft:logs",count:48,biomes:[1,4,0],rep:25,crate:"common"}
data modify storage eden:database quests.pool append value {id:"E04",name:"Pest Control",tier:1,type:"hunt",target:"minecraft:zombie",count:8,biomes:[],rep:25,crate:"common"}
data modify storage eden:database quests.pool append value {id:"E05",name:"Spider Sweep",tier:1,type:"hunt",target:"minecraft:spider",count:6,biomes:[],rep:25,crate:"common"}
data modify storage eden:database quests.pool append value {id:"E06",name:"Flower Picking",tier:1,type:"gather",target:"#minecraft:flowers",count:16,biomes:[2,0],rep:25,crate:"common"}
data modify storage eden:database quests.pool append value {id:"E07",name:"Coal Delivery",tier:1,type:"deliver",target:"minecraft:coal",count:32,biomes:[],rep:25,crate:"common"}
data modify storage eden:database quests.pool append value {id:"E08",name:"Bread Baker",tier:1,type:"craft",target:"minecraft:bread",count:16,biomes:[0,1,8],rep:25,crate:"common"}
data modify storage eden:database quests.pool append value {id:"E09",name:"Torch Maker",tier:1,type:"craft",target:"minecraft:torch",count:32,biomes:[],rep:25,crate:"common"}
data modify storage eden:database quests.pool append value {id:"E10",name:"Wool Collection",tier:1,type:"gather",target:"#minecraft:wool",count:16,biomes:[0,8,5],rep:25,crate:"common"}
data modify storage eden:database quests.pool append value {id:"E11",name:"Fish Supper",tier:1,type:"gather",target:"#minecraft:fishes",count:8,biomes:[9,10,11],rep:25,crate:"common"}
data modify storage eden:database quests.pool append value {id:"E12",name:"Bone Collector",tier:1,type:"gather",target:"minecraft:bone",count:16,biomes:[],rep:25,crate:"common"}
data modify storage eden:database quests.pool append value {id:"E13",name:"Sugar Rush",tier:1,type:"gather",target:"minecraft:sugar_cane",count:24,biomes:[11,10,6],rep:25,crate:"common"}
data modify storage eden:database quests.pool append value {id:"E14",name:"Arrow Fletcher",tier:1,type:"craft",target:"minecraft:arrow",count:64,biomes:[],rep:25,crate:"common"}
data modify storage eden:database quests.pool append value {id:"E15",name:"Mushroom Stew",tier:1,type:"craft",target:"minecraft:mushroom_stew",count:8,biomes:[3,12,11],rep:25,crate:"common"}

# ============================================================
# TIER 2 — TASK (15 Quests, 75 Rep, Uncommon Crate)
# ============================================================
data modify storage eden:database quests.pool append value {id:"T01",name:"Iron Prospector",tier:2,type:"gather",target:"minecraft:raw_iron",count:32,biomes:[5],rep:75,crate:"uncommon"}
data modify storage eden:database quests.pool append value {id:"T02",name:"Skeleton Slayer",tier:2,type:"hunt",target:"minecraft:skeleton",count:15,biomes:[],rep:75,crate:"uncommon"}
data modify storage eden:database quests.pool append value {id:"T03",name:"Cactus Trader",tier:2,type:"gather",target:"minecraft:cactus",count:32,biomes:[7,14],rep:75,crate:"uncommon"}
data modify storage eden:database quests.pool append value {id:"T04",name:"Bamboo Harvest",tier:2,type:"gather",target:"minecraft:bamboo",count:64,biomes:[6],rep:75,crate:"uncommon"}
data modify storage eden:database quests.pool append value {id:"T05",name:"Creeper Hunter",tier:2,type:"hunt",target:"minecraft:creeper",count:10,biomes:[],rep:75,crate:"uncommon"}
data modify storage eden:database quests.pool append value {id:"T06",name:"Bookshelf Builder",tier:2,type:"craft",target:"minecraft:bookshelf",count:8,biomes:[],rep:75,crate:"uncommon"}
data modify storage eden:database quests.pool append value {id:"T07",name:"Ice Collector",tier:2,type:"gather",target:"minecraft:packed_ice",count:32,biomes:[13,5],rep:75,crate:"uncommon"}
data modify storage eden:database quests.pool append value {id:"T08",name:"Honey Gatherer",tier:2,type:"gather",target:"minecraft:honey_bottle",count:8,biomes:[1,2,0],rep:75,crate:"uncommon"}
data modify storage eden:database quests.pool append value {id:"T09",name:"Pumpkin Farmer",tier:2,type:"gather",target:"minecraft:pumpkin",count:24,biomes:[0,1,4],rep:75,crate:"uncommon"}
data modify storage eden:database quests.pool append value {id:"T10",name:"Redstone Miner",tier:2,type:"gather",target:"minecraft:redstone",count:32,biomes:[],rep:75,crate:"uncommon"}
data modify storage eden:database quests.pool append value {id:"T11",name:"Drowned Hunter",tier:2,type:"hunt",target:"minecraft:drowned",count:12,biomes:[9,10,11],rep:75,crate:"uncommon"}
data modify storage eden:database quests.pool append value {id:"T12",name:"Lantern Crafter",tier:2,type:"craft",target:"minecraft:lantern",count:16,biomes:[],rep:75,crate:"uncommon"}
data modify storage eden:database quests.pool append value {id:"T13",name:"Copper Collector",tier:2,type:"gather",target:"minecraft:raw_copper",count:48,biomes:[],rep:75,crate:"uncommon"}
data modify storage eden:database quests.pool append value {id:"T14",name:"Melon Farm",tier:2,type:"gather",target:"minecraft:melon_slice",count:32,biomes:[6,8],rep:75,crate:"uncommon"}
data modify storage eden:database quests.pool append value {id:"T15",name:"Phantasm Defense",tier:2,type:"hunt",target:"minecraft:phantom",count:5,biomes:[],rep:75,crate:"uncommon"}

# ============================================================
# TIER 3 — CONTRACT (13 Quests, 150 Rep, Rare Crate)
# ============================================================
data modify storage eden:database quests.pool append value {id:"C01",name:"Gold Rush",tier:3,type:"gather",target:"minecraft:gold_ingot",count:24,biomes:[14,18],rep:150,crate:"rare"}
data modify storage eden:database quests.pool append value {id:"C02",name:"Enderman Bounty",tier:3,type:"hunt",target:"minecraft:enderman",count:8,biomes:[23,0],rep:150,crate:"rare"}
data modify storage eden:database quests.pool append value {id:"C03",name:"Diamond Seeker",tier:3,type:"gather",target:"minecraft:diamond",count:8,biomes:[17],rep:150,crate:"rare"}
data modify storage eden:database quests.pool append value {id:"C04",name:"Cave Spider Nest",tier:3,type:"hunt",target:"minecraft:cave_spider",count:15,biomes:[15,16],rep:150,crate:"rare"}
data modify storage eden:database quests.pool append value {id:"C05",name:"Obsidian Quarry",tier:3,type:"gather",target:"minecraft:obsidian",count:16,biomes:[18],rep:150,crate:"rare"}
data modify storage eden:database quests.pool append value {id:"C06",name:"Witch Bounty",tier:3,type:"hunt",target:"minecraft:witch",count:5,biomes:[11,3],rep:150,crate:"rare"}
data modify storage eden:database quests.pool append value {id:"C07",name:"Enchanted Gear",tier:3,type:"craft",target:"minecraft:enchanted_book",count:4,biomes:[],rep:150,crate:"rare"}
data modify storage eden:database quests.pool append value {id:"C08",name:"Prismarine Diver",tier:3,type:"gather",target:"minecraft:prismarine",count:32,biomes:[9],rep:150,crate:"rare"}
data modify storage eden:database quests.pool append value {id:"C09",name:"Blaze Hunter",tier:3,type:"hunt",target:"minecraft:blaze",count:8,biomes:[18],rep:150,crate:"rare"}
data modify storage eden:database quests.pool append value {id:"C10",name:"Ancient Debris",tier:3,type:"gather",target:"minecraft:ancient_debris",count:4,biomes:[18],rep:150,crate:"rare"}
data modify storage eden:database quests.pool append value {id:"C11",name:"Guardian Slayer",tier:3,type:"hunt",target:"minecraft:guardian",count:6,biomes:[9],rep:150,crate:"rare"}
data modify storage eden:database quests.pool append value {id:"C12",name:"Amethyst Miner",tier:3,type:"gather",target:"minecraft:amethyst_shard",count:24,biomes:[],rep:150,crate:"rare"}
data modify storage eden:database quests.pool append value {id:"C13",name:"Trail Explorer",tier:3,type:"explore",target:"trail_ruins",count:1,biomes:[4,6],rep:150,crate:"rare"}

# ============================================================
# TIER 4 — COMMISSION (12 Quests, 250 Rep, Ornate Crate)
# ============================================================
data modify storage eden:database quests.pool append value {id:"K01",name:"Wither Skeleton Skulls",tier:4,type:"hunt",target:"minecraft:wither_skeleton",count:20,biomes:[18],rep:250,crate:"ornate"}
data modify storage eden:database quests.pool append value {id:"K02",name:"Shulker Shells",tier:4,type:"gather",target:"minecraft:shulker_shell",count:4,biomes:[23],rep:250,crate:"ornate"}
data modify storage eden:database quests.pool append value {id:"K03",name:"Netherite Scrap",tier:4,type:"gather",target:"minecraft:netherite_scrap",count:4,biomes:[18],rep:250,crate:"ornate"}
data modify storage eden:database quests.pool append value {id:"K04",name:"Pillager Raid",tier:4,type:"hunt",target:"minecraft:pillager",count:25,biomes:[0,8,4],rep:250,crate:"ornate"}
data modify storage eden:database quests.pool append value {id:"K05",name:"Ocean Monument Run",tier:4,type:"explore",target:"monument",count:1,biomes:[9],rep:250,crate:"ornate"}
data modify storage eden:database quests.pool append value {id:"K06",name:"Deep Dark Expedition",tier:4,type:"explore",target:"ancient_city",count:1,biomes:[17],rep:250,crate:"ornate"}
data modify storage eden:database quests.pool append value {id:"K07",name:"Evoker Bounty",tier:4,type:"hunt",target:"minecraft:evoker",count:3,biomes:[3],rep:250,crate:"ornate"}
data modify storage eden:database quests.pool append value {id:"K08",name:"Trial Chamber Scout",tier:4,type:"explore",target:"trial_chambers",count:1,biomes:[],rep:250,crate:"ornate"}
data modify storage eden:database quests.pool append value {id:"K09",name:"Piglin Brute Bounty",tier:4,type:"hunt",target:"minecraft:piglin_brute",count:5,biomes:[18],rep:250,crate:"ornate"}
data modify storage eden:database quests.pool append value {id:"K10",name:"Emerald Hoard",tier:4,type:"gather",target:"minecraft:emerald",count:64,biomes:[5],rep:250,crate:"ornate"}
data modify storage eden:database quests.pool append value {id:"K11",name:"Warden's Shadow",tier:4,type:"explore",target:"deep_dark",count:1,biomes:[17],rep:250,crate:"ornate"}
data modify storage eden:database quests.pool append value {id:"K12",name:"Ravager Slayer",tier:4,type:"hunt",target:"minecraft:ravager",count:2,biomes:[0,8],rep:250,crate:"ornate"}

# ============================================================
# TIER 5 — EXPEDITION (10 Quests, 400 Rep, Exquisite Crate)
# ============================================================
data modify storage eden:database quests.pool append value {id:"X01",name:"Elder Guardian Hunt",tier:5,type:"hunt",target:"minecraft:elder_guardian",count:1,biomes:[9],rep:400,crate:"exquisite"}
data modify storage eden:database quests.pool append value {id:"X02",name:"End City Raid",tier:5,type:"explore",target:"end_city",count:1,biomes:[23],rep:400,crate:"exquisite"}
data modify storage eden:database quests.pool append value {id:"X03",name:"Bastion Plunder",tier:5,type:"explore",target:"bastion_remnant",count:1,biomes:[18],rep:400,crate:"exquisite"}
data modify storage eden:database quests.pool append value {id:"X04",name:"Dragon's Breath",tier:5,type:"gather",target:"minecraft:dragon_breath",count:16,biomes:[23],rep:400,crate:"exquisite"}
data modify storage eden:database quests.pool append value {id:"X05",name:"Heart of the Sea",tier:5,type:"gather",target:"minecraft:heart_of_the_sea",count:1,biomes:[9],rep:400,crate:"exquisite"}
data modify storage eden:database quests.pool append value {id:"X06",name:"Stronghold Delve",tier:5,type:"explore",target:"stronghold",count:1,biomes:[],rep:400,crate:"exquisite"}
data modify storage eden:database quests.pool append value {id:"X07",name:"Nether Star Fragment",tier:5,type:"hunt",target:"#nether_mobs",count:50,biomes:[18],rep:400,crate:"exquisite"}
data modify storage eden:database quests.pool append value {id:"X08",name:"Fortress Conqueror",tier:5,type:"explore",target:"fortress",count:1,biomes:[18],rep:400,crate:"exquisite"}
data modify storage eden:database quests.pool append value {id:"X09",name:"Mansion Raid",tier:5,type:"explore",target:"mansion",count:1,biomes:[3],rep:400,crate:"exquisite"}
data modify storage eden:database quests.pool append value {id:"X10",name:"Breeze Bounty",tier:5,type:"hunt",target:"minecraft:breeze",count:10,biomes:[],rep:400,crate:"exquisite"}

# ============================================================
# TIER 6 — HEROIC (10 Quests, 500 Rep, Mythical Crate)
# ============================================================
data modify storage eden:database quests.pool append value {id:"H01",name:"Wither Slayer",tier:6,type:"hunt",target:"minecraft:wither",count:1,biomes:[],rep:500,crate:"mythical"}
data modify storage eden:database quests.pool append value {id:"H02",name:"Dragon Slayer",tier:6,type:"hunt",target:"minecraft:ender_dragon",count:1,biomes:[23],rep:500,crate:"mythical"}
data modify storage eden:database quests.pool append value {id:"H03",name:"Warden Confrontation",tier:6,type:"hunt",target:"minecraft:warden",count:1,biomes:[17],rep:500,crate:"mythical"}
data modify storage eden:database quests.pool append value {id:"H04",name:"The Grand Harvest",tier:6,type:"gather",target:"all_crops",count:10,biomes:[],rep:500,crate:"mythical"}
data modify storage eden:database quests.pool append value {id:"H05",name:"Master Builder",tier:6,type:"craft",target:"minecraft:netherite_ingot",count:8,biomes:[18],rep:500,crate:"mythical"}
data modify storage eden:database quests.pool append value {id:"H06",name:"Ultimate Explorer",tier:6,type:"explore",target:"biomes",count:12,biomes:[],rep:500,crate:"mythical"}
data modify storage eden:database quests.pool append value {id:"H07",name:"Raid Champion",tier:6,type:"hunt",target:"raid_complete",count:1,biomes:[0,8],rep:500,crate:"mythical"}
data modify storage eden:database quests.pool append value {id:"H08",name:"Treasure Fleet",tier:6,type:"explore",target:"shipwreck",count:5,biomes:[9],rep:500,crate:"mythical"}
data modify storage eden:database quests.pool append value {id:"H09",name:"Nether Domination",tier:6,type:"hunt",target:"#nether_mobs",count:100,biomes:[18],rep:500,crate:"mythical"}
data modify storage eden:database quests.pool append value {id:"H10",name:"The Void Walker",tier:6,type:"explore",target:"end_city",count:3,biomes:[23],rep:500,crate:"mythical"}
