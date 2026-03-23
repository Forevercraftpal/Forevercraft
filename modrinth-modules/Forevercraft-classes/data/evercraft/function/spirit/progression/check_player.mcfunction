# Spirit Progression — Check Single Player's Objectives
# Run as: player with active spirit weapon, tier 1-6
# Routes to weapon-specific objective check based on weapon ID and current tier

# Reset objective counter
scoreboard players set @s ec.sp_obj_done 0

# Route by weapon to its tier-specific objective check
# Each weapon's tier file increments ec.sp_obj_done for each completed objective
execute if score @s ec.sp_weapon matches 1 run function evercraft:spirit/progression/objectives/hollow_fangs/check
execute if score @s ec.sp_weapon matches 2 run function evercraft:spirit/progression/objectives/voidpiercer/check

execute if score @s ec.sp_weapon matches 3 run function evercraft:spirit/progression/objectives/firebrand/check
execute if score @s ec.sp_weapon matches 4 run function evercraft:spirit/progression/objectives/zephyr_edge/check
execute if score @s ec.sp_weapon matches 5 run function evercraft:spirit/progression/objectives/nite/check
execute if score @s ec.sp_weapon matches 6 run function evercraft:spirit/progression/objectives/whispering_spear/check
execute if score @s ec.sp_weapon matches 7 run function evercraft:spirit/progression/objectives/ashcrown_mace/check
execute if score @s ec.sp_weapon matches 8 run function evercraft:spirit/progression/objectives/ellegaard_trident/check
execute if score @s ec.sp_weapon matches 9 run function evercraft:spirit/progression/objectives/pharaoh_fist/check
execute if score @s ec.sp_weapon matches 10 run function evercraft:spirit/progression/objectives/lifewoven_branch/check
execute if score @s ec.sp_weapon matches 11 run function evercraft:spirit/progression/objectives/sabrewing/check
execute if score @s ec.sp_weapon matches 12 run function evercraft:spirit/progression/objectives/dragonheart_sword/check
execute if score @s ec.sp_weapon matches 13 run function evercraft:spirit/progression/objectives/bulwark_shield/check
execute if score @s ec.sp_weapon matches 14 run function evercraft:spirit/progression/objectives/royal_trident/check

# After objective check, determine required count for current tier
# Tier 1→2: 5, Tier 2→3: 6, Tier 3→4: 7, Tier 4→5: 8, Tier 5→6: 9, Tier 6→7: 10
scoreboard players set #sp_required ec.var 0
execute if score @s ec.sp_tier matches 1 run scoreboard players set #sp_required ec.var 5
execute if score @s ec.sp_tier matches 2 run scoreboard players set #sp_required ec.var 6
execute if score @s ec.sp_tier matches 3 run scoreboard players set #sp_required ec.var 7
execute if score @s ec.sp_tier matches 4 run scoreboard players set #sp_required ec.var 8
execute if score @s ec.sp_tier matches 5 run scoreboard players set #sp_required ec.var 9
execute if score @s ec.sp_tier matches 6 run scoreboard players set #sp_required ec.var 10

# If objectives done >= required → tier up!
execute if score @s ec.sp_obj_done >= #sp_required ec.var run function evercraft:spirit/progression/tier_up