# Buddy Mount Speed — Apply Buddy Bonus
# @s = mount entity that is a buddy
# Called when player starts riding a buddy mount
# 2x speed for most mounts, 3x for happy ghast

# Skip if already applied
execute if entity @s[tag=ec.bd_speed_applied] run return fail

# Normal buddy mounts: 2x speed (add_multiplied_base: 1.0 = +100%)
execute unless entity @s[type=minecraft:happy_ghast] run attribute @s movement_speed modifier add evercraft:buddy_mount_speed 1.0 add_multiplied_base

# Happy ghast: 3x speed (add_multiplied_base: 2.0 = +200%)
execute if entity @s[type=minecraft:happy_ghast] run attribute @s movement_speed modifier add evercraft:buddy_mount_speed 2.0 add_multiplied_base

tag @s add ec.bd_speed_applied
