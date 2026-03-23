# Dream Rate History — Shows all permanent DR sources earned
# Called via /trigger ec.dr_history
# Displays ✓ for earned, ○ for unearned permanent DR events

tellraw @s {text:""}
tellraw @s [{text:"  ✦ ",color:"light_purple"},{text:"DREAM HISTORY",color:"dark_purple",bold:true},{text:" ✦",color:"light_purple"}]
tellraw @s {text:"  ─────────────────────────────",color:"dark_gray"}
tellraw @s [{text:"  Permanent dream rate events earned:",color:"gray"}]
tellraw @s {text:""}

# === CONSUMABLES ===
tellraw @s [{text:"  ◆ ",color:"#E0B0FF"},{text:"Dream Consumables:",color:"gray"}]

# Track earned count for summary
scoreboard players set #hist_earned ec.temp 0
scoreboard players set #hist_total ec.temp 19

# Dreamdust Crystal (+2.5)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:dreamdust_crystal 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Dreamdust Crystal",color:"#E0B0FF"},{text:" +2.5",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Dreamdust Crystal",color:"dark_gray"},{text:" +2.5",color:"dark_gray"}]
scoreboard players operation #hist_earned ec.temp += #has ec.temp

# Crystal of Dreams (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:crystal_of_dreams_bonus 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Crystal of Dreams",color:"light_purple"},{text:" +1.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Crystal of Dreams",color:"dark_gray"},{text:" +1.0",color:"dark_gray"}]
scoreboard players operation #hist_earned ec.temp += #has ec.temp

# Rabbit's Dreaming Foot (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:rabbits_dreaming_foot_luck 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Rabbit's Dreaming Foot",color:"green"},{text:" +1.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Rabbit's Dreaming Foot",color:"dark_gray"},{text:" +1.0",color:"dark_gray"}]
scoreboard players operation #hist_earned ec.temp += #has ec.temp

# Crystalized Dream Droppings (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:dream_droppings_bonus 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Crystalized Dream Droppings",color:"dark_purple"},{text:" +1.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Crystalized Dream Droppings",color:"dark_gray"},{text:" +1.0",color:"dark_gray"}]
scoreboard players operation #hist_earned ec.temp += #has ec.temp

# Dream Inducing Mushroom (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:dream_mushroom_bonus 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Dream Inducing Mushroom",color:"dark_red"},{text:" +1.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Dream Inducing Mushroom",color:"dark_gray"},{text:" +1.0",color:"dark_gray"}]
scoreboard players operation #hist_earned ec.temp += #has ec.temp

# Chorus Dreaming Fruit (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:chorus_dreaming_bonus 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Chorus Dreaming Fruit",color:"light_purple"},{text:" +1.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Chorus Dreaming Fruit",color:"dark_gray"},{text:" +1.0",color:"dark_gray"}]
scoreboard players operation #hist_earned ec.temp += #has ec.temp

# Patron's Dream Essence (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:patrons_dream_essence_bonus 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Patron's Dream Essence",color:"dark_red"},{text:" +1.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Patron's Dream Essence",color:"dark_gray"},{text:" +1.0",color:"dark_gray"}]
scoreboard players operation #hist_earned ec.temp += #has ec.temp

# Dreamer's Quill (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:dreamers_quill_bonus 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Dreamer's Quill",color:"gold"},{text:" +1.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Dreamer's Quill",color:"dark_gray"},{text:" +1.0",color:"dark_gray"}]
scoreboard players operation #hist_earned ec.temp += #has ec.temp

# Dreamweaver's Thread (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:dreamweavers_thread_bonus 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Dreamweaver's Thread",color:"light_purple"},{text:" +1.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Dreamweaver's Thread",color:"dark_gray"},{text:" +1.0",color:"dark_gray"}]
scoreboard players operation #hist_earned ec.temp += #has ec.temp

# Tome of Lucid Visions (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:tome_of_lucid_visions_bonus 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Tome of Lucid Visions",color:"dark_aqua"},{text:" +1.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Tome of Lucid Visions",color:"dark_gray"},{text:" +1.0",color:"dark_gray"}]
scoreboard players operation #hist_earned ec.temp += #has ec.temp

