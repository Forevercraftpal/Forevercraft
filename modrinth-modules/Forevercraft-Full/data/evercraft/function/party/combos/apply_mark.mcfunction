# Apply Marked for Death to a mob
# Run as the target mob

tag @s add ec.party_marked
effect give @s minecraft:glowing 10 0 true
# Mark despawn timer (10s = 200 ticks, tracked by tag removal in party tick)
scoreboard players set @s ec.temp 200
