# Multiply treasure chances by enchantment bonus
# This creates temporary modified scores for the loot table to use

# Store original chances
scoreboard players operation @s ec.orig_common = @s ec.common_chance
scoreboard players operation @s ec.orig_rare = @s ec.rare_chance
scoreboard players operation @s ec.orig_epic = @s ec.epic_chance
scoreboard players operation @s ec.orig_mythical = @s ec.mythical_chance

# Calculate bonus amounts (base * bonus / 100)
scoreboard players operation @s ec.bonus_common = @s ec.common_chance
scoreboard players operation @s ec.bonus_common *= @s ec.enchant_bonus
scoreboard players operation @s ec.bonus_common /= #100 ec.constant

scoreboard players operation @s ec.bonus_rare = @s ec.rare_chance
scoreboard players operation @s ec.bonus_rare *= @s ec.enchant_bonus
scoreboard players operation @s ec.bonus_rare /= #100 ec.constant

scoreboard players operation @s ec.bonus_epic = @s ec.epic_chance
scoreboard players operation @s ec.bonus_epic *= @s ec.enchant_bonus
scoreboard players operation @s ec.bonus_epic /= #100 ec.constant

scoreboard players operation @s ec.bonus_mythical = @s ec.mythical_chance
scoreboard players operation @s ec.bonus_mythical *= @s ec.enchant_bonus
scoreboard players operation @s ec.bonus_mythical /= #100 ec.constant

# Add bonuses to chances
scoreboard players operation @s ec.common_chance += @s ec.bonus_common
scoreboard players operation @s ec.rare_chance += @s ec.bonus_rare
scoreboard players operation @s ec.epic_chance += @s ec.bonus_epic
scoreboard players operation @s ec.mythical_chance += @s ec.bonus_mythical
