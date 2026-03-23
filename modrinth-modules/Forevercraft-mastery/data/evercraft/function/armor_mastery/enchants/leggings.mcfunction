# Leggings enchantments — applied to hopper minecart item
# #am_ench_level = effective enchant level (level + prestige, cap 10)
# Tier data in storage evercraft:armor_mastery {item:{tier:"..."}}
# Conflict group: Protection vs Fire/Blast/Projectile Protection
# Uses set_enchant_if_higher to preserve player enchants that exceed mastery level

scoreboard players operation #ench_level ec.var = #am_ench_level ec.var

# Ench 1+: Protection
execute if score #am_ench_level ec.var matches 1.. run function evercraft:mastery/set_enchant_if_higher {enchant:"protection",tag:"am_temp"}

# Ench 2+: Thorns
execute if score #am_ench_level ec.var matches 2.. run function evercraft:mastery/set_enchant_if_higher {enchant:"thorns",tag:"am_temp"}

# Ench 3+: Swift Sneak
execute if score #am_ench_level ec.var matches 3.. run function evercraft:mastery/set_enchant_if_higher {enchant:"swift_sneak",tag:"am_temp"}

# Ench 4+: Unbreaking (skip for mythical — already unbreakable)
execute if score #am_ench_level ec.var matches 4.. unless data storage evercraft:armor_mastery {item:{tier:"mythical"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"unbreaking",tag:"am_temp"}

# Ench 5+: Mending (skip for mythical — already unbreakable)
execute if score #am_ench_level ec.var matches 5.. unless data storage evercraft:armor_mastery {item:{tier:"mythical"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"mending",tag:"am_temp"}

# Ench 4+: Fire Protection (mythical gets this at 4 since it skips Unbreaking/Mending)
execute if score #am_ench_level ec.var matches 4.. if data storage evercraft:armor_mastery {item:{tier:"mythical"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"fire_protection",tag:"am_temp"}

# Ench 5+: Blast Protection (mythical gets this at 5)
execute if score #am_ench_level ec.var matches 5.. if data storage evercraft:armor_mastery {item:{tier:"mythical"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"blast_protection",tag:"am_temp"}

# Ench 6+: Projectile Protection (mythical gets this at 6)
execute if score #am_ench_level ec.var matches 6.. if data storage evercraft:armor_mastery {item:{tier:"mythical"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"projectile_protection",tag:"am_temp"}

# Ench 6+: Fire Protection (exquisite gets this at 6 — needs prestige)
execute if score #am_ench_level ec.var matches 6.. if data storage evercraft:armor_mastery {item:{tier:"exquisite"}} run function evercraft:mastery/set_enchant_if_higher {enchant:"fire_protection",tag:"am_temp"}
