# Thornmaw — Primal Fusion Expire
# Remove fusion buffs when timer runs out

# Remove scale modifier
attribute @s scale modifier remove evercraft:primal_fusion

# Remove tag
tag @s remove ec.sp_fused

# VFX
particle poof ~ ~1 ~ 0.4 0.6 0.4 0.05 15

# SFX
playsound minecraft:entity.illusioner.mirror_move player @a ~ ~ ~ 0.8 1.2

title @s actionbar [{"text":"Primal Fusion faded...","color":"gray","italic":true}]
