# Spirit Tool Tier Progression — Load
scoreboard objectives add ec.st_tier dummy "ST Tool Tier"
scoreboard objectives add ec.st_obj_done dummy "ST Objectives Done"
scoreboard objectives add ec.st_eff dummy "ST Effectiveness"
scoreboard objectives add ec.st_boosted dummy "ST Forge Boost Active"

# Grand Forge completion flag
scoreboard objectives add ec.gf_done dummy "Grand Forge Done"

# Start self-scheduling tier check (every 100 ticks / 5 seconds)
schedule function evercraft:craftforever/spirit_tools/progression/check_tier_up 100t replace
