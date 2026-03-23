# Lore Reward: Apply permanent Dream Rate modifier (macro)
# Unique modifier ID per set: evercraft:lore_set_{N}
# Values: Common +0.25, Uncommon +0.35, Rare +0.50, Ornate +0.65, Exquisite +0.80, Mythical +1.00

$execute if score @s ec.lore_rarity matches 1 run attribute @s luck modifier add evercraft:lore_set_$(set_idx) 0.25 add_value
$execute if score @s ec.lore_rarity matches 2 run attribute @s luck modifier add evercraft:lore_set_$(set_idx) 0.35 add_value
$execute if score @s ec.lore_rarity matches 3 run attribute @s luck modifier add evercraft:lore_set_$(set_idx) 0.50 add_value
$execute if score @s ec.lore_rarity matches 4 run attribute @s luck modifier add evercraft:lore_set_$(set_idx) 0.65 add_value
$execute if score @s ec.lore_rarity matches 5 run attribute @s luck modifier add evercraft:lore_set_$(set_idx) 0.80 add_value
$execute if score @s ec.lore_rarity matches 6 run attribute @s luck modifier add evercraft:lore_set_$(set_idx) 1.00 add_value
