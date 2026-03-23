# Tamed Animal Protection — tag tamed animals for protection + healer systems
# Self-schedules every 5s — new tamed animals are picked up on next cycle
# Tag-gated: only scans NBT on unprocessed entities (zero cost after first pass)

schedule function evercraft:tamed_protection/tick 5s

execute unless entity @a run return 0

# Find untamed-tagged tameable mobs with an Owner (= tamed) and mark them
execute as @e[type=#evercraft:tameable_companions,tag=!ec.tame_protected] if data entity @s Owner run tag @s add ec.tame_protected
