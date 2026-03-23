# Pharaoh's Fist — Golden Glow Deactivate
# Kill combo dropped below threshold

tag @s remove ec.sp_golden_glow

# Remove damage modifier
attribute @s attack_damage modifier remove evercraft:golden_glow

# Remove glowing
effect clear @s glowing

# VFX
particle poof ~ ~1 ~ 0.3 0.5 0.3 0.05 8
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.5 0.5

title @s actionbar [{"text":"Golden Glow faded...","color":"gray","italic":true}]
