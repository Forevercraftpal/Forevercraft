# Spirit Raids — Apply Raid Floor Scaling (macro)
# Adds +hp_pct% HP and +dmg_pct% DMG to all unscaled raid mobs

$execute as @e[tag=rd.mob,tag=!dg.scaled] run attribute @s minecraft:max_health modifier add rd_floor_hp $(hp_pct) add_multiplied_base
$execute as @e[tag=rd.mob,tag=!dg.scaled] run attribute @s minecraft:attack_damage modifier add rd_floor_dmg $(dmg_pct) add_multiplied_base
