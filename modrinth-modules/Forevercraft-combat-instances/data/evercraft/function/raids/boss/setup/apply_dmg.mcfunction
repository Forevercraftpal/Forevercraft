# Spirit Raids — Apply damage scaling modifier (macro)
# Expects $(dmg_pct) as double percentage (e.g., 0.50 = +50%)
$attribute @s attack_damage modifier add evercraft:raid_boss/scaling $(dmg_pct) add_multiplied_base
