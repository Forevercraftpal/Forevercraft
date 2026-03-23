# Give ALL gacha items to @s (debug/testing)
# Usage: /function evercraft:gacha/loot

# ═══════════════════════════════════════
# COMMON TIER
# ═══════════════════════════════════════
tellraw @s {"text":"--- Common ---","color":"white","bold":true}

# Common Awakening Stone
loot give @s loot evercraft:weapon_mastery/stones/common_stone

# All 13 Glyphs
loot give @s loot evercraft:treasure/runes/emberheart
loot give @s loot evercraft:treasure/runes/verdant
loot give @s loot evercraft:treasure/runes/quicksilver
loot give @s loot evercraft:treasure/runes/obsidian
loot give @s loot evercraft:treasure/runes/zephyr
loot give @s loot evercraft:treasure/runes/briar
loot give @s loot evercraft:treasure/runes/stalwart
loot give @s loot evercraft:treasure/runes/gilded
loot give @s loot evercraft:treasure/runes/tidecall
loot give @s loot evercraft:treasure/runes/hearthstone
loot give @s loot evercraft:treasure/runes/prism
loot give @s loot evercraft:treasure/runes/tempest
loot give @s loot evercraft:treasure/runes/arcanum

# Diamonds x3
give @s minecraft:diamond 3

# Crumb of Dreams
give @s minecraft:bread[custom_name={"text":"Crumb of Dreams","color":"#E0B0FF","italic":false},custom_data={crumb_of_dreams:true},food={nutrition:1,saturation:0.2,can_always_eat:true},lore=[{"text":"Common Item","color":"white","italic":false},"",{"text":"A morsel left behind by dreamwalkers,","color":"gray","italic":true},{"text":"still warm with the memory of slumber.","color":"gray","italic":true},"",{"text":"Right-click to consume:","color":"white","italic":false},{"text":"+1 Dream Rate for 30 minutes","color":"aqua","italic":false},"",{"text":"\"Even crumbs can feed a dream.\"","color":"dark_gray","italic":true}],enchantment_glint_override=true] 1

# Emeralds x8
give @s minecraft:emerald 8

# XP (250 points)
xp add @s 250 points

# ═══════════════════════════════════════
# UNCOMMON TIER
# ═══════════════════════════════════════
tellraw @s {"text":"--- Uncommon ---","color":"green","bold":true}

# Uncommon Awakening Stone
loot give @s loot evercraft:weapon_mastery/stones/uncommon_stone

# Uncommon Essentials Satchel
loot give @s loot evercraft:satchel/uncommon

# Dungeon Key
loot give @s loot evercraft:dungeon/key

# Companion Treat
loot give @s loot evercraft:companions/items/companion_treat

# Netherite Scraps x2
give @s minecraft:netherite_scrap 2

# Uncommon Artifact Crate
give @s minecraft:barrel[container_loot={loot_table:"evercraft:crates/artifact_uncommon"},custom_name={"text":"Uncommon Artifact Crate","color":"green","italic":false},lore=[{"text":"Something stirs within — a faint pulse","color":"gray","italic":true},{"text":"of power, waiting to be claimed.","color":"gray","italic":true},"",{"text":"Place to reveal your artifact.","color":"dark_gray","italic":false}],custom_data={artc_rarity:"uncommon"}] 1

# ═══════════════════════════════════════
# RARE TIER
# ═══════════════════════════════════════
tellraw @s {"text":"--- Rare ---","color":"aqua","bold":true}

# Rare Artifact Crate
give @s minecraft:barrel[container_loot={loot_table:"evercraft:crates/artifact_rare"},custom_name={"text":"Rare Artifact Crate","color":"aqua","italic":false},lore=[{"text":"The wood groans under the weight of","color":"gray","italic":true},{"text":"something restless. It wants to be found.","color":"gray","italic":true},"",{"text":"Place to reveal your artifact.","color":"dark_gray","italic":false}],custom_data={artc_rarity:"rare"}] 1

# Tree Token
give @s minecraft:prismarine_crystals[custom_name={"text":"Tree Token","color":"aqua","italic":false},custom_data={tree_token:1b},lore=[{"text":"Rare Item","color":"blue","italic":false},"",{"text":"A crystalline leaf from the Advantage Tree,","color":"gray","italic":true},{"text":"carrying the whisper of new potential.","color":"gray","italic":true},"",{"text":"Use: ","color":"white","italic":false,"extra":[{"text":"Unlock a node on your Advantage Tree","color":"aqua"}]}],enchantment_glint_override=true] 1

