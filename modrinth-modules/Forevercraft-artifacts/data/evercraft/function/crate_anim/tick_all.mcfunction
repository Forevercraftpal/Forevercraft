# Crate Animation System — Tick All Active Animations
# Called from tick.mcfunction only when animation entities exist (gated)

# Tick active animation entities (armor_stands with ec.crate_anim tag)
execute as @e[type=armor_stand,tag=ec.crate_anim,scores={ec.crate_plot=1..}] at @s run function evercraft:crate_anim/tick_entity
# Cleanup finished or orphaned animation entities
execute as @e[type=armor_stand,tag=ec.crate_anim,scores={ec.crate_plot=..0}] at @s run function evercraft:crate_anim/cleanup
# Ghost crate cleanup: kill orphaned item_displays that lost their armor_stand parent
execute as @e[type=item_display,tag=ec.crate_display] at @s unless entity @e[type=armor_stand,tag=ec.crate_anim,distance=..1] run kill @s
# Catches ec.crate_anim armor_stands with no ec.crate_plot score (fell through both selectors above)
execute as @e[type=armor_stand,tag=ec.crate_anim] at @s unless score @s ec.crate_plot matches -2147483648.. run function evercraft:crate_anim/cleanup
