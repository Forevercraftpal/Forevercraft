# Chestplate enchantments — applied to hopper minecart item
# #am_ench_level = effective enchant level (level + prestige, cap 10)
# Tier data in storage evercraft:armor_mastery {item:{tier:"..."}}
# Conflict group: Protection vs Fire/Blast/Projectile Protection
# Uses set_enchant_if_higher to preserve player enchants that exceed mastery level

scoreboard players operation #ench_level ec.var = #am_ench_level ec.var

# Ench 1+: Protection
execute if score #am_ench_level ec.var matches 1.. run function evercraft:mastery/set_enchant_if_higher {enchant:"protection",tag:"am_temp"}

# Ench 2+: Thorns
execute if score #am_ench_level ec.var matches 2.. run function evercraft:mastery/set_enchant_if_higher {enchant:"thorns",tag:"am_temp"}

# Ench 3+: Unbreaking (skip for mythical — already unbreakable)
execute if score #am_ench_level ec.var matches 3.. unless data storage evercraft:armor_mastery {item:{tier:"mythical"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"unbreaking",tag:"am_temp"}

# Ench 4+: Mending (skip for mythical — already unbreakable)
execute if score #am_ench_level ec.var matches 4.. unless data storage evercraft:armor_mastery {item:{tier:"mythical"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"mending",tag:"am_temp"}

# Ench 3+: Fire Protection (mythical gets this at 3 since it skips Unbreaking/Mending)
execute if score #am_ench_level ec.var matches 3.. if data storage evercraft:armor_mastery {item:{tier:"mythical"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"fire_protection",tag:"am_temp"}

# Ench 4+: Blast Protection (mythical gets this at 4)
execute if score #am_ench_level ec.var matches 4.. if data storage evercraft:armor_mastery {item:{tier:"mythical"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"blast_protection",tag:"am_temp"}

# Ench 5+: Projectile Protection (mythical gets this at 5)
execute if score #am_ench_level ec.var matches 5.. if data storage evercraft:armor_mastery {item:{tier:"mythical"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"projectile_protection",tag:"am_temp"}

# Ench 5+: Fire Protection (exquisite gets this at 5 — needs prestige)
execute if score #am_ench_level ec.var matches 5.. if data storage evercraft:armor_mastery {item:{tier:"exquisite"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"fire_protection",tag:"am_temp"}
