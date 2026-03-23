# World Boss System — Load
# Called from init.mcfunction on datapack load

# Global state (stored on #wb_ fake players in ec.var)
# #wb_active = 0/1, #wb_boss_id = 1-11, #wb_hp_max = max HP
# #wb_phase = 1/2/3/4, #wb_timer = fight duration (seconds)
# #wb_ability_cd = ability cooldown ticks, #wb_p2_threshold, #wb_p3_threshold, #wb_p4_threshold
# #wb_season_cd = seasonal effect cooldown (seconds)

# Per-player cooldown (gametime-based)
scoreboard objectives add wb.cooldown dummy
scoreboard objectives add ach.boss_kills dummy

# Per-boss kill counters (for title milestones)
scoreboard objectives add wb.k1 dummy
scoreboard objectives add wb.k2 dummy
scoreboard objectives add wb.k3 dummy
scoreboard objectives add wb.k4 dummy
scoreboard objectives add wb.k5 dummy
scoreboard objectives add wb.k6 dummy
scoreboard objectives add wb.k7 dummy
scoreboard objectives add wb.k8 dummy
scoreboard objectives add wb.k9 dummy
scoreboard objectives add wb.k10 dummy
scoreboard objectives add wb.k11 dummy

# Active boss title selection (0=none, 1-45=title ID)
scoreboard objectives add wb.title dummy

# Biome mastery titles (bitfield + active selection)
scoreboard objectives add bm.titles dummy
scoreboard objectives add bm.title dummy

# Special titles: Dream Journal + Reputation (bitfield + active selection)
scoreboard objectives add ec.special_titles dummy
scoreboard objectives add ec.special_title dummy

# Boss Exclusive Item Catalog trigger
scoreboard objectives add wb.catalog trigger "Boss Catalog"

# Anti-range warning throttle (per-player, resets every 5s)
scoreboard objectives add wb.range_warn dummy

# Death detection (clears engagement on respawn so anti-range doesn't punish)
scoreboard objectives add wb.death deathCount

# Admin summon (boss ID selector)
scoreboard objectives add wb.admin_id dummy

# Initialize global state
scoreboard players set #wb_active ec.var 0
scoreboard players set #wb_boss_id ec.var 0
scoreboard players set #wb_phase ec.var 0
scoreboard players set #wb_timer ec.var 0
scoreboard players set #wb_ability_cd ec.var 0
scoreboard players set #wb_hp_max ec.var 0
scoreboard players set #wb_p2_threshold ec.var 0
scoreboard players set #wb_p3_threshold ec.var 0
scoreboard players set #wb_p4_threshold ec.var 0
scoreboard players set #wb_rage_threshold ec.var 0
scoreboard players set #wb_season_cd ec.var 0
scoreboard players set #wb_hp_scale ec.var 100
scoreboard players set #wb_dmg_scale ec.var 100
scoreboard players set #wb_player_kill ec.var 0
scoreboard players set #wb_missing ec.var 0

# Natural spawn timer (30-tick throttle counter)
scoreboard players set #wb_natural_timer ec.var 0

# Initialize natural spawn cooldown to current gametime (7-day timer starts fresh on load)
execute store result score #wb_natural_cd ec.var run time query gametime

# Boss name storage for announcements
data modify storage evercraft:bosses temp set value {}

# Load title teams (boss, biome mastery, special)
function evercraft:bosses/titles/load_teams
function evercraft:biome_mastery/titles/load_teams
function evercraft:titles/load_special_teams

# Bootstrap tick schedule
schedule function evercraft:bosses/tick 1s replace

# Safety cleanup: if a boss entity or bossbar survived from before reload,
# clean it up now (scoreboard state was just reset above, so tick can't do it)
kill @e[tag=wb.boss]
kill @e[tag=wb.minion]
bossbar remove evercraft:world_boss
tag @a remove wb.participant
tag @a remove wb.last_hit
tag @a remove wb.summoner
tag @a remove wb.natural_spawn

# Revoke all boss kill advancements — prevents stuck "granted" state after reload
# If reload happened mid-fight, the advancement may still be granted, blocking future triggers
advancement revoke @a only evercraft:bosses/kill/hollow_king
advancement revoke @a only evercraft:bosses/kill/verdant_warden
advancement revoke @a only evercraft:bosses/kill/stormforged
advancement revoke @a only evercraft:bosses/kill/tidecaller
advancement revoke @a only evercraft:bosses/kill/earthshaker
advancement revoke @a only evercraft:bosses/kill/nightmare
advancement revoke @a only evercraft:bosses/kill/infernal_titan
advancement revoke @a only evercraft:bosses/kill/soul_warden
advancement revoke @a only evercraft:bosses/kill/crimson_behemoth
advancement revoke @a only evercraft:bosses/kill/void_sovereign
advancement revoke @a only evercraft:bosses/kill/ender_architect
advancement revoke @a only evercraft:bosses/damage/dealt
advancement revoke @a only evercraft:bosses/damage/projectile
