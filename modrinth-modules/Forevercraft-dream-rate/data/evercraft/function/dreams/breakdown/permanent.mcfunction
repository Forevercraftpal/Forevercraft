# Dream Rate Breakdown — Permanent Bonuses
# Crystal of Dreams, Rabbit's Dreaming Foot, Crystalized Dream Droppings,
# Dream Inducing Mushroom, Chorus Dreaming Fruit, Patron's Dream Essence,
# Dreamer's Quill, Dreamweaver's Thread, Tome of Lucid Visions, Astral Codex Page,
# Fisherman's Dozing Lure, Miner's Slumbering Geode, Harvester's Dreamy Seed,
# Blacksmith's Dreaming Ember, Wanderer's Dream Map,
# Prospector's Dream Ore, Collector's Dream Relic, Tiller's Dream Petal

scoreboard players set #dr_any ec.temp 0

# Dreamdust Crystal (+2.5, gacha mythical one-time consumable)
execute store success score #has_dc ec.temp run attribute @s luck modifier value get evercraft:dreamdust_crystal 10
execute if score #has_dc ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Permanent:",color:"gray"}]
execute if score #has_dc ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has_dc ec.temp matches 1 run tellraw @s [{text:"    Dreamdust Crystal",color:"#E0B0FF"},{text:"       +2.5",color:"gold"}]

# Crystal of Dreams (+1.0, one-time permanent consumable)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:crystal_of_dreams_bonus 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Permanent:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Crystal of Dreams",color:"light_purple"},{text:"       +1.0",color:"gold"}]

# Rabbit's Dreaming Foot (+1.0, one-time permanent consumable)
execute store success score #has_rdf ec.temp run attribute @s luck modifier value get evercraft:rabbits_dreaming_foot_luck 10
execute if score #has_rdf ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Permanent:",color:"gray"}]
execute if score #has_rdf ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has_rdf ec.temp matches 1 run tellraw @s [{text:"    Rabbit's Dreaming Foot",color:"green"},{text:"     +1.0",color:"gold"}]

# Crystalized Dream Droppings (+1.0, one-time permanent consumable)
execute store success score #has_dd ec.temp run attribute @s luck modifier value get evercraft:dream_droppings_bonus 10
execute if score #has_dd ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Permanent:",color:"gray"}]
execute if score #has_dd ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has_dd ec.temp matches 1 run tellraw @s [{text:"    Crystalized Dream Droppings",color:"dark_purple"},{text:" +1.0",color:"gold"}]

# Dream Inducing Mushroom (+1.0, one-time permanent consumable)
execute store success score #has_dm ec.temp run attribute @s luck modifier value get evercraft:dream_mushroom_bonus 10
execute if score #has_dm ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Permanent:",color:"gray"}]
execute if score #has_dm ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has_dm ec.temp matches 1 run tellraw @s [{text:"    Dream Inducing Mushroom",color:"dark_red"},{text:"   +1.0",color:"gold"}]

# Chorus Dreaming Fruit (+1.0, one-time permanent consumable)
execute store success score #has_cf ec.temp run attribute @s luck modifier value get evercraft:chorus_dreaming_bonus 10
execute if score #has_cf ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Permanent:",color:"gray"}]
execute if score #has_cf ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has_cf ec.temp matches 1 run tellraw @s [{text:"    Chorus Dreaming Fruit",color:"light_purple"},{text:"    +1.0",color:"gold"}]

# Patron's Dream Essence (+1.0, one-time permanent consumable)
execute store success score #has_pde ec.temp run attribute @s luck modifier value get evercraft:patrons_dream_essence_bonus 10
execute if score #has_pde ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Permanent:",color:"gray"}]
execute if score #has_pde ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has_pde ec.temp matches 1 run tellraw @s [{text:"    Patron's Dream Essence",color:"dark_red"},{text:"  +1.0",color:"gold"}]

# Dreamer's Quill (+1.0, one-time permanent consumable)
execute store success score #has_dq ec.temp run attribute @s luck modifier value get evercraft:dreamers_quill_bonus 10
execute if score #has_dq ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Permanent:",color:"gray"}]
execute if score #has_dq ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has_dq ec.temp matches 1 run tellraw @s [{text:"    Dreamer's Quill",color:"gold"},{text:"         +1.0",color:"gold"}]

# Dreamweaver's Thread (+1.0, one-time permanent consumable)
execute store success score #has_dt ec.temp run attribute @s luck modifier value get evercraft:dreamweavers_thread_bonus 10
execute if score #has_dt ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Permanent:",color:"gray"}]
execute if score #has_dt ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has_dt ec.temp matches 1 run tellraw @s [{text:"    Dreamweaver's Thread",color:"light_purple"},{text:"    +1.0",color:"gold"}]

# Tome of Lucid Visions (+1.0, one-time permanent consumable)
execute store success score #has_tlv ec.temp run attribute @s luck modifier value get evercraft:tome_of_lucid_visions_bonus 10
execute if score #has_tlv ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Permanent:",color:"gray"}]
execute if score #has_tlv ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has_tlv ec.temp matches 1 run tellraw @s [{text:"    Tome of Lucid Visions",color:"dark_aqua"},{text:"   +1.0",color:"gold"}]

# Astral Codex Page (+1.0, one-time permanent consumable)
execute store success score #has_acp ec.temp run attribute @s luck modifier value get evercraft:astral_codex_page_bonus 10
execute if score #has_acp ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Permanent:",color:"gray"}]
execute if score #has_acp ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has_acp ec.temp matches 1 run tellraw @s [{text:"    Astral Codex Page",color:"aqua"},{text:"       +1.0",color:"gold"}]

