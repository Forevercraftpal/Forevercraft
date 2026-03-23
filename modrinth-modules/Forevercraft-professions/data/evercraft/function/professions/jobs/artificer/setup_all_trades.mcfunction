# Artificer Trade Setup
# SELLS: Crates for Artifact Shards, Lore Shard exchanges
# Block trades for Artifact Shards, Transmutation Stand
# BUYS: Glyphs for Netherite Scraps

# Clear existing trades
data modify entity @s Offers.Recipes set value []

# ===== BLOCK TRADES (buy blocks for Artifact Shards) =====
# Trade: 48 Iron Blocks for 1 Artifact Shard
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:iron_block",count:48},sell:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:custom_name":{text:"Artifact Shard",color:"light_purple",italic:false},"minecraft:lore":[{text:"A fragment of ancient",color:"gray",italic:false},{text:"artifact power.",color:"gray",italic:false},{text:""},{text:"Trade to the Artificer",color:"yellow",italic:false},{text:"for rare crates!",color:"yellow",italic:false}],"minecraft:custom_data":{artifact_shard:true},"minecraft:enchantment_glint_override":true,"minecraft:item_model":"amethyst_shard"}}}

# Trade: 64 Emerald Blocks for 1 Artifact Shard
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald_block",count:64},sell:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:custom_name":{text:"Artifact Shard",color:"light_purple",italic:false},"minecraft:lore":[{text:"A fragment of ancient",color:"gray",italic:false},{text:"artifact power.",color:"gray",italic:false},{text:""},{text:"Trade to the Artificer",color:"yellow",italic:false},{text:"for rare crates!",color:"yellow",italic:false}],"minecraft:custom_data":{artifact_shard:true},"minecraft:enchantment_glint_override":true,"minecraft:item_model":"amethyst_shard"}}}

# Trade: 48 Diamond Blocks for 1 Artifact Shard
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:diamond_block",count:48},sell:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:custom_name":{text:"Artifact Shard",color:"light_purple",italic:false},"minecraft:lore":[{text:"A fragment of ancient",color:"gray",italic:false},{text:"artifact power.",color:"gray",italic:false},{text:""},{text:"Trade to the Artificer",color:"yellow",italic:false},{text:"for rare crates!",color:"yellow",italic:false}],"minecraft:custom_data":{artifact_shard:true},"minecraft:enchantment_glint_override":true,"minecraft:item_model":"amethyst_shard"}}}

# Trade: 48 Gold Blocks for 1 Artifact Shard
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:gold_block",count:48},sell:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:custom_name":{text:"Artifact Shard",color:"light_purple",italic:false},"minecraft:lore":[{text:"A fragment of ancient",color:"gray",italic:false},{text:"artifact power.",color:"gray",italic:false},{text:""},{text:"Trade to the Artificer",color:"yellow",italic:false},{text:"for rare crates!",color:"yellow",italic:false}],"minecraft:custom_data":{artifact_shard:true},"minecraft:enchantment_glint_override":true,"minecraft:item_model":"amethyst_shard"}}}

# Trade: 1 Netherite Block for 1 Artifact Shard
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_block",count:1},sell:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:custom_name":{text:"Artifact Shard",color:"light_purple",italic:false},"minecraft:lore":[{text:"A fragment of ancient",color:"gray",italic:false},{text:"artifact power.",color:"gray",italic:false},{text:""},{text:"Trade to the Artificer",color:"yellow",italic:false},{text:"for rare crates!",color:"yellow",italic:false}],"minecraft:custom_data":{artifact_shard:true},"minecraft:enchantment_glint_override":true,"minecraft:item_model":"amethyst_shard"}}}

# ===== TRANSMUTATION STAND (buy with Netherite Blocks) =====
# Trade: Transmutation Stand for 4 Netherite Blocks
data modify entity @s Offers.Recipes append value {max_uses:1,xp:10,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_block",count:4},sell:{id:"minecraft:lodestone",count:1,components:{"minecraft:custom_name":{text:"Transmutation Stand",color:"light_purple",italic:false,bold:true},"minecraft:lore":[{text:"Place and right-click to transmute",color:"gray",italic:false},{text:"artifacts into higher tiers.",color:"gray",italic:false},{text:"",italic:false},{text:"5 Common/Uncommon → next tier",color:"dark_gray",italic:false},{text:"4 Rare/Ornate → next tier",color:"dark_gray",italic:false},{text:"3 Exquisite → Mythical",color:"dark_gray",italic:false},{text:"",italic:false},{text:"Artificer discount: -1 (1/day)",color:"dark_purple",italic:false}],"minecraft:custom_data":{artificers_anvil:1b},"minecraft:enchantment_glint_override":true,"minecraft:rarity":"epic"}}}

# ===== ARTIFACT CRATE SELL TRADES (villager sells artifact crates for Artifact Shards) =====
# Trade: Rare Artifact Crate for 8 Artifact Shards
data modify entity @s Offers.Recipes append value {max_uses:64,xp:5,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:amethyst_shard",count:8,components:{"minecraft:custom_name":{text:"Artifact Shard",color:"light_purple",italic:false},"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{artifact_shard:true}}},sell:{id:"minecraft:barrel",count:1,components:{"minecraft:container_loot":{loot_table:"evercraft:crates/artifact_rare"},"minecraft:custom_name":{text:"Rare Artifact Crate",color:"aqua",italic:false},"minecraft:lore":[[{text:"The wood groans under the weight of",color:"gray",italic:true}],[{text:"something restless. It wants to be found.",color:"gray",italic:true}],"",[{text:"Place to reveal your artifact.",color:"dark_gray",italic:false}]],"minecraft:custom_data":{artc_rarity:"rare"}}}}

