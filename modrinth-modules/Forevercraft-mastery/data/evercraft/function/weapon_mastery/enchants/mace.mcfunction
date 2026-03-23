# Mace (Striker class) enchantments — applied to hopper minecart item
# #wm_level = weapon level, #wm_ench_level = effective enchant level (level + prestige, cap 10)
# Tier data in storage evercraft:weapon_mastery {item:{tier:"..."}}
# Progression: Density -> Breach -> Fire Aspect -> Knockback -> Looting -> Unbreaking/Mending
# Mythical skips Unbreaking/Mending, gets Wind Burst + Smite earlier
# Uses set_enchant_if_higher to preserve player enchants that exceed mastery level

scoreboard players operation #ench_level ec.var = #wm_ench_level ec.var

# Ench 1+: Density (mace-native primary damage)
execute if score #wm_ench_level ec.var matches 1.. run function evercraft:mastery/set_enchant_if_higher {enchant:"density",tag:"wm_temp"}

# Ench 2+: Breach (mace-native armor-piercing)
execute if score #wm_ench_level ec.var matches 2.. run function evercraft:mastery/set_enchant_if_higher {enchant:"breach",tag:"wm_temp"}

# Ench 3+: Fire Aspect
execute if score #wm_ench_level ec.var matches 3.. run function evercraft:mastery/set_enchant_if_higher {enchant:"fire_aspect",tag:"wm_temp"}

# Ench 4+: Knockback
execute if score #wm_ench_level ec.var matches 4.. run function evercraft:mastery/set_enchant_if_higher {enchant:"knockback",tag:"wm_temp"}

# Ench 5+: Looting
execute if score #wm_ench_level ec.var matches 5.. run function evercraft:mastery/set_enchant_if_higher {enchant:"looting",tag:"wm_temp"}

# Ench 6+: Unbreaking (skip for mythical — already unbreakable)
execute if score #wm_ench_level ec.var matches 6.. unless data storage evercraft:weapon_mastery {item:{tier:"mythical"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"unbreaking",tag:"wm_temp"}

# Ench 7+: Mending (skip for mythical — already unbreakable)
execute if score #wm_ench_level ec.var matches 7.. unless data storage evercraft:weapon_mastery {item:{tier:"mythical"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"mending",tag:"wm_temp"}

# Ench 6+: Wind Burst (mythical gets at 6 since it skips Unbreaking/Mending)
execute if score #wm_ench_level ec.var matches 6.. if data storage evercraft:weapon_mastery {item:{tier:"mythical"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"wind_burst",tag:"wm_temp"}

# Ench 7+: Smite (mythical gets at 7 since it skips Unbreaking/Mending)
execute if score #wm_ench_level ec.var matches 7.. if data storage evercraft:weapon_mastery {item:{tier:"mythical"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"smite",tag:"wm_temp"}

# Ench 8+: Wind Burst (exquisite gets at 8 — needs prestige)
execute if score #wm_ench_level ec.var matches 8.. if data storage evercraft:weapon_mastery {item:{tier:"exquisite"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"wind_burst",tag:"wm_temp"}

# Ench 9+: Smite (deep prestige — non-mythical)
execute if score #wm_ench_level ec.var matches 9.. unless data storage evercraft:weapon_mastery {item:{tier:"mythical"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"smite",tag:"wm_temp"}

# Ench 10: Bane of Arthropods (ultimate capstone)
execute if score #wm_ench_level ec.var matches 10 run function evercraft:mastery/set_enchant_if_higher {enchant:"bane_of_arthropods",tag:"wm_temp"}
