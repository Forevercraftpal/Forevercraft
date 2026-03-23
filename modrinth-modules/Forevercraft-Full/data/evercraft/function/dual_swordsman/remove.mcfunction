# Dual Swordsman — Deactivation
# Run as @s when player no longer holds valid DS weapons

tag @s remove ec.ds_active
scoreboard players set @s ec.ds_active 0
scoreboard players set @s ec.ds_twin 0

# Remove attribute modifiers
attribute @s armor modifier remove evercraft:spirit_armor_penalty
attribute @s armor_toughness modifier remove evercraft:spirit_toughness_penalty
attribute @s attack_speed modifier remove evercraft:spirit_attack_speed
