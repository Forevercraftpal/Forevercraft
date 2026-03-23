# Advantage Trees — Sync Stats (5s schedule)
# Reads vanilla auto-increment scoreboards and converts to advantage stat counters
# CRITICAL: Do NOT use per-centimeter advancement triggers — they fire hundreds of times/sec

schedule function evercraft:advantage/track/sync_stats 5s

# OPT: All stat syncs consolidated into 1 per-player call (was 8 @a scans)
execute as @a run function evercraft:advantage/track/sync_stats_player

# Block placement: tracked via placed_block advancement trigger (track_place.json)
# Quests, harvest, structure crates, pets: tracked via inline scoreboard increments
