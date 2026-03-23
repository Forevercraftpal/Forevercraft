# Dungeon Instance System — Reward Dispatcher
# Runs per-player reward logic so each player gets their own DR-based tier
execute as @a[tag=dg.player] at @s run function evercraft:dungeon/reward_player
