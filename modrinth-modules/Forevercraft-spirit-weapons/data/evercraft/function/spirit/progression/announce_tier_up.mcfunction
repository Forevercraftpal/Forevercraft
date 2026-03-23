# Spirit Progression — Server-Wide Tier-Up Announcement
# Run as: player who just tiered up
# Uses weapon ID + new tier to construct the announcement

# Store tier color for announcement
data modify storage evercraft:temp tier_name set value "Common"
data modify storage evercraft:temp tier_color set value "white"
execute if score @s ec.sp_tier matches 2 run data modify storage evercraft:temp tier_name set value "Uncommon"
execute if score @s ec.sp_tier matches 2 run data modify storage evercraft:temp tier_color set value "green"
execute if score @s ec.sp_tier matches 3 run data modify storage evercraft:temp tier_name set value "Rare"
execute if score @s ec.sp_tier matches 3 run data modify storage evercraft:temp tier_color set value "aqua"
execute if score @s ec.sp_tier matches 4 run data modify storage evercraft:temp tier_name set value "Ornate"
execute if score @s ec.sp_tier matches 4 run data modify storage evercraft:temp tier_color set value "dark_purple"
execute if score @s ec.sp_tier matches 5 run data modify storage evercraft:temp tier_name set value "Exquisite"
execute if score @s ec.sp_tier matches 5 run data modify storage evercraft:temp tier_color set value "gold"
execute if score @s ec.sp_tier matches 6 run data modify storage evercraft:temp tier_name set value "Mythical"
execute if score @s ec.sp_tier matches 6 run data modify storage evercraft:temp tier_color set value "light_purple"
execute if score @s ec.sp_tier matches 7 run data modify storage evercraft:temp tier_name set value "Spirit"
execute if score @s ec.sp_tier matches 7 run data modify storage evercraft:temp tier_color set value "light_purple"

# Route by weapon ID to announcement with correct weapon name+color
execute if score @s ec.sp_weapon matches 1 run function evercraft:spirit/progression/announce/hollow_fangs with storage evercraft:temp
execute if score @s ec.sp_weapon matches 2 run function evercraft:spirit/progression/announce/voidpiercer with storage evercraft:temp
execute if score @s ec.sp_weapon matches 3 run function evercraft:spirit/progression/announce/firebrand with storage evercraft:temp
execute if score @s ec.sp_weapon matches 4 run function evercraft:spirit/progression/announce/zephyr_edge with storage evercraft:temp
execute if score @s ec.sp_weapon matches 5 run function evercraft:spirit/progression/announce/nite with storage evercraft:temp
execute if score @s ec.sp_weapon matches 6 run function evercraft:spirit/progression/announce/whispering_spear with storage evercraft:temp
execute if score @s ec.sp_weapon matches 7 run function evercraft:spirit/progression/announce/ashcrown_mace with storage evercraft:temp
execute if score @s ec.sp_weapon matches 8 run function evercraft:spirit/progression/announce/ellegaard_trident with storage evercraft:temp
execute if score @s ec.sp_weapon matches 9 run function evercraft:spirit/progression/announce/pharaoh_fist with storage evercraft:temp
execute if score @s ec.sp_weapon matches 10 run function evercraft:spirit/progression/announce/lifewoven_branch with storage evercraft:temp
execute if score @s ec.sp_weapon matches 11 run function evercraft:spirit/progression/announce/sabrewing with storage evercraft:temp
execute if score @s ec.sp_weapon matches 12 run function evercraft:spirit/progression/announce/dragonheart_sword with storage evercraft:temp
execute if score @s ec.sp_weapon matches 13 run function evercraft:spirit/progression/announce/bulwark_shield with storage evercraft:temp
execute if score @s ec.sp_weapon matches 14 run function evercraft:spirit/progression/announce/royal_trident with storage evercraft:temp