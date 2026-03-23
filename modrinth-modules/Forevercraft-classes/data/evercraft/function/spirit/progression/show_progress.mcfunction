# Spirit Progression — Show Progress Display
# Run as: player holding spirit weapon
# Displays current tier objectives with completion status

# Header line — route by weapon for name
execute if score @s ec.sp_weapon matches 1 run function evercraft:spirit/progression/display/hollow_fangs
execute if score @s ec.sp_weapon matches 2 run function evercraft:spirit/progression/display/voidpiercer
execute if score @s ec.sp_weapon matches 3 run function evercraft:spirit/progression/display/firebrand
execute if score @s ec.sp_weapon matches 4 run function evercraft:spirit/progression/display/zephyr_edge
execute if score @s ec.sp_weapon matches 5 run function evercraft:spirit/progression/display/nite
execute if score @s ec.sp_weapon matches 6 run function evercraft:spirit/progression/display/whispering_spear
execute if score @s ec.sp_weapon matches 7 run function evercraft:spirit/progression/display/ashcrown_mace
execute if score @s ec.sp_weapon matches 8 run function evercraft:spirit/progression/display/ellegaard_trident
execute if score @s ec.sp_weapon matches 9 run function evercraft:spirit/progression/display/pharaoh_fist
execute if score @s ec.sp_weapon matches 10 run function evercraft:spirit/progression/display/lifewoven_branch
execute if score @s ec.sp_weapon matches 11 run function evercraft:spirit/progression/display/sabrewing
execute if score @s ec.sp_weapon matches 12 run function evercraft:spirit/progression/display/dragonheart_sword
execute if score @s ec.sp_weapon matches 13 run function evercraft:spirit/progression/display/bulwark_shield
execute if score @s ec.sp_weapon matches 14 run function evercraft:spirit/progression/display/royal_trident
