# Bow enchantments — applied to hopper minecart item
# #wm_ench_level = effective enchant level (level + prestige, cap 10)
# Tier data in storage evercraft:weapon_mastery {item:{tier:"..."}}
# Conflict group: Infinity vs Mending
# Uses set_enchant_if_higher to preserve player enchants that exceed mastery level

scoreboard players operation #ench_level ec.var = #wm_ench_level ec.var

# Ench 1+: Power
execute if score #wm_ench_level ec.var matches 1.. run function evercraft:mastery/set_enchant_if_higher {enchant:"power",tag:"wm_temp"}

# Ench 2+: Punch
execute if score #wm_ench_level ec.var matches 2.. run function evercraft:mastery/set_enchant_if_higher {enchant:"punch",tag:"wm_temp"}

# Ench 3+: Flame
execute if score #wm_ench_level ec.var matches 3.. run function evercraft:mastery/set_enchant_if_higher {enchant:"flame",tag:"wm_temp"}

# Ench 4+: Infinity (the default conflict enchant — all tiers get this)
execute if score #wm_ench_level ec.var matches 4.. run function evercraft:mastery/set_enchant_if_higher {enchant:"infinity",tag:"wm_temp"}

# Ench 5+: Looting (arrow kills check mainhand for Looting)
execute if score #wm_ench_level ec.var matches 5.. run function evercraft:mastery/set_enchant_if_higher {enchant:"looting",tag:"wm_temp"}

# Ench 6+: Unbreaking (skip for mythical — already unbreakable)
execute if score #wm_ench_level ec.var matches 6.. unless data storage evercraft:weapon_mastery {item:{tier:"mythical"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"unbreaking",tag:"wm_temp"}

# Ench 7+: Mending (skip for mythical — already unbreakable AND conflicts with Infinity)
execute if score #wm_ench_level ec.var matches 7.. unless data storage evercraft:weapon_mastery {item:{tier:"mythical"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"mending",tag:"wm_temp"}

# Note: Bow conflict is Infinity vs Mending. Mythical gets Infinity (ench 4) but skips Mending
# (doesn't need it — unbreakable). Exquisite/ornate/etc get BOTH Infinity + Mending via prestige
# (the weapon mastery system overrides vanilla conflict rules by setting enchants directly).
