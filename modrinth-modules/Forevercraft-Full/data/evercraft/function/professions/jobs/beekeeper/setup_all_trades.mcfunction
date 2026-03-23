# Apiarist Trade Setup
# Buys bee-related materials, sells honey products and beehives
# Progressive unlocking based on villager level

# Clear existing trades
data modify entity @s Offers.Recipes set value []

# ===== NOVICE TRADES (Level 1) - Basic Bee Materials =====
# Buy Honeycomb (8 for 1 emerald)
data modify entity @s Offers.Recipes append value {tier:0,max_uses:24,xp:2,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:honeycomb",count:8},sell:{id:"minecraft:emerald",count:1}}

# Buy Glass Bottle (8 for 1 emerald)
data modify entity @s Offers.Recipes append value {tier:0,max_uses:24,xp:2,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:glass_bottle",count:8},sell:{id:"minecraft:emerald",count:1}}

# Buy Egg (32 for 1 emerald)
data modify entity @s Offers.Recipes append value {tier:0,max_uses:24,xp:2,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:egg",count:32},sell:{id:"minecraft:emerald",count:1}}

# ===== APPRENTICE TRADES (Level 2) - Tools & Flowers =====
# Buy Campfire (1 for 1 emerald)
data modify entity @s Offers.Recipes append value {tier:1,max_uses:16,xp:5,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:campfire",count:1},sell:{id:"minecraft:emerald",count:1}}

# Buy Torchflower (2 for 1 emerald)
data modify entity @s Offers.Recipes append value {tier:1,max_uses:16,xp:5,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:torchflower",count:2},sell:{id:"minecraft:emerald",count:1}}

# ===== JOURNEYMAN TRADES (Level 3) - Honey Products =====
# Buy Pitcher Plant (1 for 2 emeralds)
data modify entity @s Offers.Recipes append value {tier:2,max_uses:16,xp:10,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:pitcher_plant",count:1},sell:{id:"minecraft:emerald",count:2}}

# Buy Shears (1 for 2 emeralds)
data modify entity @s Offers.Recipes append value {tier:2,max_uses:16,xp:10,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:shears",count:1},sell:{id:"minecraft:emerald",count:2}}

# Sell Candles (1 emerald for 8)
data modify entity @s Offers.Recipes append value {tier:2,max_uses:16,xp:10,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:candle",count:8}}

# Sell Honey Bottle (2 emeralds for 4)
data modify entity @s Offers.Recipes append value {tier:2,max_uses:16,xp:10,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:2},sell:{id:"minecraft:honey_bottle",count:4}}

# Sell Honeycomb Block (1 emerald for 2)
data modify entity @s Offers.Recipes append value {tier:2,max_uses:16,xp:10,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:honeycomb_block",count:2}}

# Sell Honey Block (2 emeralds for 1)
data modify entity @s Offers.Recipes append value {tier:2,max_uses:16,xp:10,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:2},sell:{id:"minecraft:honey_block",count:1}}

# ===== EXPERT TRADES (Level 4) - Beehives & Wax =====
# Sell Beehive (4 emeralds for 1)
data modify entity @s Offers.Recipes append value {tier:3,max_uses:12,xp:15,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:beehive",count:1}}

# ===== MASTER TRADES (Level 5) - Rare Bee Items =====
# Sell Bee Nest (8 emeralds for 1)
data modify entity @s Offers.Recipes append value {tier:4,max_uses:8,xp:20,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:8},sell:{id:"minecraft:bee_nest",count:1}}

# Sell Exquisite Nectar (16 emeralds for 1)
data modify entity @s Offers.Recipes append value {tier:4,max_uses:4,xp:20,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:16},sell:{id:"minecraft:honey_bottle",count:1,components:{"minecraft:custom_name":{text:"Exquisite Nectar",color:"light_purple",italic:true},"minecraft:lore":[{text:""},{text:"An ancient essence of pure vitality",color:"gray",italic:false},{text:""},{text:"Completely restores hunger and grants",color:"dark_green",italic:false},{text:"10 hearts of absorption",color:"gold",italic:false}],"minecraft:custom_data":{exquisite_nectar:true},"minecraft:food":{nutrition:20,saturation:20.0f,can_always_eat:true},"minecraft:consumable":{consume_seconds:1.6f,animation:"drink",sound:"minecraft:entity.generic.drink",has_consume_particles:true,on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"minecraft:absorption",amplifier:3,duration:2400},{id:"minecraft:regeneration",amplifier:1,duration:200}]}]},"minecraft:rarity":"epic","minecraft:enchantment_glint_override":false,"minecraft:max_stack_size":16}}}

# Buy 3 Golden Root → 1 Artifact Shard
data modify entity @s Offers.Recipes append value {tier:4,max_uses:999,xp:20,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:golden_carrot",count:3,components:{"minecraft:custom_name":{text:"Golden Root",color:"gold",italic:false},"minecraft:lore":[{text:"Rare Forage Find",color:"yellow",italic:false},{text:""},{text:"A lustrous root pulsing with natural energy.",color:"dark_gray",italic:true},{text:""},{text:"Trade at a village profession.",color:"gray",italic:false}],"minecraft:custom_data":{ec_rare_food:true,rare_food_id:"golden_root"},"minecraft:rarity":"rare","minecraft:max_stack_size":16,"minecraft:enchantment_glint_override":true}},sell:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:custom_name":{text:"Artifact Shard",color:"light_purple",italic:false},"minecraft:lore":[{text:"A fragment of ancient",color:"gray",italic:false},{text:"artifact power.",color:"gray",italic:false},{text:""},{text:"Trade to the Artificer",color:"yellow",italic:false},{text:"for rare crates!",color:"yellow",italic:false}],"minecraft:custom_data":{artifact_shard:true},"minecraft:enchantment_glint_override":true,"minecraft:item_model":"amethyst_shard"}}}

# Buy 3 Starbloom Petal → 1 Companion Shard
data modify entity @s Offers.Recipes append value {tier:4,max_uses:999,xp:20,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:pink_petals",count:3,components:{"minecraft:custom_name":{text:"Starbloom Petal",color:"gold",italic:false},"minecraft:lore":[{text:"Rare Forage Find",color:"yellow",italic:false},{text:""},{text:"A shimmering petal that glows at dusk.",color:"dark_gray",italic:true},{text:""},{text:"Trade at a village profession.",color:"gray",italic:false}],"minecraft:custom_data":{ec_rare_food:true,rare_food_id:"starbloom_petal"},"minecraft:rarity":"rare","minecraft:max_stack_size":16,"minecraft:enchantment_glint_override":true}},sell:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:custom_name":{text:"Companion Shard",color:"aqua",italic:false},"minecraft:lore":[{text:"A crystallized fragment of",color:"gray",italic:false},{text:"companion bond.",color:"gray",italic:false},{text:""},{text:"Trade to the Zookeeper",color:"yellow",italic:false},{text:"for rare crates!",color:"yellow",italic:false}],"minecraft:custom_data":{companion_shard:true},"minecraft:enchantment_glint_override":true,"minecraft:item_model":"prismarine_shard"}}}
