# ============================================================
# Inscription Stones — Load
# Init scoreboards and start effects tick loop
# ============================================================

scoreboard objectives add ec.inscr_count dummy
scoreboard objectives add ec.inscr_guild_count dummy "Guild Zone Stones"
scoreboard objectives add ec.inscr_home_count dummy "Home Zone Stones"
scoreboard objectives add ec.inscr_owner dummy "Stone Owner ID"
scoreboard objectives add ec.inscr_glyph dummy "Glyph Type ID"

# Clear stale tags that may survive a /reload (scheduled cleanup is lost on reload)
tag @a remove ec.inscr_placing
tag @a remove ec.inscr_restore

# Start the effects/particles/break-check loop (5 seconds)
schedule function evercraft:inscription/effects_tick 100t
