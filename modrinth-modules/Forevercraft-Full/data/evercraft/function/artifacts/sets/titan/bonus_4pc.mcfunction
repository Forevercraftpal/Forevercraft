# Tempest 4-Piece Bonus: Tidal Horn + Water Walking
execute unless entity @s[tag=titan_4pc] run function evercraft:artifacts/sets/titan/grant_ability_item
tag @s add titan_4pc
# Water aura — bubble particles around player
particle bubble_pop ~ ~1 ~ 0.5 0.5 0.5 0.01 3 force @s
# Water walking
function evercraft:artifacts/sets/titan/water_walk

# Class bonus: Javelin (mainhand trident, no offhand shield) — Speed I
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if items entity @s weapon.mainhand trident[custom_data~{awakened:1b}] unless score @s ec.h_speed matches 2.. run effect give @s speed 3 0 false

# Class bonus: Hoplite (offhand shield) — +50% Knockback Resistance
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] unless entity @s[tag=ttn_hop_4pc] run attribute @s knockback_resistance modifier add evercraft:ttn_hop_4pc_kb 0.5 add_value
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] run tag @s add ttn_hop_4pc
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if entity @s[tag=ttn_hop_4pc] run attribute @s knockback_resistance modifier remove evercraft:ttn_hop_4pc_kb
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if entity @s[tag=ttn_hop_4pc] run tag @s remove ttn_hop_4pc
