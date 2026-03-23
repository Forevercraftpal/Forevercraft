# Glyphforge Effects — Tick (1s schedule)
# Applies attribute modifiers based on held glyphforged weapon
# OPT: Gate full apply to players holding glyphforged weapons only

execute unless entity @a run return run schedule function evercraft:glyphforge/effects/tick 1s

# OPT: Players holding a glyphforged weapon: tag + check in 1 pass (was 2 @a scans)
execute as @a if items entity @s weapon.mainhand *[custom_data~{glyphforge:1b}] run function evercraft:glyphforge/effects/activate

# Players who HAD glyphforge modifiers but swapped away: strip only (then untag)
execute as @a[tag=ec.rf_was_active,tag=!ec.rf_active] run function evercraft:glyphforge/effects/strip

# OPT: Hearthstone Glyph: Pet Warp Strike (3 @a scans → 1)
execute as @a[tag=ec.rf_active] if items entity @s weapon.mainhand *[custom_data~{rf_hearthstone:1b}] at @s run function evercraft:glyphforge/effects/hearthstone_tick

# Update state: current holders get was_active for next tick
tag @a[tag=ec.rf_was_active] remove ec.rf_was_active
tag @a[tag=ec.rf_active] add ec.rf_was_active
tag @a[tag=ec.rf_active] remove ec.rf_active

schedule function evercraft:glyphforge/effects/tick 1s
