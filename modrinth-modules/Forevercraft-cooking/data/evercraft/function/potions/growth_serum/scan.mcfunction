# Growth Serum — Scan unchecked area_effect_clouds
# OPT: Single entity pass — tag + conditionally apply in one function call
execute as @e[type=area_effect_cloud,tag=!ec.growth_checked] run function evercraft:potions/growth_serum/check_cloud
