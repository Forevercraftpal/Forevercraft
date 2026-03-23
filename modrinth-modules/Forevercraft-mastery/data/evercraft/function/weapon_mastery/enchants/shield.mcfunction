# Shield enchantments — applied to hopper minecart item
# #wm_level = weapon level, #wm_ench_level = effective enchant level (level + prestige, cap 10)
# Looting is primary — shields used as tank weapons benefit from mob drops
# Uses set_enchant_if_higher to preserve player enchants that exceed mastery level

scoreboard players operation #ench_level ec.var = #wm_ench_level ec.var

# Ench 1+: Looting (primary — scales with mastery level)
execute if score #wm_ench_level ec.var matches 1.. run function evercraft:mastery/set_enchant_if_higher {enchant:"looting",tag:"wm_temp"}

# Ench 3+: Unbreaking (skip for mythical — already unbreakable)
execute if score #wm_ench_level ec.var matches 3.. unless data storage evercraft:weapon_mastery {item:{tier:"mythical"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"unbreaking",tag:"wm_temp"}

# Ench 5+: Mending (skip for mythical — already unbreakable)
execute if score #wm_ench_level ec.var matches 5.. unless data storage evercraft:weapon_mastery {item:{tier:"mythical"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"mending",tag:"wm_temp"}
