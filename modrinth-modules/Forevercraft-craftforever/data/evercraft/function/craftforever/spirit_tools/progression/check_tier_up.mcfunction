# Spirit Tool Tier Progression — Check Tier-Up Eligibility
# Self-schedules every 100 ticks (5 seconds)

schedule function evercraft:craftforever/spirit_tools/progression/check_tier_up 100t

# For each player holding a spirit tool (tiers 1-6 only — tier 7 is max)
execute as @a[tag=ec.st_held,scores={ec.st_tier=1..6}] run function evercraft:craftforever/spirit_tools/progression/check_player
