# === CLAIM ENGINE — LOAD ===
# Universal claimable rewards infrastructure

# Per-player unclaimed counts (recomputed on codex open)
scoreboard objectives add ec.claim_bst dummy
scoreboard objectives add ec.claim_aff dummy
scoreboard objectives add ec.claim_prs dummy
scoreboard objectives add ec.claim_rm dummy
scoreboard objectives add ec.claim_cft dummy
scoreboard objectives add ec.claim_lore dummy
scoreboard objectives add ec.claim_biome dummy
scoreboard objectives add ec.claim_any dummy

# Previous total for notification system (detect new claimable rewards)
scoreboard objectives add ec.prev_claims dummy

# Last-shown claim count (suppress repeated tellraw spam)
scoreboard objectives add ec.claim_shw dummy

# Dedicated bulk-claim counter (avoids clobbering general-purpose ec.temp)
scoreboard objectives add ec.claim_cnt dummy

# Trigger for non-OP bulk claim (1=realm, 2=personal stages, 3=craftforever, 4=affinity, 5=lore, 6=biome)
scoreboard objectives add ec.bulk_clm trigger
scoreboard players enable @a ec.bulk_clm

# Lifetime claim counter (triggers auto-collect prompt at 10)
scoreboard objectives add ec.total_claims dummy

# Auto-collect preference (0=off/unset, 1=on, 2=declined)
scoreboard objectives add ec.auto_clm trigger
scoreboard players enable @a ec.auto_clm

# Schedule notification tick (check for new rewards every 60s)
schedule function evercraft:claim/notify_tick 1200t
