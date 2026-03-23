# Campfire Healing — Per-player check
# Scan for campfires nearby and place markers, then heal if in range

# Scan for campfires within ~6 blocks and place markers
function evercraft:campfire_heal/scan_nearby

# Heal if within 24 blocks of any campfire marker
execute if entity @e[type=marker,tag=ec.cf_heal,distance=..24] run function evercraft:campfire_heal/do_heal
