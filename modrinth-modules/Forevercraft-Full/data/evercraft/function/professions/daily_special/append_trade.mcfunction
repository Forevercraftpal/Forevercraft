# Profession Daily Special — Append bonus trade to matching villager
# Called from fix_offers after normal trade setup, run as the villager
# Each profession ID (0-8) maps to a themed discounted trade

# 0 = Artificer: 3 emeralds → 4 lapis lazuli (enchanting deal)
execute if score #prof_daily ec.var matches 0 if entity @s[tag=more_professions_artificer] run data modify entity @s Offers.Recipes append value {tier:0,max_uses:4,xp:5,uses:0,priceMultiplier:0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:lapis_lazuli",count:4}}

# 1 = Bartender: 2 emeralds → honey bottle (healing item)
execute if score #prof_daily ec.var matches 1 if entity @s[tag=more_professions_bartender] run data modify entity @s Offers.Recipes append value {tier:0,max_uses:4,xp:5,uses:0,priceMultiplier:0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:2},sell:{id:"minecraft:honey_bottle",count:1}}

# 2 = Beekeeper: 1 emerald → 8 honeycomb (bulk deal)
execute if score #prof_daily ec.var matches 2 if entity @s[tag=more_professions_beekeeper] run data modify entity @s Offers.Recipes append value {tier:0,max_uses:4,xp:5,uses:0,priceMultiplier:0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:honeycomb",count:8}}

# 3 = Circuit Board: 4 emeralds → redstone block (tech discount)
execute if score #prof_daily ec.var matches 3 if entity @s[tag=more_professions_circut_board] run data modify entity @s Offers.Recipes append value {tier:0,max_uses:4,xp:5,uses:0,priceMultiplier:0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:redstone_block",count:1}}

# 4 = Explorer: 3 emeralds → spyglass (adventure tool)
execute if score #prof_daily ec.var matches 4 if entity @s[tag=more_professions_explorer] run data modify entity @s Offers.Recipes append value {tier:0,max_uses:2,xp:5,uses:0,priceMultiplier:0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:spyglass",count:1}}

# 5 = Hunter: 2 emeralds → 16 spectral arrows (bulk ammo)
execute if score #prof_daily ec.var matches 5 if entity @s[tag=more_professions_hunter] run data modify entity @s Offers.Recipes append value {tier:0,max_uses:4,xp:5,uses:0,priceMultiplier:0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:2},sell:{id:"minecraft:spectral_arrow",count:16}}

# 6 = Spelunker: 8 emeralds → diamond (discounted)
execute if score #prof_daily ec.var matches 6 if entity @s[tag=more_professions_miner] run data modify entity @s Offers.Recipes append value {tier:0,max_uses:2,xp:10,uses:0,priceMultiplier:0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:8},sell:{id:"minecraft:diamond",count:1}}

# 7 = Retired Adventurer: 4 emeralds → golden apple (combat food)
execute if score #prof_daily ec.var matches 7 if entity @s[tag=more_professions_retired_adventurer] run data modify entity @s Offers.Recipes append value {tier:0,max_uses:3,xp:8,uses:0,priceMultiplier:0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:golden_apple",count:1}}

# 8 = Zookeeper: 1 emerald → 16 bone meal (growth boost)
execute if score #prof_daily ec.var matches 8 if entity @s[tag=more_professions_zookeeper] run data modify entity @s Offers.Recipes append value {tier:0,max_uses:4,xp:5,uses:0,priceMultiplier:0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:bone_meal",count:16}}
