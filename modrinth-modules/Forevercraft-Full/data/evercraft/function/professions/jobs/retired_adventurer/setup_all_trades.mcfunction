# Retired Adventurer Trade Setup
# BUYS: Diamond and Netherite tools/weapons/armor for slightly less than crafting cost
# This provides a way for players to recycle unwanted gear
# Progressive unlocking based on villager level

# Clear existing trades
data modify entity @s Offers.Recipes set value []

# ===== NOVICE TRADES (Level 1) - Diamond Tools =====
# Buy Diamond Sword (1 diamond payout, crafting cost = 2 diamonds)
data modify entity @s Offers.Recipes append value {tier:0,max_uses:12,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:diamond_sword",count:1},sell:{id:"minecraft:diamond",count:1}}

# Buy Diamond Spear (1 diamond payout)
data modify entity @s Offers.Recipes append value {tier:0,max_uses:12,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:diamond_spear",count:1},sell:{id:"minecraft:diamond",count:1}}

# Buy Diamond Shovel (1 diamond payout, crafting cost = 1 diamond + 2 sticks)
data modify entity @s Offers.Recipes append value {tier:0,max_uses:12,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:diamond_shovel",count:1},sell:{id:"minecraft:diamond",count:1}}

# Buy Diamond Hoe (1 diamond payout, crafting cost = 2 diamonds)
data modify entity @s Offers.Recipes append value {tier:0,max_uses:12,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:diamond_hoe",count:1},sell:{id:"minecraft:diamond",count:1}}

# ===== APPRENTICE TRADES (Level 2) - Diamond Tools (Higher Value) =====
# Buy Diamond Pickaxe (2 diamonds payout, crafting cost = 3 diamonds)
data modify entity @s Offers.Recipes append value {tier:1,max_uses:12,xp:5,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:diamond_pickaxe",count:1},sell:{id:"minecraft:diamond",count:2}}

# Buy Diamond Axe (2 diamonds payout, crafting cost = 3 diamonds)
data modify entity @s Offers.Recipes append value {tier:1,max_uses:12,xp:5,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:diamond_axe",count:1},sell:{id:"minecraft:diamond",count:2}}

# ===== JOURNEYMAN TRADES (Level 3) - Diamond Armor =====
# Buy Diamond Boots (3 diamonds payout, crafting cost = 4 diamonds)
data modify entity @s Offers.Recipes append value {tier:2,max_uses:8,xp:10,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:diamond_boots",count:1},sell:{id:"minecraft:diamond",count:3}}

# Buy Diamond Helmet (4 diamonds payout, crafting cost = 5 diamonds)
data modify entity @s Offers.Recipes append value {tier:2,max_uses:8,xp:10,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:diamond_helmet",count:1},sell:{id:"minecraft:diamond",count:4}}

# Buy Diamond Leggings (6 diamonds payout, crafting cost = 7 diamonds)
data modify entity @s Offers.Recipes append value {tier:2,max_uses:8,xp:10,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:diamond_leggings",count:1},sell:{id:"minecraft:diamond",count:6}}

# Buy Diamond Chestplate (7 diamonds payout, crafting cost = 8 diamonds)
data modify entity @s Offers.Recipes append value {tier:2,max_uses:8,xp:10,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:diamond_chestplate",count:1},sell:{id:"minecraft:diamond",count:7}}

# ===== JOURNEYMAN BONUS - Battle Trophy Trade =====
# Buy Battle Trophy (pays 2 diamond blocks — a worthy bounty for a worthy foe)
data modify entity @s Offers.Recipes append value {tier:2,max_uses:999,xp:15,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:knowledge_book",count:1,components:{"minecraft:custom_name":{text:"Battle Trophy",color:"gold",italic:true},"minecraft:lore":[{text:"A trophy from a worthy foe.",color:"gray",italic:false},{text:"Sell to a Retired Adventurer.",color:"dark_gray",italic:false}],"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{trophy:1b}}},sell:{id:"minecraft:diamond_block",count:2}}

# ===== EXPERT TRADES (Level 4) - Netherite Tools =====
# Buy Netherite Sword (1 netherite ingot payout)
data modify entity @s Offers.Recipes append value {tier:3,max_uses:8,xp:15,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_sword",count:1},sell:{id:"minecraft:netherite_ingot",count:1}}

# Buy Netherite Spear (1 netherite ingot payout)
data modify entity @s Offers.Recipes append value {tier:3,max_uses:8,xp:15,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_spear",count:1},sell:{id:"minecraft:netherite_ingot",count:1}}

# Buy Netherite Shovel (1 netherite ingot payout)
data modify entity @s Offers.Recipes append value {tier:3,max_uses:8,xp:15,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_shovel",count:1},sell:{id:"minecraft:netherite_ingot",count:1}}

# Buy Netherite Hoe (1 netherite ingot payout)
data modify entity @s Offers.Recipes append value {tier:3,max_uses:8,xp:15,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_hoe",count:1},sell:{id:"minecraft:netherite_ingot",count:1}}

# Buy Netherite Pickaxe (1 netherite ingot payout)
data modify entity @s Offers.Recipes append value {tier:3,max_uses:8,xp:15,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_pickaxe",count:1},sell:{id:"minecraft:netherite_ingot",count:1}}

# Buy Netherite Axe (1 netherite ingot payout)
data modify entity @s Offers.Recipes append value {tier:3,max_uses:8,xp:15,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_axe",count:1},sell:{id:"minecraft:netherite_ingot",count:1}}

# ===== MASTER TRADES (Level 5) - Netherite Armor =====
# Buy Netherite Boots (1 netherite ingot payout)
data modify entity @s Offers.Recipes append value {tier:4,max_uses:4,xp:20,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_boots",count:1},sell:{id:"minecraft:netherite_ingot",count:1}}

# Buy Netherite Helmet (1 netherite ingot payout)
data modify entity @s Offers.Recipes append value {tier:4,max_uses:4,xp:20,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_helmet",count:1},sell:{id:"minecraft:netherite_ingot",count:1}}

# Buy Netherite Leggings (1 netherite ingot payout)
data modify entity @s Offers.Recipes append value {tier:4,max_uses:4,xp:20,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_leggings",count:1},sell:{id:"minecraft:netherite_ingot",count:1}}

# Buy Netherite Chestplate (1 netherite ingot payout)
data modify entity @s Offers.Recipes append value {tier:4,max_uses:4,xp:20,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_chestplate",count:1},sell:{id:"minecraft:netherite_ingot",count:1}}

# ===== ANECDOTES - Lost your book? Buy it back for 1 Netherite Block (punishment!) =====
# Elder's Anecdote
data modify entity @s Offers.Recipes append value {tier:4,max_uses:1,xp:50,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_block",count:1},sell:{id:"minecraft:written_book",count:1,components:{"minecraft:written_book_content":{title:"Elder's Anecdote",author:"The Village Elder",pages:[{raw:'{text:"\\n\\n     §6§lELDER\'S\\n    ANECDOTE§r\\n\\n§7§oWelcome, traveler.\\nSit by my fire awhile,\\nand let an old soul\\nshare what little\\nwisdom he has found...§r\\n\\n§8— The Village Elder"}'}]},"minecraft:custom_name":{text:"Elder's Anecdote",color:"gold",italic:false},"minecraft:lore":[{text:"Wisdom from the fireside",color:"gray",italic:true}],"minecraft:custom_data":{evercraft_book:"elders_anecdote",evercraft_item:true}}}}

# Fisherman's Anecdote
data modify entity @s Offers.Recipes append value {tier:4,max_uses:1,xp:50,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_block",count:1},sell:{id:"minecraft:written_book",count:1,components:{"minecraft:written_book_content":{title:"Fisherman's Anecdote",author:"Old Seadog",pages:[{raw:'{text:"\\n\\n   §b§lFISHERMAN\'S\\n    ANECDOTE§r\\n\\n§7§oMusings from an old\\nsalt who spent his\\nyears listening to\\nthe whispers of\\nthe tide...§r\\n\\n§8— Old Seadog"}'}]},"minecraft:custom_name":{text:"Fisherman's Anecdote",color:"aqua",italic:false},"minecraft:lore":[{text:"Musings of an old salt",color:"dark_aqua",italic:true}],"minecraft:custom_data":{evercraft_book:"fishermans_anecdote",evercraft_item:true}}}}

# Miner's Anecdote
data modify entity @s Offers.Recipes append value {tier:4,max_uses:1,xp:50,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_block",count:1},sell:{id:"minecraft:written_book",count:1,components:{"minecraft:written_book_content":{title:"Miner's Anecdote",author:"The Old Prospector",pages:[{raw:'{text:"\\n\\n   §7§lMINER\'S\\n   ANECDOTE§r\\n\\n§7§oTales and truths\\nfrom one who spent\\na lifetime listening\\nto the stones...§r\\n\\n§8— The Old Prospector"}'}]},"minecraft:custom_name":{text:"Miner's Anecdote",color:"gray",italic:false},"minecraft:lore":[{text:"Wisdom from the deep places",color:"dark_gray",italic:true}],"minecraft:custom_data":{evercraft_book:"miners_anecdote",evercraft_item:true}}}}

# Wanderer's Anecdote
data modify entity @s Offers.Recipes append value {tier:4,max_uses:1,xp:50,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_block",count:1},sell:{id:"minecraft:written_book",count:1,components:{"minecraft:written_book_content":{title:"Wanderer's Anecdote",author:"The Nomad Sage",pages:[{raw:'{text:"\\n\\n   §6§lWANDERER\'S\\n    ANECDOTE§r\\n\\n§7§oReflections from one\\nwho walked every path\\nand found treasure in\\nthe strangest places...§r\\n\\n§8— The Nomad Sage"}'}]},"minecraft:custom_name":{text:"Wanderer's Anecdote",color:"yellow",italic:false},"minecraft:lore":[{text:"Tales from every road",color:"gray",italic:true}],"minecraft:custom_data":{evercraft_book:"wanderers_anecdote",evercraft_item:true}}}}

# Scholar's Anecdote
data modify entity @s Offers.Recipes append value {tier:4,max_uses:1,xp:50,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_block",count:1},sell:{id:"minecraft:written_book",count:1,components:{"minecraft:written_book_content":{title:"Scholar's Anecdote",author:"The Archivist",pages:[{raw:'{text:"\\n\\n    §5§lSCHOLAR\'S\\n    ANECDOTE§r\\n\\n§7§oFragments of wisdom\\ngathered from dusty\\ntomes and whispered\\nlegends...§r\\n\\n§8— The Archivist"}'}]},"minecraft:custom_name":{text:"Scholar's Anecdote",color:"dark_purple",italic:false},"minecraft:lore":[{text:"Whispers of ancient power",color:"gray",italic:true}],"minecraft:custom_data":{evercraft_book:"scholars_anecdote",evercraft_item:true}}}}

# Beastkeeper's Anecdote
data modify entity @s Offers.Recipes append value {tier:4,max_uses:1,xp:50,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_block",count:1},sell:{id:"minecraft:written_book",count:1,components:{"minecraft:written_book_content":{title:"Beastkeeper's Anecdote",author:"The Old Shepherd",pages:[{raw:'{text:"\\n\\n  §a§lBEASTKEEPER\'S\\n    ANECDOTE§r\\n\\n§7§oStories and secrets\\nfrom one who learned\\nto speak with the\\ncreatures of this\\nworld...§r\\n\\n§8— The Old Shepherd"}'}]},"minecraft:custom_name":{text:"Beastkeeper's Anecdote",color:"green",italic:false},"minecraft:lore":[{text:"Secrets of the spirit-bound",color:"gray",italic:true}],"minecraft:custom_data":{evercraft_book:"beastkeepers_anecdote",evercraft_item:true}}}}
