# === CRATE ANIMATION SYSTEM ===
# OPT: Gate entire block — skip all 4 entity scans when no animations are active
execute if entity @e[type=armor_stand,tag=ec.crate_anim,limit=1] run function evercraft:crate_anim/tick_all
