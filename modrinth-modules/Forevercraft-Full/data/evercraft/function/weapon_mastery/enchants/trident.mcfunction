# Trident enchantments — applied to hopper minecart item
# #wm_ench_level = effective enchant level (level + prestige, cap 10)
# Tier data in storage evercraft:weapon_mastery {item:{tier:"..."}}
# Conflict group: Loyalty vs Riptide (also Channeling conflicts with Riptide in vanilla)
# Uses set_enchant_if_higher to preserve player enchants that exceed mastery level

scoreboard players operation #ench_level ec.var = #wm_ench_level ec.var

# Ench 1+: Impaling
execute if score #wm_ench_level ec.var matches 1.. run function evercraft:mastery/set_enchant_if_higher {enchant:"impaling",tag:"wm_temp"}

# Ench 2+: Loyalty (default conflict enchant — all tiers get this)
execute if score #wm_ench_level ec.var matches 2.. run function evercraft:mastery/set_enchant_if_higher {enchant:"loyalty",tag:"wm_temp"}

# Ench 3+: Channeling
execute if score #wm_ench_level ec.var matches 3.. run function evercraft:mastery/set_enchant_if_higher {enchant:"channeling",tag:"wm_temp"}

# Ench 4+: Unbreaking (skip for mythical — already unbreakable)
execute if score #wm_ench_level ec.var matches 4.. unless data storage evercraft:weapon_mastery {item:{tier:"mythical"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"unbreaking",tag:"wm_temp"}

# Ench 5+: Mending (skip for mythical — already unbreakable)
execute if score #wm_ench_level ec.var matches 5.. unless data storage evercraft:weapon_mastery {item:{tier:"mythical"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"mending",tag:"wm_temp"}

# Ench 4+: Riptide (mythical gets this at 4 since it skips Unbreaking/Mending)
execute if score #wm_ench_level ec.var matches 4.. if data storage evercraft:weapon_mastery {item:{tier:"mythical"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"riptide",tag:"wm_temp"}

# Ench 6+: Riptide (exquisite gets this at 6 — needs prestige to reach)
execute if score #wm_ench_level ec.var matches 6.. if data storage evercraft:weapon_mastery {item:{tier:"exquisite"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"riptide",tag:"wm_temp"}
