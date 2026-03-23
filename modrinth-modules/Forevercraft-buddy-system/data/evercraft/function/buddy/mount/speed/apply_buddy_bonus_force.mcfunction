# Buddy Mount Speed — Force Re-apply (after breath)
# @s = buddy mount entity

# Remove old modifier if present, then re-add
attribute @s movement_speed modifier remove evercraft:buddy_mount_speed

# Normal buddy mounts: 2x speed
execute unless entity @s[type=minecraft:happy_ghast] run attribute @s movement_speed modifier add evercraft:buddy_mount_speed 1.0 add_multiplied_base

# Happy ghast: 3x speed
execute if entity @s[type=minecraft:happy_ghast] run attribute @s movement_speed modifier add evercraft:buddy_mount_speed 2.0 add_multiplied_base
