# Trade Trial — Mastery Particles
# Run as/at: each player, every 20 ticks (from craftforever tick)
# Shows subtle particles based on mastered categories

# Mining mastery — gold particles when holding pickaxe
execute if score @s ec.tt_m_best matches 10 if predicate evercraft:is_holding_pickaxe run particle minecraft:dust{color:[1.0,0.8,0.0],scale:0.5} ~ ~1.5 ~ 0.3 0.3 0.3 0 2

# Farming mastery — green particles when holding hoe
execute if score @s ec.tt_farm_best matches 10 if predicate evercraft:is_holding_hoe run particle minecraft:happy_villager ~ ~1.5 ~ 0.3 0.3 0.3 0 2

# Fishing mastery — bubble particles when holding fishing rod
execute if score @s ec.tt_fish_best matches 10 if predicate evercraft:is_holding_rod run particle minecraft:bubble_pop ~ ~1.5 ~ 0.3 0.3 0.3 0.01 2

# Building mastery — falling dust when holding blocks
execute if score @s ec.tt_build_best matches 10 if predicate evercraft:is_holding_block run particle minecraft:dust{color:[0.76,0.70,0.50],scale:0.5} ~ ~1.5 ~ 0.3 0.3 0.3 0 2

# Lumber mastery — leaf particles when holding axe
execute if score @s ec.tt_lumb_best matches 10 if predicate evercraft:is_holding_axe run particle minecraft:falling_dust{block_state:{Name:"oak_leaves"}} ~ ~2 ~ 0.5 0.3 0.5 0.01 2

# Artisan mastery — enchant particles when holding shears
execute if score @s ec.tt_art_best matches 10 if predicate evercraft:is_holding_shears run particle minecraft:enchant ~ ~1.5 ~ 0.3 0.5 0.3 0.5 3

# Grand Master — end rod particles always (when all 6 mastered)
execute if score @s ec.tt_mastery matches 6 run particle minecraft:end_rod ~ ~2.2 ~ 0.1 0.1 0.1 0.02 1
