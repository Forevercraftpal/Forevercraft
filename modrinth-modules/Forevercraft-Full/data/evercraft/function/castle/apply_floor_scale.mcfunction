# Infinite Castle — Apply Floor Scaling (macro)
# Floor HP% and DMG% passed as doubles from storage
$execute as @e[tag=ic.mob,tag=!ic.scaled] run attribute @s minecraft:max_health modifier add ic_floor_hp $(floor_hp) add_multiplied_base
$execute as @e[tag=ic.mob,tag=!ic.scaled] run attribute @s minecraft:attack_damage modifier add ic_floor_dmg $(floor_dmg) add_multiplied_base
