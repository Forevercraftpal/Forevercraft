# Infinite Castle — Milestone Rewards (every 10 floors)
# Run when #ic_floor is divisible by 10
# Rewards scale with floor number

# Per-player reward distribution
execute as @a[tag=ic.player] at @s run function evercraft:castle/reward_milestone_player