# Trade: Ornate Artifact Crate for 16 Artifact Shards
data modify entity @s Offers.Recipes append value {max_uses:32,xp:10,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:amethyst_shard",count:16,components:{"minecraft:custom_name":{text:"Artifact Shard",color:"light_purple",italic:false},"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{artifact_shard:true}}},sell:{id:"minecraft:barrel",count:1,components:{"minecraft:container_loot":{loot_table:"evercraft:crates/artifact_ornate"},"minecraft:custom_name":{text:"Ornate Artifact Crate",color:"light_purple",italic:false},"minecraft:lore":[[{text:"Ornamental runes line the lid, sealing",color:"gray",italic:true}],[{text:"a treasure meant for worthy hands.",color:"gray",italic:true}],"",[{text:"Place to reveal your artifact.",color:"dark_gray",italic:false}]],"minecraft:custom_data":{artc_rarity:"ornate"}}}}

# Trade: Exquisite Artifact Crate for 32 Artifact Shards
data modify entity @s Offers.Recipes append value {max_uses:16,xp:20,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:amethyst_shard",count:32,components:{"minecraft:custom_name":{text:"Artifact Shard",color:"light_purple",italic:false},"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{artifact_shard:true}}},sell:{id:"minecraft:barrel",count:1,components:{"minecraft:container_loot":{loot_table:"evercraft:crates/artifact_exquisite"},"minecraft:custom_name":{text:"Exquisite Artifact Crate",color:"#E0B0FF",italic:false},"minecraft:lore":[[{text:"Sealed with dreamlight and ancient sigils,",color:"gray",italic:true}],[{text:"something extraordinary sleeps within.",color:"gray",italic:true}],"",[{text:"Place to reveal your artifact.",color:"dark_gray",italic:false}]],"minecraft:custom_data":{artc_rarity:"exquisite"}}}}

# ===== LORE SHARD TRADES (villager buys Lore Shards, gives other shards/tokens) =====
# Trade: 2 Lore Shards for 1 Artifact Shard
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:echo_shard",count:2,components:{"minecraft:custom_name":{text:"Lore Shard",color:"yellow",italic:false},"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{lore_shard:true}}},sell:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:custom_name":{text:"Artifact Shard",color:"light_purple",italic:false},"minecraft:lore":[{text:"A fragment of ancient",color:"gray",italic:false},{text:"artifact power.",color:"gray",italic:false},{text:""},{text:"Trade to the Artificer",color:"yellow",italic:false},{text:"for rare crates!",color:"yellow",italic:false}],"minecraft:custom_data":{artifact_shard:true},"minecraft:enchantment_glint_override":true,"minecraft:item_model":"amethyst_shard"}}}

# Trade: 2 Lore Shards for 1 Companion Shard
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:echo_shard",count:2,components:{"minecraft:custom_name":{text:"Lore Shard",color:"yellow",italic:false},"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{lore_shard:true}}},sell:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:custom_name":{text:"Companion Shard",color:"aqua",italic:false},"minecraft:lore":[{text:"A crystallized fragment of",color:"gray",italic:false},{text:"companion bond.",color:"gray",italic:false},{text:""},{text:"Trade to the Zookeeper",color:"yellow",italic:false},{text:"for rare crates!",color:"yellow",italic:false}],"minecraft:custom_data":{companion_shard:true},"minecraft:enchantment_glint_override":true,"minecraft:item_model":"prismarine_shard"}}}

# Trade: 4 Lore Shards for 1 Tree Token
data modify entity @s Offers.Recipes append value {max_uses:999,xp:5,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:echo_shard",count:4,components:{"minecraft:custom_name":{text:"Lore Shard",color:"yellow",italic:false},"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{lore_shard:true}}},sell:{id:"minecraft:prismarine_crystals",count:1,components:{"minecraft:custom_name":{text:"Tree Token",color:"aqua",italic:false},"minecraft:lore":[{text:"Rare Item",color:"blue",italic:false},"",[{text:"A crystalline leaf from the Advantage Tree,",color:"gray",italic:true}],[{text:"carrying the whisper of new potential.",color:"gray",italic:true}],"",[{text:"Use: ",color:"white",italic:false,extra:[{text:"Unlock a node on your Advantage Tree",color:"aqua"}]}]],"minecraft:custom_data":{tree_token:1b},"minecraft:enchantment_glint_override":true}}}

