# Longinus — Apply holy pierce to target
# Runs as the hurt entity

# Bonus damage
damage @s 5 evercraft:bonus_strike

# Visual: holy gold burst
execute at @s run particle enchant ~ ~1 ~ 0.3 0.8 0.3 1 15
execute at @s run particle totem_of_undying ~ ~0.5 ~ 0.2 0.3 0.2 0.1 8

# Sound: enchantment pulse
execute at @s run playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 0.6 1.5
