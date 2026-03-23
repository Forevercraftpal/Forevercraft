# Spirit Progression — Check Tier-Up Eligibility
# Self-schedules every 100 ticks (5 seconds)
# For each player with an active spirit weapon, check if they've completed all objectives for their current tier

schedule function evercraft:spirit/progression/check_tier_up 100t

# For each player holding a spirit artifact (tiers 1-6 only — tier 7 is max)
execute as @a[tag=ec.sp_active,scores={ec.sp_tier=1..6}] run function evercraft:spirit/progression/check_player