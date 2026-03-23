# Unknown Structure Dungeon — Passive scan (every 2s)
# Detects players holding a Dungeon Key near unknown structures with crate markers

# Early exit if no players
execute unless entity @a run return run schedule function evercraft:dungeon/unknown/scan 2s

# Check all players holding a Dungeon Key in main hand
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{dungeon_key:true}}}}] at @s run function evercraft:dungeon/unknown/scan_player

# Reschedule
schedule function evercraft:dungeon/unknown/scan 2s
