# Stormforged — Phase 3 Specifics
# Called as the boss entity, at boss position

# Summon lightning storm around boss
summon lightning_bolt ~3 ~ ~
summon lightning_bolt ~-3 ~ ~
summon lightning_bolt ~ ~ ~3
summon lightning_bolt ~ ~ ~-3

# Give fire resistance (immune to own lightning)
effect give @s fire_resistance infinite 0 true
