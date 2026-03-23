# Patron Bounty System — Load
# Quest board bounty hunts with guaranteed patron spawns

# Per-player scoreboards
scoreboard objectives add ec.bnt_tier dummy "Bounty Patron Tier"
scoreboard objectives add ec.bnt_biome dummy "Bounty Target Biome"
scoreboard objectives add ec.bnt_timer dummy "Bounty Timer (seconds)"
scoreboard objectives add ec.bnt_spawned dummy "Bounty Spawn State"
scoreboard objectives add ec.bnt_dist dummy "Bounty Distance"
scoreboard objectives add ec.bnt_kills dummy "Bounty Kills"
scoreboard objectives add ec.bnt_owner dummy "Bounty Owner ID"

# Bounty team (bright red)
team add ec.bounty_target "Bounty Target"
team modify ec.bounty_target color red

# Tick only runs when bounties are active (started by accept)
