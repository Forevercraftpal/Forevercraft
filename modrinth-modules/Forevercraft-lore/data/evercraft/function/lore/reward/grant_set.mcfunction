# Lore Reward: Grant all rewards for completing a set (macro)
# ec.lore_rarity has rarity (1-6). temp.set_meta has full set data.

# 1. Apply permanent Dream Rate modifier
function evercraft:lore/reward/apply_dr with storage evercraft:lore temp

# 2. Give XP levels based on rarity
execute if score @s ec.lore_rarity matches 1 run xp add @s 3 levels
execute if score @s ec.lore_rarity matches 2 run xp add @s 5 levels
execute if score @s ec.lore_rarity matches 3 run xp add @s 10 levels
execute if score @s ec.lore_rarity matches 4 run xp add @s 15 levels
execute if score @s ec.lore_rarity matches 5 run xp add @s 25 levels
execute if score @s ec.lore_rarity matches 6 run xp add @s 50 levels

# 3. Give crate based on rarity
function evercraft:lore/reward/give_crate

# 4. Announce set completion with set name from storage
tellraw @a [{"text":"[Lore] ","color":"gold"},{"selector":"@s","color":"yellow"},{"text":" completed the ","color":"yellow"},{"nbt":"temp.set_meta.name","storage":"evercraft:lore","color":"green","bold":true},{"text":" lore set!","color":"yellow"}]
