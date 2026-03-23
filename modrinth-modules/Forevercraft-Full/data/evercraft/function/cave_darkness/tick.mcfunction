# Cave Darkness — 1s self-schedule
# Below Y=16, block light ≤ 3, no night vision → apply darkness

# Gate: skip if no players online
execute unless entity @a run return run schedule function evercraft:cave_darkness/tick 1s

schedule function evercraft:cave_darkness/tick 1s

# OPT: Single @a pass — predicate checks done once per player, then branch internally
# (was 4 separate @a scans with same gamemode filter + 2 predicate evals each)
execute as @a[gamemode=!creative,gamemode=!spectator] at @s if predicate evercraft:in_overworld if predicate evercraft:cave_darkness/is_dark_cave run function evercraft:cave_darkness/tick_player
