# Biome Mastery — Apply Dream Rate modifier based on mastery level
# @s = player, ec.bm_level = current biome mastery level (0-5)

# Remove existing modifier
attribute @s luck modifier remove evercraft:biome_mastery_dr

# Apply based on level (Level 2+: +0.1, Level 3+: +0.1, Level 4+: +0.35, Level 5: +0.5)
execute if score @s ec.bm_level matches 2 run attribute @s luck modifier add evercraft:biome_mastery_dr 0.1 add_value
execute if score @s ec.bm_level matches 3 run attribute @s luck modifier add evercraft:biome_mastery_dr 0.1 add_value
execute if score @s ec.bm_level matches 4 run attribute @s luck modifier add evercraft:biome_mastery_dr 0.35 add_value
execute if score @s ec.bm_level matches 5.. run attribute @s luck modifier add evercraft:biome_mastery_dr 0.5 add_value
