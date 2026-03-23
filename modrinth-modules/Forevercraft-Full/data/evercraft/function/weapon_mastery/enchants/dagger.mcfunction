# Rogue Dagger enchantments — applied to hopper minecart item
# #wm_level = weapon level, #wm_ench_level = effective enchant level (level + prestige, cap 10)
# Tier data in storage evercraft:weapon_mastery {item:{tier:"..."}}
# Looting is primary — auto-swing kills check mainhand looting for drop bonuses
# Uses set_enchant_if_higher to preserve player enchants that exceed mastery level

scoreboard players operation #ench_level ec.var = #wm_ench_level ec.var

# Ench 1+: Looting (primary — scales with mastery level)
execute if score #wm_ench_level ec.var matches 1.. run function evercraft:mastery/set_enchant_if_higher {enchant:"looting",tag:"wm_temp"}

# Ench 2+: Sharpness (benefits manual attacks)
execute if score #wm_ench_level ec.var matches 2.. run function evercraft:mastery/set_enchant_if_higher {enchant:"sharpness",tag:"wm_temp"}

# Ench 3+: Fire Aspect (benefits manual attacks)
execute if score #wm_ench_level ec.var matches 3.. run function evercraft:mastery/set_enchant_if_higher {enchant:"fire_aspect",tag:"wm_temp"}

# Ench 4+: Sweeping Edge (benefits manual attacks)
execute if score #wm_ench_level ec.var matches 4.. run function evercraft:mastery/set_enchant_if_higher {enchant:"sweeping_edge",tag:"wm_temp"}

# Ench 5+: Knockback (benefits manual attacks)
execute if score #wm_ench_level ec.var matches 5.. run function evercraft:mastery/set_enchant_if_higher {enchant:"knockback",tag:"wm_temp"}

# Ench 6+: Unbreaking (skip for mythical — already unbreakable)
execute if score #wm_ench_level ec.var matches 6.. unless data storage evercraft:weapon_mastery {item:{tier:"mythical"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"unbreaking",tag:"wm_temp"}

# Ench 7+: Mending (skip for mythical — already unbreakable)
execute if score #wm_ench_level ec.var matches 7.. unless data storage evercraft:weapon_mastery {item:{tier:"mythical"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"mending",tag:"wm_temp"}

# Ench 6+: Smite (mythical gets this at 6 since it skips Unbreaking/Mending)
execute if score #wm_ench_level ec.var matches 6.. if data storage evercraft:weapon_mastery {item:{tier:"mythical"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"smite",tag:"wm_temp"}

# Ench 8+: Smite (exquisite gets this at 8 — needs prestige to reach)
execute if score #wm_ench_level ec.var matches 8.. if data storage evercraft:weapon_mastery {item:{tier:"exquisite"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"smite",tag:"wm_temp"}

# Ench 7+: Bane of Arthropods (mythical gets this at 7 since it skips Unbreaking/Mending)
execute if score #wm_ench_level ec.var matches 7.. if data storage evercraft:weapon_mastery {item:{tier:"mythical"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"bane_of_arthropods",tag:"wm_temp"}
