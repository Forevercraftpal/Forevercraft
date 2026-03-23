# World Boss System — Despawn (timeout after 15 minutes)

# Announce despawn (boss name)
function evercraft:bosses/announce_despawn with storage evercraft:bosses active

# Kill boss and minions
kill @e[tag=wb.boss]
kill @e[tag=wb.minion]

# Remove bossbar
bossbar remove evercraft:world_boss

# Reset global state
scoreboard players set #wb_active ec.var 0
scoreboard players set #wb_boss_id ec.var 0
scoreboard players set #wb_phase ec.var 0
scoreboard players set #wb_timer ec.var 0
scoreboard players set #wb_ability_cd ec.var 0

# Clear all boss-related player tags (fight timed out = consumed, no totem return)
tag @a remove wb.summoner
tag @a remove wb.natural_spawn
tag @a remove wb.participant
tag @a remove wb.last_hit
advancement revoke @a only evercraft:bosses/damage/dealt
scoreboard players set @a wb.range_warn 0

# Clear stale boss identity from storage
data remove storage evercraft:bosses active
