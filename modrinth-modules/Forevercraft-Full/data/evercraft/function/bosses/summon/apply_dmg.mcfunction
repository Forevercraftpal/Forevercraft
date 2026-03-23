# World Boss — Apply DR/moon damage scaling modifier (macro)
# Expects $(dmg_pct) = float percentage bonus as decimal (e.g., 0.35 for +35%)
$attribute @s attack_damage modifier add evercraft:boss/scale $(dmg_pct) add_multiplied_base
