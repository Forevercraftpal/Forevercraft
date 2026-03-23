# Taskmaster — Laborer Contract Trades
# Sells contracts for hiring laborers at your home

# Clear existing trades
data modify entity @s Offers.Recipes set value []

# ===== NOVICE TRADES (Tier 0) — Basic Laborers =====

# Miner Contract — 16 emeralds
data modify entity @s Offers.Recipes append value {tier:0,max_uses:3,xp:5,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:16},sell:{id:"minecraft:paper",count:1,components:{"minecraft:custom_name":{"text":"Miner Contract","color":"gold","italic":false},"minecraft:lore":[{"text":"Laborer Contract","color":"yellow","italic":false},"",{"text":"Hire a miner at your home.","color":"gray","italic":true},"",{"text":"Requires: Artisan Rank 10+","color":"aqua","italic":false}],"minecraft:rarity":"rare","minecraft:custom_data":{laborer_contract:true,laborer_type:"miner",laborer_type_id:1},"minecraft:consumable":{consume_seconds:0,animation:"none",sound:"intentionally_empty",has_consume_particles:false},"minecraft:max_stack_size":1}}}

# Farmer Contract — 16 emeralds
data modify entity @s Offers.Recipes append value {tier:0,max_uses:3,xp:5,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:16},sell:{id:"minecraft:paper",count:1,components:{"minecraft:custom_name":{"text":"Farmer Contract","color":"gold","italic":false},"minecraft:lore":[{"text":"Laborer Contract","color":"yellow","italic":false},"",{"text":"Hire a farmer at your home.","color":"gray","italic":true},"",{"text":"Requires: Artisan Rank 10+","color":"aqua","italic":false}],"minecraft:rarity":"rare","minecraft:custom_data":{laborer_contract:true,laborer_type:"farmer",laborer_type_id:2},"minecraft:consumable":{consume_seconds:0,animation:"none",sound:"intentionally_empty",has_consume_particles:false},"minecraft:max_stack_size":1}}}

# Fisher Contract — 16 emeralds
data modify entity @s Offers.Recipes append value {tier:0,max_uses:3,xp:5,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:16},sell:{id:"minecraft:paper",count:1,components:{"minecraft:custom_name":{"text":"Fisher Contract","color":"gold","italic":false},"minecraft:lore":[{"text":"Laborer Contract","color":"yellow","italic":false},"",{"text":"Hire a fisher at your home.","color":"gray","italic":true},"",{"text":"Requires: Artisan Rank 10+","color":"aqua","italic":false}],"minecraft:rarity":"rare","minecraft:custom_data":{laborer_contract:true,laborer_type:"fisher",laborer_type_id:3},"minecraft:consumable":{consume_seconds:0,animation:"none",sound:"intentionally_empty",has_consume_particles:false},"minecraft:max_stack_size":1}}}

# ===== JOURNEYMAN TRADES (Tier 2) — Advanced Laborers =====

# Woodcutter Contract — 24 emeralds
data modify entity @s Offers.Recipes append value {tier:2,max_uses:3,xp:10,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:24},sell:{id:"minecraft:paper",count:1,components:{"minecraft:custom_name":{"text":"Woodcutter Contract","color":"gold","italic":false},"minecraft:lore":[{"text":"Laborer Contract","color":"yellow","italic":false},"",{"text":"Hire a woodcutter at your home.","color":"gray","italic":true},"",{"text":"Requires: Artisan Rank 20+","color":"aqua","italic":false}],"minecraft:rarity":"rare","minecraft:custom_data":{laborer_contract:true,laborer_type:"woodcutter",laborer_type_id:4},"minecraft:consumable":{consume_seconds:0,animation:"none",sound:"intentionally_empty",has_consume_particles:false},"minecraft:max_stack_size":1}}}

# Forager Contract — 24 emeralds
data modify entity @s Offers.Recipes append value {tier:2,max_uses:3,xp:10,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:24},sell:{id:"minecraft:paper",count:1,components:{"minecraft:custom_name":{"text":"Forager Contract","color":"gold","italic":false},"minecraft:lore":[{"text":"Laborer Contract","color":"yellow","italic":false},"",{"text":"Hire a forager at your home.","color":"gray","italic":true},"",{"text":"Requires: Artisan Rank 20+","color":"aqua","italic":false}],"minecraft:rarity":"rare","minecraft:custom_data":{laborer_contract:true,laborer_type:"forager",laborer_type_id:5},"minecraft:consumable":{consume_seconds:0,animation:"none",sound:"intentionally_empty",has_consume_particles:false},"minecraft:max_stack_size":1}}}

# ===== MASTER TRADES (Tier 4) — Elite Laborer =====

# Prospector Contract — 48 emeralds + 1 netherite ingot
data modify entity @s Offers.Recipes append value {tier:4,max_uses:1,xp:30,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:48},buyB:{id:"minecraft:netherite_ingot",count:1},sell:{id:"minecraft:paper",count:1,components:{"minecraft:custom_name":{"text":"Prospector Contract","color":"light_purple","italic":false},"minecraft:lore":[{"text":"Laborer Contract","color":"yellow","italic":false},"",{"text":"Hire an elite prospector.","color":"gray","italic":true},"",{"text":"Requires: Artisan Rank 50+","color":"light_purple","italic":false}],"minecraft:rarity":"epic","minecraft:custom_data":{laborer_contract:true,laborer_type:"prospector",laborer_type_id:6},"minecraft:consumable":{consume_seconds:0,animation:"none",sound:"intentionally_empty",has_consume_particles:false},"minecraft:max_stack_size":1,"minecraft:enchantment_glint_override":true}}}
