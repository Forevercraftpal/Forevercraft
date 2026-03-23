# Infernal 4-Piece Bonus: Infernal Eruption — AoE fire burst horn
execute unless entity @s[tag=infernal_4pc] run function evercraft:artifacts/sets/infernal/grant_ability_item
tag @s add infernal_4pc

# Infernal aura — fire particles around player
particle flame ~ ~1 ~ 0.5 0.5 0.5 0.02 5 force @s

# Class bonus: Striker (mainhand mace, no offhand shield) — +15% Attack Speed
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if items entity @s weapon.mainhand mace[custom_data~{striker:true}] unless entity @s[tag=inf_striker_4pc] run attribute @s attack_speed modifier add evercraft:inf_striker_4pc_aspd 0.15 add_multiplied_base
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if items entity @s weapon.mainhand mace[custom_data~{striker:true}] run tag @s add inf_striker_4pc
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] if entity @s[tag=inf_striker_4pc] run attribute @s attack_speed modifier remove evercraft:inf_striker_4pc_aspd
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] if entity @s[tag=inf_striker_4pc] run tag @s remove inf_striker_4pc
execute unless items entity @s weapon.mainhand mace[custom_data~{striker:true}] if entity @s[tag=inf_striker_4pc] run attribute @s attack_speed modifier remove evercraft:inf_striker_4pc_aspd
execute unless items entity @s weapon.mainhand mace[custom_data~{striker:true}] if entity @s[tag=inf_striker_4pc] run tag @s remove inf_striker_4pc

# Class bonus: Sentinel (offhand shield) — +50% Knockback Resistance
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] unless entity @s[tag=inf_sentinel_4pc] run attribute @s knockback_resistance modifier add evercraft:inf_sentinel_4pc_kb 0.5 add_value
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] run tag @s add inf_sentinel_4pc
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if entity @s[tag=inf_sentinel_4pc] run attribute @s knockback_resistance modifier remove evercraft:inf_sentinel_4pc_kb
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if entity @s[tag=inf_sentinel_4pc] run tag @s remove inf_sentinel_4pc
