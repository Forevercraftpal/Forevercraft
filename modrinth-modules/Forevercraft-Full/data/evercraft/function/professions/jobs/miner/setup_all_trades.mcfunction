# Spelunker Trade Setup
# Buys ores, amethyst, and nether materials for emeralds
# Progressive unlocking based on villager level

# Clear existing trades
data modify entity @s Offers.Recipes set value []

# ===== NOVICE TRADES (Level 1) =====
# Sell Lapis Lazuli (8 for 1 emerald)
data modify entity @s Offers.Recipes append value {tier:0,max_uses:24,xp:5,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:lapis_lazuli",count:8},sell:{id:"minecraft:emerald",count:1}}

# Sell Quartz (16 for 1 emerald)
data modify entity @s Offers.Recipes append value {tier:0,max_uses:24,xp:5,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:quartz",count:16},sell:{id:"minecraft:emerald",count:1}}

# ===== APPRENTICE TRADES (Level 2) =====
# Sell Diamond (4 for 2 emeralds)
data modify entity @s Offers.Recipes append value {tier:1,max_uses:16,xp:15,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:diamond",count:4},sell:{id:"minecraft:emerald",count:2}}

# Sell Amethyst Cluster (4 for 3 emeralds)
data modify entity @s Offers.Recipes append value {tier:1,max_uses:16,xp:10,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:amethyst_cluster",count:4},sell:{id:"minecraft:emerald",count:3}}

# Sell Amethyst Shards (16 for 4 emeralds)
data modify entity @s Offers.Recipes append value {tier:1,max_uses:24,xp:10,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:amethyst_shard",count:16},sell:{id:"minecraft:emerald",count:4}}

# ===== JOURNEYMAN TRADES (Level 3) =====
# Sell Cobblestone (64 for 1 emerald)
data modify entity @s Offers.Recipes append value {tier:2,max_uses:24,xp:2,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:cobblestone",count:64},sell:{id:"minecraft:emerald",count:1}}

# Sell Copper Block (8 for 1 emerald)
data modify entity @s Offers.Recipes append value {tier:2,max_uses:24,xp:15,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:copper_block",count:8},sell:{id:"minecraft:emerald",count:1}}

# Sell Raw Copper Block (1 for 2 emeralds)
data modify entity @s Offers.Recipes append value {tier:2,max_uses:16,xp:10,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:raw_copper_block",count:1},sell:{id:"minecraft:emerald",count:2}}

# Sell Lapis Block (2 for 3 emeralds)
data modify entity @s Offers.Recipes append value {tier:2,max_uses:16,xp:20,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:lapis_block",count:2},sell:{id:"minecraft:emerald",count:3}}

# Sell Amethyst Block (8 for 4 emeralds)
data modify entity @s Offers.Recipes append value {tier:2,max_uses:16,xp:15,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:amethyst_block",count:8},sell:{id:"minecraft:emerald",count:4}}

# ===== EXPERT TRADES (Level 4) =====
# Sell Raw Iron Block (1 for 8 emeralds)
data modify entity @s Offers.Recipes append value {tier:3,max_uses:16,xp:10,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:raw_iron_block",count:1},sell:{id:"minecraft:emerald",count:8}}

# Sell Raw Gold Block (1 for 12 emeralds)
data modify entity @s Offers.Recipes append value {tier:3,max_uses:16,xp:10,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:raw_gold_block",count:1},sell:{id:"minecraft:emerald",count:12}}

# Sell Ancient Debris (1 for 15 emeralds)
data modify entity @s Offers.Recipes append value {tier:3,max_uses:8,xp:25,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:ancient_debris",count:1},sell:{id:"minecraft:emerald",count:15}}

# Sell Netherite Scrap (1 for 16 emeralds)
data modify entity @s Offers.Recipes append value {tier:3,max_uses:8,xp:25,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_scrap",count:1},sell:{id:"minecraft:emerald",count:16}}

# ===== MASTER TRADES (Level 5) =====
# Sell Diamond Block (2 for 18 emeralds)
data modify entity @s Offers.Recipes append value {tier:4,max_uses:12,xp:20,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:diamond_block",count:2},sell:{id:"minecraft:emerald",count:18}}

# Buy Budding Amethyst (costs 1 Netherite Block)
data modify entity @s Offers.Recipes append value {tier:4,max_uses:4,xp:30,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_block",count:1},sell:{id:"minecraft:budding_amethyst",count:1}}

# ===== BLOCK-TO-NETHER MATERIAL TRADES =====
# Trade: 64 Emerald Blocks for 1 Ancient Debris
data modify entity @s Offers.Recipes append value {tier:4,max_uses:999,xp:20,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald_block",count:64},sell:{id:"minecraft:ancient_debris",count:1}}

# Trade: 64 Iron Blocks for 1 Ancient Debris
data modify entity @s Offers.Recipes append value {tier:4,max_uses:999,xp:20,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:iron_block",count:64},sell:{id:"minecraft:ancient_debris",count:1}}

# Trade: 64 Gold Blocks for 1 Ancient Debris
data modify entity @s Offers.Recipes append value {tier:4,max_uses:999,xp:20,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:gold_block",count:64},sell:{id:"minecraft:ancient_debris",count:1}}

# Trade: 64 Diamonds for 1 Netherite Scrap
data modify entity @s Offers.Recipes append value {tier:4,max_uses:999,xp:20,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:diamond",count:64},sell:{id:"minecraft:netherite_scrap",count:1}}

# Buy 3 Crystallized Ember → 1 Artifact Shard
data modify entity @s Offers.Recipes append value {tier:4,max_uses:999,xp:20,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:fire_charge",count:3,components:{"minecraft:custom_name":{text:"Crystallized Ember",color:"gold",italic:false},"minecraft:lore":[{text:"Rare Ore Find",color:"yellow",italic:false},{text:""},{text:"A shard of solidified flame from deep below.",color:"dark_gray",italic:true},{text:""},{text:"Trade at a village profession.",color:"gray",italic:false}],"minecraft:custom_data":{ec_rare_ore:true,rare_ore_id:"crystallized_ember"},"minecraft:rarity":"rare","minecraft:max_stack_size":16,"minecraft:enchantment_glint_override":true}},sell:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:custom_name":{text:"Artifact Shard",color:"light_purple",italic:false},"minecraft:lore":[{text:"A fragment of ancient",color:"gray",italic:false},{text:"artifact power.",color:"gray",italic:false},{text:""},{text:"Trade to the Artificer",color:"yellow",italic:false},{text:"for rare crates!",color:"yellow",italic:false}],"minecraft:custom_data":{artifact_shard:true},"minecraft:enchantment_glint_override":true,"minecraft:item_model":"amethyst_shard"}}}

# Buy 3 Deepslate Heart → 1 Companion Shard
data modify entity @s Offers.Recipes append value {tier:4,max_uses:999,xp:20,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:echo_shard",count:3,components:{"minecraft:custom_name":{text:"Deepslate Heart",color:"gold",italic:false},"minecraft:lore":[{text:"Rare Ore Find",color:"yellow",italic:false},{text:""},{text:"The beating core of ancient stone.",color:"dark_gray",italic:true},{text:""},{text:"Trade at a village profession.",color:"gray",italic:false}],"minecraft:custom_data":{ec_rare_ore:true,rare_ore_id:"deepslate_heart"},"minecraft:rarity":"rare","minecraft:max_stack_size":16,"minecraft:enchantment_glint_override":true}},sell:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:custom_name":{text:"Companion Shard",color:"aqua",italic:false},"minecraft:lore":[{text:"A crystallized fragment of",color:"gray",italic:false},{text:"companion bond.",color:"gray",italic:false},{text:""},{text:"Trade to the Zookeeper",color:"yellow",italic:false},{text:"for rare crates!",color:"yellow",italic:false}],"minecraft:custom_data":{companion_shard:true},"minecraft:enchantment_glint_override":true,"minecraft:item_model":"prismarine_shard"}}}

# Buy 3 Soul Ember → 1 Artifact Shard
data modify entity @s Offers.Recipes append value {tier:4,max_uses:999,xp:20,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:stick",count:3,components:{"minecraft:item_model":"minecraft:soul_torch","minecraft:custom_name":{text:"Soul Ember",color:"gold",italic:false},"minecraft:lore":[{text:"Rare Nether Find",color:"yellow",italic:false},{text:""},{text:"A flickering soul trapped in crystal.",color:"dark_gray",italic:true},{text:""},{text:"Trade at a village profession.",color:"gray",italic:false}],"minecraft:custom_data":{ec_rare_ore:true,rare_ore_id:"soul_ember"},"minecraft:rarity":"rare","minecraft:max_stack_size":16,"minecraft:enchantment_glint_override":true}},sell:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:custom_name":{text:"Artifact Shard",color:"light_purple",italic:false},"minecraft:lore":[{text:"A fragment of ancient",color:"gray",italic:false},{text:"artifact power.",color:"gray",italic:false},{text:""},{text:"Trade to the Artificer",color:"yellow",italic:false},{text:"for rare crates!",color:"yellow",italic:false}],"minecraft:custom_data":{artifact_shard:true},"minecraft:enchantment_glint_override":true,"minecraft:item_model":"amethyst_shard"}}}

# Buy 3 Soul Ember → 1 Companion Shard
data modify entity @s Offers.Recipes append value {tier:4,max_uses:999,xp:20,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:stick",count:3,components:{"minecraft:item_model":"minecraft:soul_torch","minecraft:custom_name":{text:"Soul Ember",color:"gold",italic:false},"minecraft:lore":[{text:"Rare Nether Find",color:"yellow",italic:false},{text:""},{text:"A flickering soul trapped in crystal.",color:"dark_gray",italic:true},{text:""},{text:"Trade at a village profession.",color:"gray",italic:false}],"minecraft:custom_data":{ec_rare_ore:true,rare_ore_id:"soul_ember"},"minecraft:rarity":"rare","minecraft:max_stack_size":16,"minecraft:enchantment_glint_override":true}},sell:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:custom_name":{text:"Companion Shard",color:"aqua",italic:false},"minecraft:lore":[{text:"A crystallized fragment of",color:"gray",italic:false},{text:"companion bond.",color:"gray",italic:false},{text:""},{text:"Trade to the Zookeeper",color:"yellow",italic:false},{text:"for rare crates!",color:"yellow",italic:false}],"minecraft:custom_data":{companion_shard:true},"minecraft:enchantment_glint_override":true,"minecraft:item_model":"prismarine_shard"}}}

# Sell Ancient Ore (1 for 1 Netherite Block) — full item profile from Nymph
data modify entity @s Offers.Recipes append value {tier:4,max_uses:8,xp:30,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:bedrock",count:1,components:{"minecraft:custom_name":{text:"Ancient Ore",color:"dark_aqua",bold:true,italic:false},"minecraft:lore":[{text:"A primordial fragment from the",color:"gray",italic:false},{text:"deepest reaches of the world.",color:"gray",italic:false},{text:""},{text:"Sought by master miners",color:"dark_gray",italic:false}],"minecraft:custom_data":{ancient_ore:true,evercraft_item:true},"minecraft:enchantment_glint_override":true,"minecraft:rarity":"rare","minecraft:max_stack_size":64}},sell:{id:"minecraft:netherite_block",count:1}}
