# Unknown Structure Dungeon — Check position-based 2-week lockout
# Run as: player, at player position
# Sets #dg_unknown_locked ec.var to 1 if locked out, 0 if clear

scoreboard players set #dg_unknown_locked ec.var 0

# Tag self so the marker check can find us for UUID comparison
tag @s add dg.checking_unknown

# Find any lockout markers within 48 blocks and compare UUID + time
execute as @e[type=marker,tag=dg.unknown_looted,distance=..48] run function evercraft:dungeon/unknown/check_lockout_marker

tag @s remove dg.checking_unknown