# Tree Shard
give @s minecraft:prismarine_shard[custom_name={"text":"Tree Shard","color":"aqua","italic":false},custom_data={tree_shard:1b},enchantment_glint_override=true,consumable={consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},lore=[{"text":"Rare Item","color":"blue","italic":false},"",{"text":"Splintered from the deepest roots of the","color":"gray","italic":true},{"text":"Advantage Tree, it pulses with distilled wisdom.","color":"gray","italic":true},"",{"text":"Right-click to consume:","color":"white","italic":false},{"text":"Grants 50 XP levels","color":"aqua","italic":false}]] 1

# Potion of Dreams
loot give @s loot evercraft:treasure/potions/dreams_rare

# Coin of Lucidity
give @s minecraft:gold_nugget[custom_name={"text":"Coin of Lucidity","color":"yellow","italic":false},custom_data={wishing_coin:true},lore=[{"text":"Rare Item","color":"blue","italic":false},"",{"text":"A coin struck in a moment of perfect clarity —","color":"gray","italic":true},{"text":"its gleam cuts through the Fountain's mist.","color":"gray","italic":true},"",{"text":"Right-click to consume:","color":"white","italic":false},{"text":"Grants +1 bonus pull at the Fountain","color":"aqua","italic":false},"",{"text":"\"Luck favors those who see clearly.\"","color":"dark_gray","italic":true}],enchantment_glint_override=true,consumable={consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false}] 1

# Rare Companion Crate
give @s minecraft:barrel[container_loot={loot_table:"evercraft:crates/companion_rare"},custom_name={"text":"Rare Companion Crate","color":"aqua","italic":false},lore=[{"text":"A gentle presence stirs within,","color":"gray","italic":true},{"text":"eager for a companion of its own.","color":"gray","italic":true},"",{"text":"Place to reveal your new companion.","color":"dark_gray","italic":false}],custom_data={pc_rarity:"rare"}] 1

# ═══════════════════════════════════════
# ORNATE TIER
# ═══════════════════════════════════════
tellraw @s {"text":"--- Ornate ---","color":"dark_purple","bold":true}

# Ornate Artifact Crate
give @s minecraft:barrel[container_loot={loot_table:"evercraft:crates/artifact_ornate"},custom_name={"text":"Ornate Artifact Crate","color":"light_purple","italic":false},lore=[{"text":"Ornamental runes line the lid, sealing","color":"gray","italic":true},{"text":"a treasure meant for worthy hands.","color":"gray","italic":true},"",{"text":"Place to reveal your artifact.","color":"dark_gray","italic":false}],custom_data={artc_rarity:"ornate"},enchantment_glint_override=true] 1

# Seed of Forgetting
give @s minecraft:torchflower_seeds[custom_name={"text":"Seed of Forgetting","color":"light_purple","italic":false},custom_data={seed_of_forgetting:true},lore=[{"text":"Ornate Item","color":"dark_purple","italic":false},"",{"text":"Grown in the soil between waking and sleep,","color":"gray","italic":true},{"text":"it unravels what was once learned.","color":"gray","italic":true},"",{"text":"Right-click to use:","color":"white","italic":false},{"text":"Reset one Advantage Tree for a full respec","color":"light_purple","italic":false},"",{"text":"\"To forget is to make room for becoming.\"","color":"dark_gray","italic":true}],enchantment_glint_override=true] 1

# Ornate Companion Crate
give @s minecraft:barrel[container_loot={loot_table:"evercraft:crates/companion_ornate"},custom_name={"text":"Ornate Companion Crate","color":"light_purple","italic":false},lore=[{"text":"A loyal soul waits within, bound by","color":"gray","italic":true},{"text":"ancient craft to serve a dreamer's will.","color":"gray","italic":true},"",{"text":"Place to reveal your new companion.","color":"dark_gray","italic":false}],custom_data={pc_rarity:"ornate"},enchantment_glint_override=true] 1

# (Particles and Titles are cosmetic unlocks, not items)

# ═══════════════════════════════════════
# EXQUISITE TIER
# ═══════════════════════════════════════
tellraw @s {"text":"--- Exquisite ---","color":"light_purple","bold":true}

# Exquisite Artifact Crate
give @s minecraft:barrel[container_loot={loot_table:"evercraft:crates/artifact_exquisite"},custom_name={"text":"Exquisite Artifact Crate","color":"#E0B0FF","italic":false},lore=[{"text":"Sealed with dreamlight and ancient sigils,","color":"gray","italic":true},{"text":"something extraordinary sleeps within.","color":"gray","italic":true},"",{"text":"Place to reveal your artifact.","color":"dark_gray","italic":false}],custom_data={artc_rarity:"exquisite"},enchantment_glint_override=true] 1

# Lunar Moth Companion Crate
give @s minecraft:barrel[container_loot={loot_table:"evercraft:crates/companion_lunar_moth"},custom_name={"text":"Lunar Moth Companion Crate","color":"light_purple","italic":false},lore=[{"text":"Within this crate, wings of moonlight","color":"gray","italic":true},{"text":"flutter against the dark, waiting to be freed.","color":"gray","italic":true},"",{"text":"Place: ","color":"white","italic":false,"extra":[{"text":"Reveal your new companion","color":"light_purple"}]},{"text":"Gacha Exclusive","color":"#E0B0FF","italic":true}],custom_data={pc_rarity:"exquisite"},enchantment_glint_override=true] 1

