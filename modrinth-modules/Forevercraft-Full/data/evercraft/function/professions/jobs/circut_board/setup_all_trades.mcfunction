# Redstoner (Technician) Trade Setup
# Buys redstone dust, blocks, ore and sells redstone components
# Progressive unlocking based on villager level

# Clear existing trades
data modify entity @s Offers.Recipes set value []

# ===== NOVICE TRADES (Level 1) - Basic Redstone Materials =====
# Buy Redstone Dust (18 for 1 emerald)
data modify entity @s Offers.Recipes append value {tier:0,max_uses:24,xp:2,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:redstone",count:18},sell:{id:"minecraft:emerald",count:1}}

# Buy Redstone Block (4 for 2 emeralds)
data modify entity @s Offers.Recipes append value {tier:0,max_uses:24,xp:2,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:redstone_block",count:4},sell:{id:"minecraft:emerald",count:2}}

# Buy Redstone Ore (2 for 1 emerald)
data modify entity @s Offers.Recipes append value {tier:0,max_uses:16,xp:2,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:redstone_ore",count:2},sell:{id:"minecraft:emerald",count:1}}

# Buy Deepslate Redstone Ore (2 for 1 emerald)
data modify entity @s Offers.Recipes append value {tier:0,max_uses:16,xp:2,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:deepslate_redstone_ore",count:2},sell:{id:"minecraft:emerald",count:1}}

# Sell Redstone Torch (1 emerald for 8)
data modify entity @s Offers.Recipes append value {tier:0,max_uses:24,xp:2,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:redstone_torch",count:8}}

# Sell Lever (1 emerald for 8)
data modify entity @s Offers.Recipes append value {tier:0,max_uses:24,xp:2,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:lever",count:8}}

# ===== APPRENTICE TRADES (Level 2) - Basic Components =====
# Sell Stone Button (1 emerald for 8)
data modify entity @s Offers.Recipes append value {tier:1,max_uses:24,xp:5,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:stone_button",count:8}}

# Sell Redstone Repeater (1 emerald for 4)
data modify entity @s Offers.Recipes append value {tier:1,max_uses:24,xp:5,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:repeater",count:4}}

# Sell Redstone Comparator (2 emeralds for 4)
data modify entity @s Offers.Recipes append value {tier:1,max_uses:24,xp:5,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:2},sell:{id:"minecraft:comparator",count:4}}

# Sell Redstone Lamp (2 emeralds for 1)
data modify entity @s Offers.Recipes append value {tier:1,max_uses:16,xp:5,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:2},sell:{id:"minecraft:redstone_lamp",count:1}}

# ===== JOURNEYMAN TRADES (Level 3) - Mechanism Blocks =====
# Sell Dropper (2 emeralds for 1)
data modify entity @s Offers.Recipes append value {tier:2,max_uses:16,xp:10,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:2},sell:{id:"minecraft:dropper",count:1}}

# Sell Piston (2 emeralds for 1)
data modify entity @s Offers.Recipes append value {tier:2,max_uses:16,xp:10,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:2},sell:{id:"minecraft:piston",count:1}}

# Sell Target Block (3 emeralds for 1)
data modify entity @s Offers.Recipes append value {tier:2,max_uses:16,xp:10,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:target",count:1}}

# Sell Dispenser (3 emeralds for 1)
data modify entity @s Offers.Recipes append value {tier:2,max_uses:16,xp:10,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:dispenser",count:1}}

# Sell Observer (4 emeralds for 1)
data modify entity @s Offers.Recipes append value {tier:2,max_uses:16,xp:10,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:observer",count:1}}

# ===== EXPERT TRADES (Level 4) - Advanced Components =====
# Sell Sticky Piston (4 emeralds for 1)
data modify entity @s Offers.Recipes append value {tier:3,max_uses:16,xp:15,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:sticky_piston",count:1}}

# Sell Daylight Detector (4 emeralds for 1)
data modify entity @s Offers.Recipes append value {tier:3,max_uses:12,xp:15,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:daylight_detector",count:1}}

# Sell Hopper (5 emeralds for 1)
data modify entity @s Offers.Recipes append value {tier:3,max_uses:12,xp:15,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:5},sell:{id:"minecraft:hopper",count:1}}

# Sell Crafter (6 emeralds for 1)
data modify entity @s Offers.Recipes append value {tier:3,max_uses:12,xp:15,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:6},sell:{id:"minecraft:crafter",count:1}}

# Sell TNT (8 emeralds for 1)
data modify entity @s Offers.Recipes append value {tier:3,max_uses:12,xp:15,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:8},sell:{id:"minecraft:tnt",count:1}}

# ===== MASTER TRADES (Level 5) - Rare Items =====
# Sell Sculk Sensor (8 emeralds for 1)
data modify entity @s Offers.Recipes append value {tier:4,max_uses:8,xp:20,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:8},sell:{id:"minecraft:sculk_sensor",count:1}}

# Sell Calibrated Sculk Sensor (12 emeralds for 1)
data modify entity @s Offers.Recipes append value {tier:4,max_uses:8,xp:20,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:12},sell:{id:"minecraft:calibrated_sculk_sensor",count:1}}
