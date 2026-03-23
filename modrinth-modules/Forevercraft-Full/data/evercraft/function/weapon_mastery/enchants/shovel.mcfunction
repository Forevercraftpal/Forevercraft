# Shovel enchantments — applied to hopper minecart item
# #wm_ench_level = effective enchant level (level + prestige, cap 10)
# Tier data in storage evercraft:weapon_mastery {item:{tier:"..."}}
# No conflict group — Fortune only (no Silk Touch per design)
# Uses set_enchant_if_higher to preserve player enchants that exceed mastery level

scoreboard players operation #ench_level ec.var = #wm_ench_level ec.var

# Ench 1+: Efficiency
execute if score #wm_ench_level ec.var matches 1.. run function evercraft:mastery/set_enchant_if_higher {enchant:"efficiency",tag:"wm_temp"}

# Ench 2+: Fortune
execute if score #wm_ench_level ec.var matches 2.. run function evercraft:mastery/set_enchant_if_higher {enchant:"fortune",tag:"wm_temp"}

# Ench 3+: Unbreaking (skip for mythical — already unbreakable)
execute if score #wm_ench_level ec.var matches 3.. unless data storage evercraft:weapon_mastery {item:{tier:"mythical"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"unbreaking",tag:"wm_temp"}

# Ench 4+: Mending (skip for mythical — already unbreakable)
execute if score #wm_ench_level ec.var matches 4.. unless data storage evercraft:weapon_mastery {item:{tier:"mythical"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"mending",tag:"wm_temp"}
