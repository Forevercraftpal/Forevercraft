# Reaper — Hero of the Village (Peacemonger, renown >= 2000)
# Apply Hero of the Village effect, refreshed every 60s
# Run as peacemonger player
# NOTE: on_raid_victory is gated by rp.raiding tag (set when raid_omen is consumed near village)
# so this effect won't trigger false raid victories

# Level scales with tier: tier 2 = level 1, tier 3 = level 2, tier 4-5 = level 3
execute if score @s rp.tier matches 2 run effect give @s hero_of_the_village 90 0 true
execute if score @s rp.tier matches 3 run effect give @s hero_of_the_village 90 1 true
execute if score @s rp.tier matches 4..5 run effect give @s hero_of_the_village 90 2 true
