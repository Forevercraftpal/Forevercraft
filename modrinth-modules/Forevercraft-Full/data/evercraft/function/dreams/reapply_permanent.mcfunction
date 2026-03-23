# Reapply permanent dream rate modifiers on join/death
# Ensures modifiers survive server restarts, crashes, and data quirks
# Called from advantage/effects/reapply_all

# Dreamdust Crystal (+2.5)
execute if entity @s[tag=ec.dreamdust_used] run attribute @s luck modifier remove evercraft:dreamdust_crystal
execute if entity @s[tag=ec.dreamdust_used] run attribute @s luck modifier add evercraft:dreamdust_crystal 2.5 add_value

# Dream Inducing Mushroom (+1.0)
execute if score @s ec.mushroom_count matches 1.. run attribute @s luck modifier remove evercraft:dream_mushroom_bonus
execute if score @s ec.mushroom_count matches 1.. run attribute @s luck modifier add evercraft:dream_mushroom_bonus 1.0 add_value

# Crystal of Dreams (+1.0)
execute if score @s ec.crystal_count matches 1.. run attribute @s luck modifier remove evercraft:crystal_of_dreams_bonus
execute if score @s ec.crystal_count matches 1.. run attribute @s luck modifier add evercraft:crystal_of_dreams_bonus 1.0 add_value

# Chorus Dreaming Fruit (+1.0)
execute if score @s ec.chorus_count matches 1.. run attribute @s luck modifier remove evercraft:chorus_dreaming_bonus
execute if score @s ec.chorus_count matches 1.. run attribute @s luck modifier add evercraft:chorus_dreaming_bonus 1.0 add_value

# Crystalized Dream Droppings (+1.0)
execute if score @s ec.droppings_count matches 1.. run attribute @s luck modifier remove evercraft:dream_droppings_bonus
execute if score @s ec.droppings_count matches 1.. run attribute @s luck modifier add evercraft:dream_droppings_bonus 1.0 add_value

# Dreamer's Quill (+1.0)
execute if score @s ec.quill_count matches 1.. run attribute @s luck modifier remove evercraft:dreamers_quill_bonus
execute if score @s ec.quill_count matches 1.. run attribute @s luck modifier add evercraft:dreamers_quill_bonus 1.0 add_value

# Dreamweaver's Thread (+1.0)
execute if score @s ec.thread_count matches 1.. run attribute @s luck modifier remove evercraft:dreamweavers_thread_bonus
execute if score @s ec.thread_count matches 1.. run attribute @s luck modifier add evercraft:dreamweavers_thread_bonus 1.0 add_value

# Patron's Dream Essence (+1.0)
execute if score @s ec.patron_dream_count matches 1.. run attribute @s luck modifier remove evercraft:patrons_dream_essence_bonus
execute if score @s ec.patron_dream_count matches 1.. run attribute @s luck modifier add evercraft:patrons_dream_essence_bonus 1.0 add_value

# Tome of Lucid Visions (+1.0)
execute if score @s ec.tome_count matches 1.. run attribute @s luck modifier remove evercraft:tome_of_lucid_visions_bonus
execute if score @s ec.tome_count matches 1.. run attribute @s luck modifier add evercraft:tome_of_lucid_visions_bonus 1.0 add_value

# Astral Codex Page (+1.0)
execute if score @s ec.codex_page_count matches 1.. run attribute @s luck modifier remove evercraft:astral_codex_page_bonus
execute if score @s ec.codex_page_count matches 1.. run attribute @s luck modifier add evercraft:astral_codex_page_bonus 1.0 add_value

# Fisherman's Dozing Lure (+1.0)
execute if score @s ec.lure_count matches 1.. run attribute @s luck modifier remove evercraft:fishermans_dozing_lure_bonus
execute if score @s ec.lure_count matches 1.. run attribute @s luck modifier add evercraft:fishermans_dozing_lure_bonus 1.0 add_value

# Miner's Slumbering Geode (+1.0)
execute if score @s ec.geode_count matches 1.. run attribute @s luck modifier remove evercraft:miners_slumbering_geode_bonus
execute if score @s ec.geode_count matches 1.. run attribute @s luck modifier add evercraft:miners_slumbering_geode_bonus 1.0 add_value

# Harvester's Dreamy Seed (+1.0)
execute if score @s ec.seed_count matches 1.. run attribute @s luck modifier remove evercraft:harvesters_dreamy_seed_bonus
execute if score @s ec.seed_count matches 1.. run attribute @s luck modifier add evercraft:harvesters_dreamy_seed_bonus 1.0 add_value

# Blacksmith's Dreaming Ember (+1.0)
execute if score @s ec.ember_count matches 1.. run attribute @s luck modifier remove evercraft:blacksmiths_dreaming_ember_bonus
execute if score @s ec.ember_count matches 1.. run attribute @s luck modifier add evercraft:blacksmiths_dreaming_ember_bonus 1.0 add_value

# Wanderer's Dream Map (+1.0)
execute if score @s ec.map_count matches 1.. run attribute @s luck modifier remove evercraft:wanderers_dream_map_bonus
execute if score @s ec.map_count matches 1.. run attribute @s luck modifier add evercraft:wanderers_dream_map_bonus 1.0 add_value

# Prospector's Dream Ore (+1.0)
execute if score @s ec.dream_ore_count matches 1.. run attribute @s luck modifier remove evercraft:prospectors_dream_ore_bonus
execute if score @s ec.dream_ore_count matches 1.. run attribute @s luck modifier add evercraft:prospectors_dream_ore_bonus 1.0 add_value

# Collector's Dream Relic (+1.0)
execute if score @s ec.dream_relic_count matches 1.. run attribute @s luck modifier remove evercraft:collectors_dream_relic_bonus
execute if score @s ec.dream_relic_count matches 1.. run attribute @s luck modifier add evercraft:collectors_dream_relic_bonus 1.0 add_value

# Tiller's Dream Petal (+1.0)
execute if score @s ec.dream_petal_count matches 1.. run attribute @s luck modifier remove evercraft:tillers_dream_petal_bonus
execute if score @s ec.dream_petal_count matches 1.. run attribute @s luck modifier add evercraft:tillers_dream_petal_bonus 1.0 add_value