# Nebula Kit Companion Crate
give @s minecraft:barrel[container_loot={loot_table:"evercraft:crates/companion_nebula_kit"},custom_name={"text":"Nebula Kit Companion Crate","color":"light_purple","italic":false},lore=[{"text":"A tiny constellation curls inside, purring","color":"gray","italic":true},{"text":"with the warmth of a collapsing star.","color":"gray","italic":true},"",{"text":"Place: ","color":"white","italic":false,"extra":[{"text":"Reveal your new companion","color":"light_purple"}]},{"text":"Gacha Exclusive","color":"#E0B0FF","italic":true}],custom_data={pc_rarity:"exquisite"},enchantment_glint_override=true] 1

# Twilight Hare Companion Crate
give @s minecraft:barrel[container_loot={loot_table:"evercraft:crates/companion_twilight_hare"},custom_name={"text":"Twilight Hare Companion Crate","color":"light_purple","italic":false},lore=[{"text":"Something swift and silver darts within,","color":"gray","italic":true},{"text":"leaving trails of dusk wherever it leaps.","color":"gray","italic":true},"",{"text":"Place: ","color":"white","italic":false,"extra":[{"text":"Reveal your new companion","color":"light_purple"}]},{"text":"Gacha Exclusive","color":"#E0B0FF","italic":true}],custom_data={pc_rarity:"exquisite"},enchantment_glint_override=true] 1

# Random Lore Piece
execute at @s run function evercraft:lore/roll/pick_piece

# Netherite Block
give @s minecraft:netherite_block 1

# Hearthstone
give @s minecraft:lodestone[custom_name={"text":"Hearthstone","color":"#E0B0FF","italic":false,"bold":true},custom_data={hearthstone:true},lore=[{"text":"Exquisite Relic","color":"light_purple","italic":false},"",{"text":"Warm to the touch, it remembers the hearth","color":"gray","italic":true},{"text":"you haven't built yet.","color":"gray","italic":true},"",{"text":"Place: ","color":"white","italic":false,"extra":[{"text":"Claim a 64x64 home zone","color":"#E0B0FF"}]},{"text":"Buffs: ","color":"white","italic":false,"extra":[{"text":"Tier-scaling bonuses + chunk loading","color":"#E0B0FF"}]},{"text":"Upgrade: ","color":"white","italic":false,"extra":[{"text":"Feed Netherite Ingots to expand","color":"#E0B0FF"}]},"",{"text":"\"Home is wherever the heart dares to settle.\"","color":"dark_gray","italic":true}],enchantment_glint_override=true,rarity=epic] 1

# Guidestone
give @s minecraft:lodestone[custom_name={"text":"Guidestone","color":"#E0B0FF","italic":false,"bold":true},lore=[{"text":"Exquisite Relic","color":"light_purple","italic":false},"",{"text":"An anchor between worlds, humming with","color":"gray","italic":true},{"text":"the paths of those who came before.","color":"gray","italic":true},"",{"text":"Place: ","color":"white","italic":false,"extra":[{"text":"Create a waypoint in the network","color":"#E0B0FF"}]},{"text":"Interact: ","color":"white","italic":false,"extra":[{"text":"Open the teleport menu","color":"#E0B0FF"}]},"",{"text":"\"All roads lead somewhere worth going.\"","color":"dark_gray","italic":true}],custom_data={guidestone:1b,evercraft_item:1b,gs_color:"amethyst"},enchantment_glint_override=true,rarity=epic] 1

# Glyphforge
give @s minecraft:lodestone[custom_name={"text":"Glyphforge","color":"#E0B0FF","italic":false,"bold":true},lore=[{"text":"Exquisite Workstation","color":"light_purple","italic":false},"",{"text":"The anvil of lost runesmiths, reforged","color":"gray","italic":true},{"text":"with dream-fire and iron resolve.","color":"gray","italic":true},"",{"text":"Place: ","color":"white","italic":false,"extra":[{"text":"Create a Glyphforge station","color":"#E0B0FF"}]},{"text":"Use: ","color":"white","italic":false,"extra":[{"text":"Permanently bind rune enchantments","color":"#E0B0FF"}]},{"text":"","italic":false,"extra":[{"text":"to weapons and armor","color":"#E0B0FF"}]},"",{"text":"\"The strongest enchantments are forged in silence.\"","color":"dark_gray","italic":true}],custom_data={glyphforge_block:1b},enchantment_glint_override=true,rarity=epic] 1

