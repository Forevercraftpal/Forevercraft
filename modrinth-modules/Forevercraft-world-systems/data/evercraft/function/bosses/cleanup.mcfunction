# World Boss System — Cleanup
# Called when boss dies, despawns, or is missing

# ============================================================================
# FALLBACK REWARD: If boss died but kill advancement didn't fire (entity removed
# before trigger processed, NBT mismatch, etc.), distribute rewards to participants.
# This runs BEFORE cleanup resets boss_id and participant tags.
# ============================================================================
execute unless score #wb_player_kill ec.var matches 1 if entity @a[tag=wb.participant] if score #wb_boss_id ec.var matches 1.. run function evercraft:bosses/rewards/fallback_rewards

# Kill boss and all minions (boss may already be dead from player kill)
kill @e[tag=wb.boss]
kill @e[tag=wb.minion]

# Remove bossbar
bossbar remove evercraft:world_boss

# Seasonal cleanup (remove placed blocks, seasonal modifiers)
function evercraft:bosses/seasonal/cleanup

# Reset global state
scoreboard players set #wb_active ec.var 0
scoreboard players set #wb_boss_id ec.var 0
scoreboard players set #wb_phase ec.var 0
scoreboard players set #wb_timer ec.var 0
scoreboard players set #wb_ability_cd ec.var 0
scoreboard players set #wb_season_cd ec.var 0
scoreboard players set #wb_missing ec.var 0

# Clear all boss-related player tags
tag @a remove wb.summoner
tag @a remove wb.natural_spawn
tag @a remove wb.participant
tag @a remove wb.last_hit

# Revoke participation advancement (prevents stale triggers)
advancement revoke @a only evercraft:bosses/damage/dealt
advancement revoke @a only evercraft:bosses/damage/projectile

# Clear anti-range state
scoreboard players set @a wb.range_warn 0

# Announce (skip if player killed it — on_kill handles that message)
execute unless score #wb_player_kill ec.var matches 1 run function evercraft:bosses/announce_fade with storage evercraft:bosses active

# Reset kill flag
scoreboard players set #wb_player_kill ec.var 0

# Clear stale boss identity from storage (prevents ghost reads after fight ends)
data remove storage evercraft:bosses active
