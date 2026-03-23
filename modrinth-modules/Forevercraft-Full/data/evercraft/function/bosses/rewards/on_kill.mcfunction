# World Boss — Kill Reward Handler
# Called from any boss kill advancement (as the killing player)

# Revoke all boss kill advancements
advancement revoke @s only evercraft:bosses/kill/hollow_king
advancement revoke @s only evercraft:bosses/kill/verdant_warden
advancement revoke @s only evercraft:bosses/kill/stormforged
advancement revoke @s only evercraft:bosses/kill/tidecaller
advancement revoke @s only evercraft:bosses/kill/earthshaker
advancement revoke @s only evercraft:bosses/kill/nightmare
advancement revoke @s only evercraft:bosses/kill/infernal_titan
advancement revoke @s only evercraft:bosses/kill/soul_warden
advancement revoke @s only evercraft:bosses/kill/crimson_behemoth
advancement revoke @s only evercraft:bosses/kill/void_sovereign
advancement revoke @s only evercraft:bosses/kill/ender_architect

# Mark as player kill (prevents duplicate announcement from cleanup)
scoreboard players set #wb_player_kill ec.var 1

# Ensure the killer is marked as participant (in case advancement didn't fire)
tag @s add wb.participant

# Mark the killer for guaranteed artifact
tag @s add wb.last_hit

# === PERSONAL MILESTONE TRACKING ===
execute as @a[tag=wb.participant] run scoreboard players add @s ach.boss_kills 1

# ============================================================================
# DISTRIBUTE REWARDS TO ALL PARTICIPANTS
# Each participant gets: XP, crate loot, artifact chance, title check
# The last-hit player gets guaranteed artifact instead of 25% roll
# ============================================================================
execute as @a[tag=wb.participant] run function evercraft:bosses/rewards/give_participant

# Class Affinity XP — world boss kill (all participants)
scoreboard players set #delta ec.temp 90000
execute as @a[tag=wb.participant] run function evercraft:affinity/grant_current

# Campfire Stories — record boss kill (boss name set by boss system)
execute as @s run function evercraft:campfire_stories/record/boss_kill
function evercraft:briefing/log_event {msg:"A world boss was slain!"}

# Kill announcement (boss name + seasonal flavor)
function evercraft:bosses/rewards/announce_kill with storage evercraft:bosses active

# Companion memory: Against the Colossus (for all participants with active pets)
execute as @a[tag=companion.activepet] run function evercraft:companions/memories/on_boss_kill

# Realm milestone: check if 4+ players participated in this boss kill
scoreboard players set #rm_count_temp ec.var 0
execute as @a[tag=wb.participant] run scoreboard players add #rm_count_temp ec.var 1
execute if score #rm_count_temp ec.var matches 4.. run function evercraft:milestones/increment/party_boss_kill

# Cleanup participant tags
tag @a remove wb.participant
tag @a remove wb.last_hit
advancement revoke @a only evercraft:bosses/damage/dealt
