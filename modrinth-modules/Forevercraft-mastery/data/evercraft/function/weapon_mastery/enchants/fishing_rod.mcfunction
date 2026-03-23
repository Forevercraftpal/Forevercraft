# Fishing Rod enchantments — applied to hopper minecart item
# #wm_ench_level = effective enchant level (level + prestige, cap 10)
# Tier data in storage evercraft:weapon_mastery {item:{tier:"..."}}
# No conflict group
# Uses set_enchant_if_higher to preserve player enchants that exceed mastery level

scoreboard players operation #ench_level ec.var = #wm_ench_level ec.var

# Ench 1+: Lure
execute if score #wm_ench_level ec.var matches 1.. run function evercraft:mastery/set_enchant_if_higher {enchant:"lure",tag:"wm_temp"}

# Ench 2+: Luck of the Sea
execute if score #wm_ench_level ec.var matches 2.. run function evercraft:mastery/set_enchant_if_higher {enchant:"luck_of_the_sea",tag:"wm_temp"}

# Ench 3+: Unbreaking (skip for mythical — already unbreakable)
execute if score #wm_ench_level ec.var matches 3.. unless data storage evercraft:weapon_mastery {item:{tier:"mythical"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"unbreaking",tag:"wm_temp"}

# Ench 4+: Mending (skip for mythical — already unbreakable)
execute if score #wm_ench_level ec.var matches 4.. unless data storage evercraft:weapon_mastery {item:{tier:"mythical"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"mending",tag:"wm_temp"}
