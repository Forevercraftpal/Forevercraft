# Archer Trade Setup
# Buys unique mob drops, sells tipped arrows and special arrows
# Progressive unlocking based on villager level

# Clear existing trades
data modify entity @s Offers.Recipes set value []

# ===== NOVICE TRADES (Level 1) - Common Drops =====
# Buy Slime Ball (8 for 1 emerald)
data modify entity @s Offers.Recipes append value {tier:0,max_uses:24,xp:2,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:slime_ball",count:8},sell:{id:"minecraft:emerald",count:1}}

# Buy Spider Eye (8 for 1 emerald)
data modify entity @s Offers.Recipes append value {tier:0,max_uses:24,xp:2,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:spider_eye",count:8},sell:{id:"minecraft:emerald",count:1}}

# Buy Gunpowder (8 for 1 emerald)
data modify entity @s Offers.Recipes append value {tier:0,max_uses:24,xp:2,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:gunpowder",count:8},sell:{id:"minecraft:emerald",count:1}}

# Buy Bone (24 for 2 emeralds)
data modify entity @s Offers.Recipes append value {tier:0,max_uses:24,xp:2,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:bone",count:24},sell:{id:"minecraft:emerald",count:2}}

# ===== APPRENTICE TRADES (Level 2) =====
# Buy Phantom Membrane (4 for 2 emeralds)
data modify entity @s Offers.Recipes append value {tier:1,max_uses:24,xp:10,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:phantom_membrane",count:4},sell:{id:"minecraft:emerald",count:2}}

# Buy Prismarine Shard (8 for 2 emeralds)
data modify entity @s Offers.Recipes append value {tier:1,max_uses:24,xp:10,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:prismarine_shard",count:8},sell:{id:"minecraft:emerald",count:2}}

# Buy Magma Cream (4 for 2 emeralds)
data modify entity @s Offers.Recipes append value {tier:1,max_uses:16,xp:15,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:magma_cream",count:4},sell:{id:"minecraft:emerald",count:2}}

# ===== JOURNEYMAN TRADES (Level 3) =====
# Buy Glow Ink Sac (4 for 2 emeralds)
data modify entity @s Offers.Recipes append value {tier:2,max_uses:24,xp:5,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:glow_ink_sac",count:4},sell:{id:"minecraft:emerald",count:2}}

# Buy Ghast Tear (2 for 4 emeralds)
data modify entity @s Offers.Recipes append value {tier:2,max_uses:16,xp:15,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:ghast_tear",count:2},sell:{id:"minecraft:emerald",count:4}}

# Buy Breeze Rod (2 for 4 emeralds)
data modify entity @s Offers.Recipes append value {tier:2,max_uses:16,xp:15,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:breeze_rod",count:2},sell:{id:"minecraft:emerald",count:4}}

# Buy Dragon's Breath (1 for 5 emeralds)
data modify entity @s Offers.Recipes append value {tier:2,max_uses:12,xp:20,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:dragon_breath",count:1},sell:{id:"minecraft:emerald",count:5}}

# ===== EXPERT TRADES (Level 4) =====
# Buy Shulker Shell (2 for 6 emeralds)
data modify entity @s Offers.Recipes append value {tier:3,max_uses:12,xp:20,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:shulker_shell",count:2},sell:{id:"minecraft:emerald",count:6}}

# Buy Ender Pearl (4 for 6 emeralds)
data modify entity @s Offers.Recipes append value {tier:3,max_uses:16,xp:20,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:ender_pearl",count:4},sell:{id:"minecraft:emerald",count:6}}

# Buy Wither Skeleton Skull (1 for 24 emeralds)
data modify entity @s Offers.Recipes append value {tier:3,max_uses:8,xp:15,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:wither_skeleton_skull",count:1},sell:{id:"minecraft:emerald",count:24}}

# ===== MASTER TRADES (Level 5) =====
# Buy Heart of the Sea (1 for 32 emeralds)
data modify entity @s Offers.Recipes append value {tier:4,max_uses:8,xp:25,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:heart_of_the_sea",count:1},sell:{id:"minecraft:emerald",count:32}}

# ===== ARROW TRADES =====
# Sell Arrow of Weakness (2 emeralds for 8)
data modify entity @s Offers.Recipes append value {tier:1,max_uses:16,xp:5,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:2},sell:{id:"minecraft:tipped_arrow",count:8,components:{"minecraft:potion_contents":{potion:"minecraft:weakness"}}}}

# Sell Arrow of Slowness (2 emeralds for 8)
data modify entity @s Offers.Recipes append value {tier:1,max_uses:16,xp:2,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:2},sell:{id:"minecraft:tipped_arrow",count:8,components:{"minecraft:potion_contents":{potion:"minecraft:slowness"}}}}

# Sell Arrow of Poison (3 emeralds for 8)
data modify entity @s Offers.Recipes append value {tier:2,max_uses:16,xp:10,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:tipped_arrow",count:8,components:{"minecraft:potion_contents":{potion:"minecraft:poison"}}}}

# Sell Arrow of Healing (3 emeralds for 8)
data modify entity @s Offers.Recipes append value {tier:2,max_uses:16,xp:10,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:tipped_arrow",count:8,components:{"minecraft:potion_contents":{potion:"minecraft:healing"}}}}

# Sell Arrow of Strength (4 emeralds for 8)
data modify entity @s Offers.Recipes append value {tier:3,max_uses:12,xp:15,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:tipped_arrow",count:8,components:{"minecraft:potion_contents":{potion:"minecraft:strength"}}}}

# Sell Arrow of Harming (4 emeralds for 8)
data modify entity @s Offers.Recipes append value {tier:3,max_uses:12,xp:15,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:tipped_arrow",count:8,components:{"minecraft:potion_contents":{potion:"minecraft:harming"}}}}

# Sell Arrow of Lightning (1 netherite ingot for 1)
data modify entity @s Offers.Recipes append value {tier:4,max_uses:4,xp:20,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_ingot",count:1},sell:{id:"minecraft:spectral_arrow",count:1,components:{"minecraft:custom_name":{text:"Arrow of Lightning",color:"yellow",bold:true,italic:false},"minecraft:lore":[{text:"Strikes lightning where it lands",color:"gray",italic:false},{text:""},{text:"Single use",color:"dark_gray",italic:false}],"minecraft:custom_data":{lightning_arrow:true,evercraft_item:true},"minecraft:enchantment_glint_override":true,"minecraft:rarity":"rare"}}}
