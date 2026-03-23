# Inscription Stone — Guardian
# +2 Armor to players within 12 blocks (via attribute modifier)
execute as @a[distance=..12] run attribute @s armor modifier remove evercraft:inscr_guardian
execute as @a[distance=..12] run attribute @s armor modifier add evercraft:inscr_guardian 2 add_value
