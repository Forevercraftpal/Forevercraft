# Dexterity Effect — +2% block/entity reach per level
# Remove old modifiers, calculate new value, apply via macro

attribute @s block_interaction_range modifier remove evercraft:adv_dex_block
attribute @s entity_interaction_range modifier remove evercraft:adv_dex_entity

# Calculate: level * 2 = percentage points, store as decimal (2 -> 0.02)
scoreboard players operation #reach adv.temp = @s adv.dexterity
scoreboard players operation #reach adv.temp *= #2 adv.temp
execute store result storage evercraft:advantage reach double 0.01 run scoreboard players get #reach adv.temp

function evercraft:advantage/effects/apply_dexterity with storage evercraft:advantage
