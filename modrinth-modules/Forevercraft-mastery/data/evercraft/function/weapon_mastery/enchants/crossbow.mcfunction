# Crossbow enchantments — applied to hopper minecart item
# #wm_ench_level = effective enchant level (level + prestige, cap 10)
# Tier data in storage evercraft:weapon_mastery {item:{tier:"..."}}
# Conflict group: Piercing vs Multishot
# Uses set_enchant_if_higher to preserve player enchants that exceed mastery level

scoreboard players operation #ench_level ec.var = #wm_ench_level ec.var

# Ench 1+: Quick Charge
execute if score #wm_ench_level ec.var matches 1.. run function evercraft:mastery/set_enchant_if_higher {enchant:"quick_charge",tag:"wm_temp"}

# Ench 2+: Piercing (default conflict enchant — all tiers get this)
execute if score #wm_ench_level ec.var matches 2.. run function evercraft:mastery/set_enchant_if_higher {enchant:"piercing",tag:"wm_temp"}

# Ench 3+: Looting (arrow kills check mainhand for Looting)
execute if score #wm_ench_level ec.var matches 3.. run function evercraft:mastery/set_enchant_if_higher {enchant:"looting",tag:"wm_temp"}

# Ench 4+: Unbreaking (skip for mythical — already unbreakable)
execute if score #wm_ench_level ec.var matches 4.. unless data storage evercraft:weapon_mastery {item:{tier:"mythical"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"unbreaking",tag:"wm_temp"}

# Ench 5+: Mending (skip for mythical — already unbreakable)
execute if score #wm_ench_level ec.var matches 5.. unless data storage evercraft:weapon_mastery {item:{tier:"mythical"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"mending",tag:"wm_temp"}

# Ench 3+: Multishot (mythical gets this at 3 since it skips Unbreaking/Mending)
execute if score #wm_ench_level ec.var matches 3.. if data storage evercraft:weapon_mastery {item:{tier:"mythical"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"multishot",tag:"wm_temp"}

# Ench 6+: Multishot (exquisite gets this at 6 — needs prestige to reach)
execute if score #wm_ench_level ec.var matches 6.. if data storage evercraft:weapon_mastery {item:{tier:"exquisite"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"multishot",tag:"wm_temp"}
