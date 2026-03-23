# Expeditionist Trade Setup
# BUYS: saddles, horse armor, sponge, chorus fruit for emeralds
# SELLS: exploration items, artifacts, froglights, RUNES, pack items
# Progressive unlocking based on villager level

# Clear existing trades
data modify entity @s Offers.Recipes set value []

# ===== NOVICE TRADES (Level 1) - Getting Started =====
# Buy Chorus Fruit (8 for 1 emerald)
data modify entity @s Offers.Recipes append value {tier:0,max_uses:24,xp:2,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:chorus_fruit",count:8},sell:{id:"minecraft:emerald",count:1}}

# Buy Saddle (1 for 3 emeralds)
data modify entity @s Offers.Recipes append value {tier:0,max_uses:16,xp:2,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:saddle",count:1},sell:{id:"minecraft:emerald",count:3}}

# ===== APPRENTICE TRADES (Level 2) - Horse Armor & Travel =====
# Buy Iron Horse Armor (1 for 5 emeralds)
data modify entity @s Offers.Recipes append value {tier:1,max_uses:12,xp:5,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:iron_horse_armor",count:1},sell:{id:"minecraft:emerald",count:5}}

# Buy Golden Horse Armor (1 for 8 emeralds)
data modify entity @s Offers.Recipes append value {tier:1,max_uses:12,xp:5,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:golden_horse_armor",count:1},sell:{id:"minecraft:emerald",count:8}}

# ===== JOURNEYMAN TRADES (Level 3) - Advanced Exploration =====
# Buy Diamond Horse Armor (1 for 12 emeralds)
data modify entity @s Offers.Recipes append value {tier:2,max_uses:8,xp:10,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:diamond_horse_armor",count:1},sell:{id:"minecraft:emerald",count:12}}

# Buy 32 Sponge for 16 emeralds
data modify entity @s Offers.Recipes append value {tier:2,max_uses:12,xp:10,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:sponge",count:32},sell:{id:"minecraft:emerald",count:16}}

# Sell Nautilus Shell (8 emeralds for 1)
data modify entity @s Offers.Recipes append value {tier:2,max_uses:8,xp:10,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:8},sell:{id:"minecraft:nautilus_shell",count:1}}

# ===== EXPERT TRADES (Level 4) - Special Items & Artifacts =====
# Sell Ender Pearls (8 emeralds for 1)
data modify entity @s Offers.Recipes append value {tier:3,max_uses:16,xp:15,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:8},sell:{id:"minecraft:ender_pearl",count:1}}

# Sell Firework Rockets Flight 3 (8 emeralds for 8)
data modify entity @s Offers.Recipes append value {tier:3,max_uses:24,xp:15,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:8},sell:{id:"minecraft:firework_rocket",count:8,components:{"minecraft:fireworks":{flight_duration:3}}}}

# Sell Travelers Charm (16 emeralds for 1) - Common Artifact
data modify entity @s Offers.Recipes append value {tier:3,max_uses:4,xp:15,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:16},sell:{id:"minecraft:rabbit_foot",count:1,components:{"minecraft:custom_name":"Travelers Charm","minecraft:rarity":"common","minecraft:lore":[{text:"Common Artifact",color:"white",italic:false},{text:"Accessory — Inventory Held",color:"dark_gray",italic:false},"",[{text:"A small trinket carried by",color:"gray",italic:true}],[{text:"wanderers for safe journeys.",color:"gray",italic:true}],"",[{text:"Passive: ",color:"white",italic:false},{text:"+5% Movement Speed while in inventory",color:"green"}]],"minecraft:custom_data":{artifact:"travelers_charm",is_artifact:true,tier:"common",accessory:true,inventory_held:true},"minecraft:enchantment_glint_override":true}}}

# Sell Worn Compass (16 emeralds for 1) - Common Artifact
data modify entity @s Offers.Recipes append value {tier:3,max_uses:4,xp:15,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:16},sell:{id:"minecraft:compass",count:1,components:{"minecraft:custom_name":"Worn Compass","minecraft:rarity":"common","minecraft:lore":[{text:"Common Artifact",color:"white",italic:false},{text:"Accessory — Inventory Held",color:"dark_gray",italic:false},"",[{text:"Its needle spins slowly, but",color:"gray",italic:true}],[{text:"always finds the way home.",color:"gray",italic:true}],"",[{text:"Passive: ",color:"white",italic:false},{text:"Slow Falling when below Y=0",color:"green"}]],"minecraft:custom_data":{artifact:"worn_compass",is_artifact:true,tier:"common",accessory:true,inventory_held:true},"minecraft:enchantment_glint_override":true}}}

# Sell Ochre Froglight (16 emeralds for 4)
data modify entity @s Offers.Recipes append value {tier:3,max_uses:8,xp:15,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:16},sell:{id:"minecraft:ochre_froglight",count:4}}