# ===== GLYPH BUY TRADES (Artificer buys Glyphs for Netherite Scraps) =====
# Trade: Emberheart Glyph for 1 Netherite Scrap
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:globe_banner_pattern",count:1,components:{"minecraft:custom_name":{text:"Emberheart Glyph",color:"gold",italic:false},"minecraft:custom_data":{rune:"ec.ember",ec:"rune"}}},sell:{id:"minecraft:netherite_scrap",count:1}}

# Trade: Verdant Glyph for 1 Netherite Scrap
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:globe_banner_pattern",count:1,components:{"minecraft:custom_name":{text:"Verdant Glyph",color:"gold",italic:false},"minecraft:custom_data":{rune:"ec.verdant",ec:"rune"}}},sell:{id:"minecraft:netherite_scrap",count:1}}

# Trade: Quicksilver Glyph for 1 Netherite Scrap
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:globe_banner_pattern",count:1,components:{"minecraft:custom_name":{text:"Quicksilver Glyph",color:"gold",italic:false},"minecraft:custom_data":{rune:"ec.quick",ec:"rune"}}},sell:{id:"minecraft:netherite_scrap",count:1}}

# Trade: Obsidian Glyph for 1 Netherite Scrap
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:globe_banner_pattern",count:1,components:{"minecraft:custom_name":{text:"Obsidian Glyph",color:"gold",italic:false},"minecraft:custom_data":{rune:"ec.obsidian",ec:"rune"}}},sell:{id:"minecraft:netherite_scrap",count:1}}

# Trade: Zephyr Glyph for 1 Netherite Scrap
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:globe_banner_pattern",count:1,components:{"minecraft:custom_name":{text:"Zephyr Glyph",color:"gold",italic:false},"minecraft:custom_data":{rune:"ec.zephyr",ec:"rune"}}},sell:{id:"minecraft:netherite_scrap",count:1}}

# Trade: Briar Glyph for 1 Netherite Scrap
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:globe_banner_pattern",count:1,components:{"minecraft:custom_name":{text:"Briar Glyph",color:"gold",italic:false},"minecraft:custom_data":{rune:"ec.briar",ec:"rune"}}},sell:{id:"minecraft:netherite_scrap",count:1}}

# Trade: Stalwart Glyph for 1 Netherite Scrap
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:globe_banner_pattern",count:1,components:{"minecraft:custom_name":{text:"Stalwart Glyph",color:"gold",italic:false},"minecraft:custom_data":{rune:"ec.stalwart",ec:"rune"}}},sell:{id:"minecraft:netherite_scrap",count:1}}

# Trade: Gilded Glyph for 1 Netherite Scrap
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:globe_banner_pattern",count:1,components:{"minecraft:custom_name":{text:"Gilded Glyph",color:"gold",italic:false},"minecraft:custom_data":{rune:"ec.gilded",ec:"rune"}}},sell:{id:"minecraft:netherite_scrap",count:1}}

# Trade: Tidecall Glyph for 1 Netherite Scrap
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:globe_banner_pattern",count:1,components:{"minecraft:custom_name":{text:"Tidecall Glyph",color:"gold",italic:false},"minecraft:custom_data":{rune:"ec.tide",ec:"rune"}}},sell:{id:"minecraft:netherite_scrap",count:1}}

# Trade: Hearthstone Glyph for 1 Netherite Scrap
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:globe_banner_pattern",count:1,components:{"minecraft:custom_name":{text:"Hearthstone Glyph",color:"gold",italic:false},"minecraft:custom_data":{rune:"ec.hearth",ec:"rune"}}},sell:{id:"minecraft:netherite_scrap",count:1}}

# Trade: Prism Glyph for 1 Netherite Scrap
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:globe_banner_pattern",count:1,components:{"minecraft:custom_name":{text:"Prism Glyph",color:"gold",italic:false},"minecraft:custom_data":{rune:"ec.prism",ec:"rune"}}},sell:{id:"minecraft:netherite_scrap",count:1}}

# Trade: Tempest Glyph for 1 Netherite Scrap
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:globe_banner_pattern",count:1,components:{"minecraft:custom_name":{text:"Tempest Glyph",color:"gold",italic:false},"minecraft:custom_data":{rune:"ec.tempest",ec:"rune"}}},sell:{id:"minecraft:netherite_scrap",count:1}}

# Trade: Arcanum Glyph for 1 Netherite Scrap
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:globe_banner_pattern",count:1,components:{"minecraft:custom_name":{text:"Arcanum Glyph",color:"gold",italic:false},"minecraft:custom_data":{rune:"ec.arcanum",ec:"rune"}}},sell:{id:"minecraft:netherite_scrap",count:1}}