# Astral Codex Page (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:astral_codex_page_bonus 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Astral Codex Page",color:"aqua"},{text:" +1.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Astral Codex Page",color:"dark_gray"},{text:" +1.0",color:"dark_gray"}]
scoreboard players operation #hist_earned ec.temp += #has ec.temp

# Fisherman's Dozing Lure (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:fishermans_dozing_lure_bonus 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Fisherman's Dozing Lure",color:"blue"},{text:" +1.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Fisherman's Dozing Lure",color:"dark_gray"},{text:" +1.0",color:"dark_gray"}]
scoreboard players operation #hist_earned ec.temp += #has ec.temp

# Miner's Slumbering Geode (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:miners_slumbering_geode_bonus 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Miner's Slumbering Geode",color:"gold"},{text:" +1.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Miner's Slumbering Geode",color:"dark_gray"},{text:" +1.0",color:"dark_gray"}]
scoreboard players operation #hist_earned ec.temp += #has ec.temp

# Harvester's Dreamy Seed (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:harvesters_dreamy_seed_bonus 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Harvester's Dreamy Seed",color:"green"},{text:" +1.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Harvester's Dreamy Seed",color:"dark_gray"},{text:" +1.0",color:"dark_gray"}]
scoreboard players operation #hist_earned ec.temp += #has ec.temp

# Blacksmith's Dreaming Ember (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:blacksmiths_dreaming_ember_bonus 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Blacksmith's Dreaming Ember",color:"red"},{text:" +1.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Blacksmith's Dreaming Ember",color:"dark_gray"},{text:" +1.0",color:"dark_gray"}]
scoreboard players operation #hist_earned ec.temp += #has ec.temp

# Wanderer's Dream Map (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:wanderers_dream_map_bonus 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Wanderer's Dream Map",color:"dark_aqua"},{text:" +1.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Wanderer's Dream Map",color:"dark_gray"},{text:" +1.0",color:"dark_gray"}]
scoreboard players operation #hist_earned ec.temp += #has ec.temp

# Prospector's Dream Ore (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:prospectors_dream_ore_bonus 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Prospector's Dream Ore",color:"yellow"},{text:" +1.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Prospector's Dream Ore",color:"dark_gray"},{text:" +1.0",color:"dark_gray"}]
scoreboard players operation #hist_earned ec.temp += #has ec.temp

# Collector's Dream Relic (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:collectors_dream_relic_bonus 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Collector's Dream Relic",color:"light_purple"},{text:" +1.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Collector's Dream Relic",color:"dark_gray"},{text:" +1.0",color:"dark_gray"}]
scoreboard players operation #hist_earned ec.temp += #has ec.temp

# Tiller's Dream Petal (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:tillers_dream_petal_bonus 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Tiller's Dream Petal",color:"dark_green"},{text:" +1.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Tiller's Dream Petal",color:"dark_gray"},{text:" +1.0",color:"dark_gray"}]
scoreboard players operation #hist_earned ec.temp += #has ec.temp

tellraw @s [{text:"    Consumables: ",color:"gray"},{score:{name:"#hist_earned",objective:"ec.temp"},color:"gold"},{text:"/19",color:"gray"}]

# === EXPLORATION JOURNAL ===
tellraw @s {text:""}
tellraw @s [{text:"  ◆ ",color:"dark_aqua"},{text:"Exploration Journal:",color:"gray"}]

scoreboard players set #hist_j ec.temp 0

execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:journal_ow_surface_luck 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"OW Surface",color:"dark_aqua"},{text:" +1.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"OW Surface",color:"dark_gray"},{text:" +1.0",color:"dark_gray"}]
scoreboard players operation #hist_j ec.temp += #has ec.temp

execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:journal_ow_caves_luck 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"OW Caves",color:"dark_aqua"},{text:" +2.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"OW Caves",color:"dark_gray"},{text:" +2.0",color:"dark_gray"}]
scoreboard players operation #hist_j ec.temp += #has ec.temp

execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:journal_nether_luck 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Nether",color:"dark_aqua"},{text:" +1.5",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Nether",color:"dark_gray"},{text:" +1.5",color:"dark_gray"}]
scoreboard players operation #hist_j ec.temp += #has ec.temp

execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:journal_end_luck 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"The End",color:"dark_aqua"},{text:" +3.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"The End",color:"dark_gray"},{text:" +3.0",color:"dark_gray"}]
scoreboard players operation #hist_j ec.temp += #has ec.temp

tellraw @s [{text:"    Journals: ",color:"gray"},{score:{name:"#hist_j",objective:"ec.temp"},color:"gold"},{text:"/4",color:"gray"}]

# === PRESTIGE ===
tellraw @s {text:""}
tellraw @s [{text:"  ◆ ",color:"yellow"},{text:"Prestige:",color:"gray"}]

execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:adv_pres_task2 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Taskmaster II",color:"yellow"},{text:" +1.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Taskmaster II",color:"dark_gray"},{text:" +1.0",color:"dark_gray"}]

execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:adv_pres_task3 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Taskmaster III",color:"yellow"},{text:" +2.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Taskmaster III",color:"dark_gray"},{text:" +2.0",color:"dark_gray"}]

# === RUNES & GLYPHFORGE ===
tellraw @s {text:""}
tellraw @s [{text:"  ◆ ",color:"#FFD700"},{text:"Runes:",color:"gray"}]

execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:inscr_gold_greed 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Gold Greed (Stone)",color:"yellow"},{text:" +0.25",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Gold Greed (Stone)",color:"dark_gray"},{text:" +0.25",color:"dark_gray"}]

execute store success score #has ec.temp run attribute @s luck modifier value get ec_rf_gilded 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Gilded (Weapon)",color:"yellow"},{text:" +1.5",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Gilded (Weapon)",color:"dark_gray"},{text:" +1.5",color:"dark_gray"}]

# === CONSTELLATIONS (summary) ===
tellraw @s {text:""}
function evercraft:dreams/history_constellations

# === LORE SETS (summary) ===
tellraw @s {text:""}
tellraw @s [{text:"  ◆ ",color:"light_purple"},{text:"Lore Discovery Sets:",color:"gray"}]
execute if score @s ec.lore_sets_done matches 1.. run tellraw @s [{text:"    ✓ ",color:"green"},{score:{name:"@s",objective:"ec.lore_sets_done"},color:"gold"},{text:" sets completed",color:"gray"},{text:" — ",color:"dark_gray"},{text:"[View Details]",color:"light_purple",click_event:{action:"run_command",command:"/trigger ec.dreams set 1"},hover_event:{action:"show_text",value:{text:"View full DR breakdown with lore details",color:"gray"}}}]
execute unless score @s ec.lore_sets_done matches 1.. run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"No sets completed yet",color:"dark_gray"}]

# === BIOME MASTERY (summary) ===
tellraw @s {text:""}
tellraw @s [{text:"  ◆ ",color:"dark_green"},{text:"Biome Mastery:",color:"gray"}]
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:biome_mastery_dr 10
execute if score #has ec.temp matches 1 if score @s ec.bm_level matches 2..3 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Mastery Bonus",color:"green"},{text:" +0.1",color:"gold"}]
execute if score #has ec.temp matches 1 if score @s ec.bm_level matches 4 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Mastery Bonus",color:"green"},{text:" +0.35",color:"gold"}]
execute if score #has ec.temp matches 1 if score @s ec.bm_level matches 5.. run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Mastery Bonus",color:"green"},{text:" +0.5",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Not yet unlocked",color:"dark_gray"},{text:" (reach mastery level 2)",color:"dark_gray"}]

# === SPIRIT RAID BOSSES ===
tellraw @s {text:""}
tellraw @s [{text:"  ◆ ",color:"dark_red"},{text:"Spirit Raid Bosses:",color:"gray"}]

scoreboard players set #hist_boss ec.temp 0

# Hollow Sovereign — Echo of the Deep (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:boss_dr_1 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Echo of the Deep",color:"dark_aqua"},{text:" +1.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Echo of the Deep",color:"dark_gray"},{text:" +1.0",color:"dark_gray"}]
scoreboard players operation #hist_boss ec.temp += #has ec.temp

# Void Architect — Void Fragment (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:boss_dr_2 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Void Fragment",color:"dark_purple"},{text:" +1.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Void Fragment",color:"dark_gray"},{text:" +1.0",color:"dark_gray"}]
scoreboard players operation #hist_boss ec.temp += #has ec.temp

# Gilded Tyrant — Molten Gold Core (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:boss_dr_3 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Molten Gold Core",color:"gold"},{text:" +1.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Molten Gold Core",color:"dark_gray"},{text:" +1.0",color:"dark_gray"}]
scoreboard players operation #hist_boss ec.temp += #has ec.temp