# ═══════════════════════════════════════
# MYTHICAL TIER
# ═══════════════════════════════════════
tellraw @s {"text":"--- Mythical ---","color":"gold","bold":true}

# 9 Mythical Artifacts
loot give @s loot evercraft:artifacts/mythical/the_starless_night
loot give @s loot evercraft:artifacts/mythical/shooting_star
loot give @s loot evercraft:artifacts/mythical/dreamcast_compass
loot give @s loot evercraft:artifacts/mythical/hero_helmet
loot give @s loot evercraft:artifacts/mythical/hero_chestplate
loot give @s loot evercraft:artifacts/mythical/hero_leggings
loot give @s loot evercraft:artifacts/mythical/hero_boots
loot give @s loot evercraft:artifacts/mythical/robot_dancers_sword
loot give @s loot evercraft:artifacts/mythical/droid_dancers_sword

# Dreamstag Companion Crate
give @s minecraft:barrel[container_loot={loot_table:"evercraft:crates/companion_dreamstag"},max_stack_size=1,custom_name={"text":"Dreamstag Companion Crate","color":"gold","italic":false,"bold":true},lore=[{"text":"Antlers of pure starlight press against","color":"gray","italic":true},{"text":"the walls, yearning for open skies.","color":"gray","italic":true},"",{"text":"Place: ","color":"white","italic":false,"extra":[{"text":"Reveal your new companion","color":"aqua"}]},{"text":"Gacha Exclusive","color":"#E0B0FF","italic":true}],custom_data={pc_rarity:"mythical"},enchantment_glint_override=true] 1

# Starweaver Companion Crate
give @s minecraft:barrel[container_loot={loot_table:"evercraft:crates/companion_starweaver"},max_stack_size=1,custom_name={"text":"Starweaver Companion Crate","color":"gold","italic":false,"bold":true},lore=[{"text":"Threads of cosmic light weave and unweave","color":"gray","italic":true},{"text":"inside, stitching constellations into being.","color":"gray","italic":true},"",{"text":"Place: ","color":"white","italic":false,"extra":[{"text":"Reveal your new companion","color":"aqua"}]},{"text":"Gacha Exclusive","color":"#E0B0FF","italic":true}],custom_data={pc_rarity:"mythical"},enchantment_glint_override=true] 1

# Somnia Companion Crate
give @s minecraft:barrel[container_loot={loot_table:"evercraft:crates/companion_somnia"},max_stack_size=1,custom_name={"text":"Somnia Companion Crate","color":"gold","italic":false,"bold":true},lore=[{"text":"A dream that refused to wake now rests","color":"gray","italic":true},{"text":"here, breathing softly against the wood.","color":"gray","italic":true},"",{"text":"Place: ","color":"white","italic":false,"extra":[{"text":"Reveal your new companion","color":"aqua"}]},{"text":"Gacha Exclusive","color":"#E0B0FF","italic":true}],custom_data={pc_rarity:"mythical"},enchantment_glint_override=true] 1

# Dreamdust Crystal
give @s minecraft:stick[item_model="minecraft:amethyst_cluster",custom_name={"text":"Dreamdust Crystal","color":"gold","italic":false,"bold":true},custom_data={dreamdust_crystal:true},lore=[{"text":"Mythical Item","color":"gold","italic":false},"",{"text":"Pure crystallized fortune, distilled from a","color":"gray","italic":true},{"text":"thousand dreams that dared to come true.","color":"gray","italic":true},"",{"text":"Right-click to consume:","color":"white","italic":false},{"text":"Permanently gain +2.5 Dream Rate","color":"aqua","italic":false},{"text":"(One per player)","color":"dark_gray","italic":false},"",{"text":"\"What you dream becomes what you are.\"","color":"dark_gray","italic":true}],enchantment_glint_override=true,consumable={consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false}] 1

# Wishing Star
give @s minecraft:nether_star[custom_name={"text":"Dreamy Star","color":"gold","italic":false,"bold":true},custom_data={wishing_star:true},lore=[{"text":"Mythical Item","color":"gold","italic":false},"",{"text":"A star that fell not from the sky, but from","color":"gray","italic":true},{"text":"the Fountain's deepest, most desperate wish.","color":"gray","italic":true},"",{"text":"Right-click to use:","color":"white","italic":false},{"text":"Choose ANY artifact from the entire pack","color":"aqua","italic":false},"",{"text":"\"The rarest gift is the power to choose.\"","color":"dark_gray","italic":true}],enchantment_glint_override=true,consumable={consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false}] 1

# ═══════════════════════════════════════
# BONUS
# ═══════════════════════════════════════
tellraw @s {"text":"--- Bonus ---","color":"#E0B0FF","bold":true}

# Forever Coins x6
loot give @s loot evercraft:gacha/forever_coin_6

tellraw @s [{"text":"All gacha items granted!","color":"green"}]