# Sell Verdant Froglight (16 emeralds for 4)
data modify entity @s Offers.Recipes append value {tier:3,max_uses:8,xp:15,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:16},sell:{id:"minecraft:verdant_froglight",count:4}}

# Sell Pearlescent Froglight (16 emeralds for 4)
data modify entity @s Offers.Recipes append value {tier:3,max_uses:8,xp:15,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald",count:16},sell:{id:"minecraft:pearlescent_froglight",count:4}}

# ===== MASTER TRADES (Level 5) =====
# Sell Companion Treat (8 emerald blocks for 1)
data modify entity @s Offers.Recipes append value {tier:4,max_uses:4,xp:15,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald_block",count:8},sell:{id:"minecraft:wheat_seeds",count:1,components:{"minecraft:item_model":"minecraft:cookie","minecraft:enchantment_glint_override":true,"minecraft:custom_name":{text:"Companion Treat",color:"gold",italic:false,bold:true},"minecraft:lore":[{text:"A special treat for your companion!",color:"gray",italic:false},"",[{text:"Hold near a home companion to lure it!",color:"aqua",italic:false}],[{text:"Right-click your companion to feed.",color:"yellow",italic:false}],[{text:"+75 Relationship Points",color:"green",italic:false}]],"minecraft:custom_data":{CompanionTreat:true},"minecraft:rarity":"uncommon"}}}

# ===== GLYPHS (16 Emerald Blocks Each) =====
# Sell Glyph: Arcanum (enchant items)
data modify entity @s Offers.Recipes append value {tier:4,max_uses:4,xp:30,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald_block",count:16},sell:{id:"minecraft:globe_banner_pattern",count:1,components:{"minecraft:custom_name":{text:"Arcanum Glyph",color:"gold",italic:false},"minecraft:lore":[{text:"GLYPH",color:"gold",italic:true},{text:" ",color:"gray",italic:false},{text:"Ability:",color:"green",italic:false},{text:"Hold armor or weapon in offhand,",color:"gray",italic:false},{text:"right click for random enchant.",color:"gray",italic:false}],"minecraft:max_stack_size":16,"minecraft:enchantment_glint_override":true,"minecraft:consumable":{consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},"minecraft:use_cooldown":{seconds:5,cooldown_group:"evercraft:treasure/rune"},"minecraft:custom_data":{rune:"ec.arcanum",ec:"rune"}}}}

# Sell Glyph: Verdant (heal + cleanse)
data modify entity @s Offers.Recipes append value {tier:4,max_uses:4,xp:30,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald_block",count:16},sell:{id:"minecraft:globe_banner_pattern",count:1,components:{"minecraft:custom_name":{text:"Verdant Glyph",color:"green",italic:false},"minecraft:lore":[{text:"GLYPH",color:"gold",italic:true},{text:" ",color:"gray",italic:false},{text:"Ability:",color:"green",italic:false},{text:"Right click to heal and remove",color:"gray",italic:false},{text:"all negative potion effects.",color:"gray",italic:false}],"minecraft:max_stack_size":16,"minecraft:enchantment_glint_override":true,"minecraft:consumable":{consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},"minecraft:use_cooldown":{seconds:5,cooldown_group:"evercraft:treasure/rune"},"minecraft:custom_data":{rune:"ec.verdant",ec:"rune"}}}}

# Sell Glyph: Emberheart (fire ring + resistance)
data modify entity @s Offers.Recipes append value {tier:4,max_uses:4,xp:30,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald_block",count:16},sell:{id:"minecraft:globe_banner_pattern",count:1,components:{"minecraft:custom_name":{text:"Emberheart Glyph",color:"red",italic:false},"minecraft:lore":[{text:"GLYPH",color:"gold",italic:true},{text:" ",color:"gray",italic:false},{text:"Ability:",color:"green",italic:false},{text:"When activated creates a ring of",color:"gray",italic:false},{text:"fire with brief damage resistance.",color:"gray",italic:false}],"minecraft:max_stack_size":16,"minecraft:enchantment_glint_override":true,"minecraft:consumable":{consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},"minecraft:use_cooldown":{seconds:5,cooldown_group:"evercraft:treasure/rune"},"minecraft:custom_data":{rune:"ec.ember",ec:"rune"}}}}

# Sell Glyph: Zephyr (knockback immunity)
data modify entity @s Offers.Recipes append value {tier:4,max_uses:4,xp:30,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald_block",count:16},sell:{id:"minecraft:globe_banner_pattern",count:1,components:{"minecraft:custom_name":{text:"Zephyr Glyph",color:"white",italic:false},"minecraft:lore":[{text:"GLYPH",color:"gold",italic:true},{text:" ",color:"gray",italic:false},{text:"Ability:",color:"green",italic:false},{text:"When activated grants knockback",color:"gray",italic:false},{text:"immunity and bonus attack power.",color:"gray",italic:false}],"minecraft:max_stack_size":16,"minecraft:enchantment_glint_override":true,"minecraft:consumable":{consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},"minecraft:use_cooldown":{seconds:5,cooldown_group:"evercraft:treasure/rune"},"minecraft:custom_data":{rune:"ec.zephyr",ec:"rune"}}}}

# ===== MASTER TRADES - Fallen Star =====
# Buy Fallen Star (pays 16 emerald blocks)
data modify entity @s Offers.Recipes append value {tier:4,max_uses:999,xp:30,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:nether_star",count:1,components:{"minecraft:custom_data":{fallen_star:1b}}},sell:{id:"minecraft:emerald_block",count:16}}

# Buy Beacon (1 beacon for 20 emerald blocks)
data modify entity @s Offers.Recipes append value {tier:4,max_uses:4,xp:30,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:beacon",count:1},sell:{id:"minecraft:emerald_block",count:20}}

# ===== MASTER TRADES - Pack Items (Netherite prices) =====
# Sell Recovery Compass (8 netherite ingots for 1)
data modify entity @s Offers.Recipes append value {tier:4,max_uses:4,xp:30,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_ingot",count:8},sell:{id:"minecraft:recovery_compass",count:1}}

# Sell Glyphforge (4 netherite blocks)
data modify entity @s Offers.Recipes append value {tier:4,max_uses:2,xp:30,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_block",count:4},sell:{id:"minecraft:lodestone",count:1,components:{"minecraft:rarity":"epic","minecraft:custom_name":{text:"Glyphforge",color:"#E0B0FF",bold:true,italic:false},"minecraft:lore":[{text:"Exquisite Workstation",color:"light_purple",italic:false},"",[{text:"The anvil of lost runesmiths, reforged",color:"gray",italic:true}],[{text:"with dream-fire and iron resolve.",color:"gray",italic:true}],"",[{text:"Place: ",color:"white",italic:false,extra:[{text:"Create a Glyphforge station",color:"#E0B0FF"}]}],[{text:"Use: ",color:"white",italic:false,extra:[{text:"Permanently bind rune enchantments",color:"#E0B0FF"}]}],[{text:"",italic:false,extra:[{text:"to weapons and armor",color:"#E0B0FF"}]}],"",[{text:"\"The strongest enchantments are forged in silence.\"",color:"dark_gray",italic:true}]],"minecraft:custom_data":{glyphforge_block:1b},"minecraft:enchantment_glint_override":true}}}

# Sell Guidestone (8 netherite blocks)
data modify entity @s Offers.Recipes append value {tier:4,max_uses:2,xp:30,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_block",count:8},sell:{id:"minecraft:lodestone",count:1,components:{"minecraft:rarity":"epic","minecraft:custom_name":{text:"Guidestone",color:"#E0B0FF",bold:true,italic:false},"minecraft:lore":[{text:"Exquisite Relic",color:"light_purple",italic:false},"",[{text:"An anchor between worlds, humming with",color:"gray",italic:true}],[{text:"the paths of those who came before.",color:"gray",italic:true}],"",[{text:"Place: ",color:"white",italic:false,extra:[{text:"Create a waypoint in the network",color:"#E0B0FF"}]}],[{text:"Interact: ",color:"white",italic:false,extra:[{text:"Open the teleport menu",color:"#E0B0FF"}]}],"",[{text:"\"All roads lead somewhere worth going.\"",color:"dark_gray",italic:true}]],"minecraft:custom_data":{guidestone:true,evercraft_item:true,gs_color:"amethyst"},"minecraft:enchantment_glint_override":true}}}

# Sell Portal Dial (12 netherite blocks)
data modify entity @s Offers.Recipes append value {tier:4,max_uses:2,xp:30,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_block",count:12},sell:{id:"minecraft:compass",count:1,components:{"minecraft:custom_name":{text:"Portal Dial",color:"gold",bold:true,italic:false},"minecraft:lore":[{text:"Ancient Warping Device",color:"dark_purple",italic:false},"",[{text:"Right-click a lodestone to bind",color:"gray",italic:true}],[{text:"(Costs 30 levels per binding)",color:"red",italic:true}],"",[{text:"Use to teleport to bound location",color:"aqua",italic:true}]],"minecraft:custom_data":{portal_dial:true,evercraft_item:true},"minecraft:enchantment_glint_override":true,"minecraft:max_stack_size":1,"minecraft:rarity":"epic","minecraft:consumable":{consume_seconds:600,animation:"block",sound:"minecraft:entity.enderman.teleport"},"minecraft:use_cooldown":{seconds:5,cooldown_group:"evercraft:portal_dial"}}}}

# Sell Ruin Watch (18 netherite blocks)
data modify entity @s Offers.Recipes append value {tier:4,max_uses:2,xp:30,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_block",count:18},sell:{id:"minecraft:clock",count:1,components:{"minecraft:custom_name":{text:"Ruin Watch",color:"#5555FF",italic:true},"minecraft:lore":[{text:"Rare Artifact",color:"blue",italic:false},{text:"Accessory — Inventory Held",color:"dark_gray",italic:false},"",[{text:"An ancient timepiece that",color:"gray",italic:true}],[{text:"resonates with looted ruins.",color:"gray",italic:true}],"",[{text:"Right-Click: ",color:"white",italic:false},{text:"View structure loot timers",color:"gold"}],[{text:"Passive: ",color:"white",italic:false},{text:"+1 Dream Rate",color:"aqua"}]],"minecraft:custom_data":{artifact:"ruin_watch",is_artifact:true,ability:"ruin_watch",tier:"rare",accessory:true,inventory_held:true},"minecraft:enchantment_glint_override":true,"minecraft:rarity":"rare","minecraft:consumable":{consume_seconds:999999,sound:"intentionally_empty",has_consume_particles:false},"minecraft:use_cooldown":{seconds:3,cooldown_group:"evercraft:ruin_watch"}}}}

# Sell Tome of Experience (24 netherite blocks)
data modify entity @s Offers.Recipes append value {tier:4,max_uses:2,xp:30,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_block",count:24},sell:{id:"minecraft:book",count:1,components:{"minecraft:custom_name":{text:"Tome of Experience",color:"gold",bold:true,italic:false},"minecraft:lore":[{text:"Dream XP Repository",color:"dark_purple",italic:false},"",[{text:"Right-click",color:"yellow",italic:false},{text:" to absorb XP",color:"gray"}],[{text:"Shift + Right-click",color:"yellow",italic:false},{text:" to withdraw XP",color:"gray"}],"",[{text:"Stored: ",color:"gray",italic:false},{text:"0 levels",color:"green"},{text:" (",color:"gray"},{text:"0 points",color:"aqua"},{text:")",color:"gray"}]],"minecraft:custom_data":{tome_of_experience:true,evercraft_item:true,stored_levels:0,stored_points:0},"minecraft:consumable":{consume_seconds:999999,sound:"intentionally_empty",has_consume_particles:false},"minecraft:use_cooldown":{seconds:3,cooldown_group:"evercraft:tome_of_experience"},"minecraft:max_stack_size":1,"minecraft:rarity":"rare","minecraft:enchantment_glint_override":false}}}
