# Inscription Stone — Gold Greed
# +0.25 Dream Rate to players within 12 blocks (via luck attribute modifier)
# Remove first to prevent stacking from same stone, then re-add
execute as @a[distance=..12] run attribute @s luck modifier remove evercraft:inscr_gold_greed
execute as @a[distance=..12] run attribute @s luck modifier add evercraft:inscr_gold_greed 0.25 add_value
