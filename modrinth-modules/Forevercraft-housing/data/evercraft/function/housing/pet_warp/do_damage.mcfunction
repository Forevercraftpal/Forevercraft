# Home Pet Warp Strike — Apply Damage (Macro)
# Called with storage evercraft:pet_warp {damage: <int>}
$damage @e[tag=hs.warp_target,limit=1] $(damage) minecraft:mob_attack by @s
