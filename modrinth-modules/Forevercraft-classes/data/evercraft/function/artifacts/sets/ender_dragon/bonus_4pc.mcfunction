# Ender Dragon 4-Piece Bonus: Dragon's Fury — Dragon Blade
execute unless entity @s[tag=ender_dragon_4pc] run function evercraft:artifacts/sets/ender_dragon/grant_dragon_blade
tag @s add ender_dragon_4pc

# Dragon aura — end particles around player
particle dragon_breath ~ ~1 ~ 0.5 0.5 0.5 0.02 3 force @s

# Class bonus: Tank (offhand shield) — +50% Knockback Resistance
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] unless entity @s[tag=ed_tank_4pc] run attribute @s knockback_resistance modifier add evercraft:ed_tank_4pc_kb 0.5 add_value
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] run tag @s add ed_tank_4pc
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if entity @s[tag=ed_tank_4pc] run attribute @s knockback_resistance modifier remove evercraft:ed_tank_4pc_kb
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if entity @s[tag=ed_tank_4pc] run tag @s remove ed_tank_4pc

# Class bonus: Knight (mainhand sword, no offhand shield) — Speed I
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if items entity @s weapon.mainhand #minecraft:swords[custom_data~{awakened:1b}] unless score @s ec.h_speed matches 2.. run effect give @s speed 3 0 false
