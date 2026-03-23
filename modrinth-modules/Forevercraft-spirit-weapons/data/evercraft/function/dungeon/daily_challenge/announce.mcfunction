# Daily Challenge — 10am Announcement
# Triggered once per day when visual_time crosses the 10am window
# Builds flavor text from structure + modifier IDs, then broadcasts

# Mark as announced (prevent duplicates)
scoreboard players set #daily_challenge_announced ec.var 1

# Resolve flavor text for today's structure and modifier
function evercraft:dungeon/daily_challenge/flavor_structure
function evercraft:dungeon/daily_challenge/flavor_modifier

# Broadcast the combined message via macro
function evercraft:dungeon/daily_challenge/show with storage evercraft:daily_challenge flavor
