# Prestige — Apply Retained Bonuses
# Applies permanent attribute modifiers at a percentage of max-level value
# P1 = 17%, P2 = 34%, P3 = 50% of level-25 effect
# Only attribute-based trees: agility, dexterity, stealth, vitality
# Non-attribute trees (evasion, etc.) handle retention in their proc functions

# === AGILITY (max = 25*4% = 1.00 speed) ===
# P1: 0.17, P2: 0.34, P3: 0.50
execute if score #pres_tree adv.temp matches 1 run attribute @s movement_speed modifier remove evercraft:adv_pres_agility
execute if score #pres_tree adv.temp matches 1 if score #pres_current adv.temp matches 1 run data modify storage evercraft:advantage retained set value 0.17d
execute if score #pres_tree adv.temp matches 1 if score #pres_current adv.temp matches 2 run data modify storage evercraft:advantage retained set value 0.34d
execute if score #pres_tree adv.temp matches 1 if score #pres_current adv.temp matches 3 run data modify storage evercraft:advantage retained set value 0.50d
execute if score #pres_tree adv.temp matches 1 run function evercraft:advantage/prestige/apply_retained_agility with storage evercraft:advantage

# === DEXTERITY (max = 25*2% = 0.50 reach) ===
# P1: 0.085, P2: 0.17, P3: 0.25
execute if score #pres_tree adv.temp matches 2 run attribute @s block_interaction_range modifier remove evercraft:adv_pres_dexterity
execute if score #pres_tree adv.temp matches 2 run attribute @s entity_interaction_range modifier remove evercraft:adv_pres_dexterity
execute if score #pres_tree adv.temp matches 2 if score #pres_current adv.temp matches 1 run data modify storage evercraft:advantage retained set value 0.085d
execute if score #pres_tree adv.temp matches 2 if score #pres_current adv.temp matches 2 run data modify storage evercraft:advantage retained set value 0.17d
execute if score #pres_tree adv.temp matches 2 if score #pres_current adv.temp matches 3 run data modify storage evercraft:advantage retained set value 0.25d
execute if score #pres_tree adv.temp matches 2 run function evercraft:advantage/prestige/apply_retained_dexterity with storage evercraft:advantage

# === STEALTH (max = 25*4% = 1.00 sneak speed) ===
# P1: 0.17, P2: 0.34, P3: 0.50 — applied as sneaking_speed (always active, stacks with level)
execute if score #pres_tree adv.temp matches 4 run attribute @s sneaking_speed modifier remove evercraft:adv_pres_stealth
execute if score #pres_tree adv.temp matches 4 if score #pres_current adv.temp matches 1 run data modify storage evercraft:advantage retained set value 0.17d
execute if score #pres_tree adv.temp matches 4 if score #pres_current adv.temp matches 2 run data modify storage evercraft:advantage retained set value 0.34d
execute if score #pres_tree adv.temp matches 4 if score #pres_current adv.temp matches 3 run data modify storage evercraft:advantage retained set value 0.50d
execute if score #pres_tree adv.temp matches 4 run function evercraft:advantage/prestige/apply_retained_stealth with storage evercraft:advantage

# === VITALITY (max = 21 hearts = 42 HP after level 5) ===
# P1: 17% of 42 = 7 HP, P2: 34% of 42 = 14 HP, P3: 50% of 42 = 21 HP
execute if score #pres_tree adv.temp matches 5 run attribute @s max_health modifier remove evercraft:adv_pres_vitality
execute if score #pres_tree adv.temp matches 5 if score #pres_current adv.temp matches 1 run data modify storage evercraft:advantage retained set value 7.0d
execute if score #pres_tree adv.temp matches 5 if score #pres_current adv.temp matches 2 run data modify storage evercraft:advantage retained set value 14.0d
execute if score #pres_tree adv.temp matches 5 if score #pres_current adv.temp matches 3 run data modify storage evercraft:advantage retained set value 21.0d
execute if score #pres_tree adv.temp matches 5 run function evercraft:advantage/prestige/apply_retained_vitality with storage evercraft:advantage
