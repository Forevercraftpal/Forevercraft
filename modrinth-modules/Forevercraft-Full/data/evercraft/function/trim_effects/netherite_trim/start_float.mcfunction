# Netherite Float — Activated by sneaking with full set

# Remove slow fall gravity modifiers
attribute @s minecraft:gravity modifier remove evercraft:netherite_head_grav
attribute @s minecraft:gravity modifier remove evercraft:netherite_chest_grav
attribute @s minecraft:gravity modifier remove evercraft:netherite_legs_grav
attribute @s minecraft:gravity modifier remove evercraft:netherite_feet_grav

# Apply strong negative gravity to float UP
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_head run attribute @s minecraft:gravity modifier add evercraft:netherite_float_head -0.04 add_value
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_chest run attribute @s minecraft:gravity modifier add evercraft:netherite_float_chest -0.04 add_value
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_legs run attribute @s minecraft:gravity modifier add evercraft:netherite_float_legs -0.04 add_value
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_feet run attribute @s minecraft:gravity modifier add evercraft:netherite_float_feet -0.04 add_value

tag @s add netherite_floating