# Fisherman's Dozing Lure (+1.0, one-time permanent consumable)
execute store success score #has_fdl ec.temp run attribute @s luck modifier value get evercraft:fishermans_dozing_lure_bonus 10
execute if score #has_fdl ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Permanent:",color:"gray"}]
execute if score #has_fdl ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has_fdl ec.temp matches 1 run tellraw @s [{text:"    Fisherman's Dozing Lure",color:"blue"},{text:"  +1.0",color:"gold"}]

# Miner's Slumbering Geode (+1.0, one-time permanent consumable)
execute store success score #has_msg ec.temp run attribute @s luck modifier value get evercraft:miners_slumbering_geode_bonus 10
execute if score #has_msg ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Permanent:",color:"gray"}]
execute if score #has_msg ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has_msg ec.temp matches 1 run tellraw @s [{text:"    Miner's Slumbering Geode",color:"gold"},{text:" +1.0",color:"gold"}]

# Harvester's Dreamy Seed (+1.0, one-time permanent consumable)
execute store success score #has_hds ec.temp run attribute @s luck modifier value get evercraft:harvesters_dreamy_seed_bonus 10
execute if score #has_hds ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Permanent:",color:"gray"}]
execute if score #has_hds ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has_hds ec.temp matches 1 run tellraw @s [{text:"    Harvester's Dreamy Seed",color:"green"},{text:"  +1.0",color:"gold"}]

# Blacksmith's Dreaming Ember (+1.0, one-time permanent consumable)
execute store success score #has_bde ec.temp run attribute @s luck modifier value get evercraft:blacksmiths_dreaming_ember_bonus 10
execute if score #has_bde ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Permanent:",color:"gray"}]
execute if score #has_bde ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has_bde ec.temp matches 1 run tellraw @s [{text:"    Blacksmith's Dreaming Ember",color:"red"},{text:" +1.0",color:"gold"}]

# Wanderer's Dream Map (+1.0, one-time permanent consumable)
execute store success score #has_wdm ec.temp run attribute @s luck modifier value get evercraft:wanderers_dream_map_bonus 10
execute if score #has_wdm ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Permanent:",color:"gray"}]
execute if score #has_wdm ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has_wdm ec.temp matches 1 run tellraw @s [{text:"    Wanderer's Dream Map",color:"dark_aqua"},{text:"    +1.0",color:"gold"}]

# Prospector's Dream Ore (+1.0, one-time permanent consumable)
execute store success score #has_pdo ec.temp run attribute @s luck modifier value get evercraft:prospectors_dream_ore_bonus 10
execute if score #has_pdo ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Permanent:",color:"gray"}]
execute if score #has_pdo ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has_pdo ec.temp matches 1 run tellraw @s [{text:"    Prospector's Dream Ore",color:"yellow"},{text:"   +1.0",color:"gold"}]

# Collector's Dream Relic (+1.0, one-time permanent consumable)
execute store success score #has_cdr ec.temp run attribute @s luck modifier value get evercraft:collectors_dream_relic_bonus 10
execute if score #has_cdr ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Permanent:",color:"gray"}]
execute if score #has_cdr ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has_cdr ec.temp matches 1 run tellraw @s [{text:"    Collector's Dream Relic",color:"light_purple"},{text:"  +1.0",color:"gold"}]

# Tiller's Dream Petal (+1.0, one-time permanent consumable)
execute store success score #has_tdp ec.temp run attribute @s luck modifier value get evercraft:tillers_dream_petal_bonus 10
execute if score #has_tdp ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Permanent:",color:"gray"}]
execute if score #has_tdp ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has_tdp ec.temp matches 1 run tellraw @s [{text:"    Tiller's Dream Petal",color:"dark_green"},{text:"     +1.0",color:"gold"}]

# Exploration Journal Region Bonuses
execute store success score #has_jow ec.temp run attribute @s luck modifier value get evercraft:journal_ow_surface_luck 10
execute if score #has_jow ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Permanent:",color:"gray"}]
execute if score #has_jow ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has_jow ec.temp matches 1 run tellraw @s [{text:"    Journal: OW Surface",color:"dark_aqua"},{text:"    +1.0",color:"gold"}]

execute store success score #has_jcave ec.temp run attribute @s luck modifier value get evercraft:journal_ow_caves_luck 10
execute if score #has_jcave ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Permanent:",color:"gray"}]
execute if score #has_jcave ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has_jcave ec.temp matches 1 run tellraw @s [{text:"    Journal: OW Caves",color:"dark_aqua"},{text:"      +2.0",color:"gold"}]

execute store success score #has_jneth ec.temp run attribute @s luck modifier value get evercraft:journal_nether_luck 10
execute if score #has_jneth ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Permanent:",color:"gray"}]
execute if score #has_jneth ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has_jneth ec.temp matches 1 run tellraw @s [{text:"    Journal: Nether",color:"dark_aqua"},{text:"        +1.5",color:"gold"}]

execute store success score #has_jend ec.temp run attribute @s luck modifier value get evercraft:journal_end_luck 10
execute if score #has_jend ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Permanent:",color:"gray"}]
execute if score #has_jend ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has_jend ec.temp matches 1 run tellraw @s [{text:"    Journal: The End",color:"dark_aqua"},{text:"       +3.0",color:"gold"}]
