# Requires #wm_weapon_type to be pre-set by caller (classify_weapon or classify_weapon_slot)

# Calculate effective enchant level = weapon_level + prestige (cap 10)
scoreboard players operation #wm_ench_level ec.var = #wm_level ec.var
scoreboard players operation #wm_ench_level ec.var += #wm_prestige ec.var
execute if score #wm_ench_level ec.var matches 11.. run scoreboard players set #wm_ench_level ec.var 10

# Route to weapon-type-specific enchant function
# All enchants are applied to the hopper minecart item (wm_temp)
execute if score #wm_weapon_type ec.var matches 1 run function evercraft:weapon_mastery/enchants/sword
execute if score #wm_weapon_type ec.var matches 2 run function evercraft:weapon_mastery/enchants/axe
execute if score #wm_weapon_type ec.var matches 3 run function evercraft:weapon_mastery/enchants/pickaxe
execute if score #wm_weapon_type ec.var matches 4 run function evercraft:weapon_mastery/enchants/bow
execute if score #wm_weapon_type ec.var matches 5 run function evercraft:weapon_mastery/enchants/crossbow
execute if score #wm_weapon_type ec.var matches 6 run function evercraft:weapon_mastery/enchants/fishing_rod
execute if score #wm_weapon_type ec.var matches 7 run function evercraft:weapon_mastery/enchants/trident
execute if score #wm_weapon_type ec.var matches 8 run function evercraft:weapon_mastery/enchants/hoe
execute if score #wm_weapon_type ec.var matches 9 run function evercraft:weapon_mastery/enchants/shovel
execute if score #wm_weapon_type ec.var matches 10 run function evercraft:weapon_mastery/enchants/dagger
execute if score #wm_weapon_type ec.var matches 11 run function evercraft:weapon_mastery/enchants/shield
execute if score #wm_weapon_type ec.var matches 12 run function evercraft:weapon_mastery/enchants/sword
execute if score #wm_weapon_type ec.var matches 13 run function evercraft:weapon_mastery/enchants/spear
execute if score #wm_weapon_type ec.var matches 14 run function evercraft:weapon_mastery/enchants/mace