# Arbiter — Condensed Gale (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:boss_dr_4 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Condensed Gale",color:"white"},{text:" +1.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Condensed Gale",color:"dark_gray"},{text:" +1.0",color:"dark_gray"}]
scoreboard players operation #hist_boss ec.temp += #has ec.temp

# Gatekeeper — Shattered Gate Fragment (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:boss_dr_5 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Shattered Gate Fragment",color:"dark_gray"},{text:" +1.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Shattered Gate Fragment",color:"dark_gray"},{text:" +1.0",color:"dark_gray"}]
scoreboard players operation #hist_boss ec.temp += #has ec.temp

# Grand Illusionist — Bottled Nightmare (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:boss_dr_6 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Bottled Nightmare",color:"dark_purple"},{text:" +1.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Bottled Nightmare",color:"dark_gray"},{text:" +1.0",color:"dark_gray"}]
scoreboard players operation #hist_boss ec.temp += #has ec.temp

# Ashen Lord — Cinder Heart (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:boss_dr_7 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Cinder Heart",color:"red"},{text:" +1.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Cinder Heart",color:"dark_gray"},{text:" +1.0",color:"dark_gray"}]
scoreboard players operation #hist_boss ec.temp += #has ec.temp

# Leviathan — Deep Sea Pearl (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:boss_dr_8 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Deep Sea Pearl",color:"aqua"},{text:" +1.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Deep Sea Pearl",color:"dark_gray"},{text:" +1.0",color:"dark_gray"}]
scoreboard players operation #hist_boss ec.temp += #has ec.temp

# Eternal Pharaoh — Dynasty Ember (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:boss_dr_9 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Dynasty Ember",color:"gold"},{text:" +1.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Dynasty Ember",color:"dark_gray"},{text:" +1.0",color:"dark_gray"}]
scoreboard players operation #hist_boss ec.temp += #has ec.temp

# Venomweaver — Purified Venom Gland (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:boss_dr_10 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Purified Venom Gland",color:"green"},{text:" +1.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Purified Venom Gland",color:"dark_gray"},{text:" +1.0",color:"dark_gray"}]
scoreboard players operation #hist_boss ec.temp += #has ec.temp

# Deepcrawler — Crystallized Depths (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:boss_dr_11 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Crystallized Depths",color:"light_purple"},{text:" +1.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Crystallized Depths",color:"dark_gray"},{text:" +1.0",color:"dark_gray"}]
scoreboard players operation #hist_boss ec.temp += #has ec.temp

# Mossheart Warden — Living Stone Fragment (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:boss_dr_12 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Living Stone Fragment",color:"green"},{text:" +1.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Living Stone Fragment",color:"dark_gray"},{text:" +1.0",color:"dark_gray"}]
scoreboard players operation #hist_boss ec.temp += #has ec.temp

# Crimson Bulwark — Iron Will Crystal (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:boss_dr_13 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Iron Will Crystal",color:"white"},{text:" +1.0",color:"gold"}]
execute unless score #has ec.temp matches 1 run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"Iron Will Crystal",color:"dark_gray"},{text:" +1.0",color:"dark_gray"}]
scoreboard players operation #hist_boss ec.temp += #has ec.temp

tellraw @s [{text:"    Spirit Bosses: ",color:"gray"},{score:{name:"#hist_boss",objective:"ec.temp"},color:"gold"},{text:"/13",color:"gray"}]

# === FOOTER ===
tellraw @s {text:""}
tellraw @s {text:"  ─────────────────────────────",color:"dark_gray"}
tellraw @s [{text:"  [",color:"dark_gray"},{text:"Dream Rate",color:"light_purple",click_event:{action:"run_command",command:"/trigger ec.dreams set 1"},hover_event:{action:"show_text",value:{text:"View full Dream Rate breakdown",color:"gray"}}},{text:"]  ",color:"dark_gray"},{text:"[",color:"dark_gray"},{text:"Stats",color:"green",click_event:{action:"run_command",command:"/trigger ec.stats set 1"},hover_event:{action:"show_text",value:{text:"View Forevercraft stats",color:"gray"}}},{text:"]",color:"dark_gray"}]
tellraw @s {text:""}

playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.5 1.0
