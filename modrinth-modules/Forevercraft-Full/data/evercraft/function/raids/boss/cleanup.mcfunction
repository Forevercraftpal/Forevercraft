# Spirit Raids — Boss Cleanup (called after death, timeout, or wipe)
# Removes all raid entities, bossbars, and resets state

# Kill all raid entities
kill @e[tag=ec.rd_boss]
kill @e[tag=ec.rd_minion]
kill @e[tag=ec.rd_tendril]
kill @e[tag=ec.rd_fake]
kill @e[tag=ec.rd_proj]
kill @e[tag=ec.rd_well]
kill @e[tag=ec.rd_bubble]
kill @e[tag=ec.rd_totem]
kill @e[tag=ec.rd_tornado]
kill @e[tag=ec.rd_crystal]
kill @e[tag=ec.rd_eye]
kill @e[tag=ec.rd_portal]
kill @e[tag=ec.rd_mirror]

# Group B entities
kill @e[tag=ec.rd_mechanic]
kill @e[tag=ec.rd_puzzle]
kill @e[tag=ec.rd_al_spawner]
kill @e[tag=ec.rd_al_blaze]
kill @e[tag=ec.rd_al_lantern]
kill @e[tag=ec.rd_al_safe]
kill @e[tag=ec.rd_al_anchor]
kill @e[tag=ec.rd_lv_whirlpool]
kill @e[tag=ec.rd_ep_mummy]
kill @e[tag=ec.rd_vw_spider]
kill @e[tag=ec.rd_vw_egg]
kill @e[tag=ec.rd_dc_wall_pos]
kill @e[tag=ec.rd_mw_core]
kill @e[tag=ec.rd_mw_gate]
kill @e[tag=ec.rd_cb_pillar]
kill @e[tag=ec.rd_cb_banner]

# Remove bossbar
bossbar remove evercraft:raid_boss

# Remove player tags
tag @a remove ec.rd_participant

# Reset global state
scoreboard players set #rd_boss_alive ec.var 0
scoreboard players set #rd_active ec.var 0
scoreboard players set #rd_boss_id ec.var 0
scoreboard players set #rd_boss_phase ec.var 0
scoreboard players set #rd_timer ec.var 0
scoreboard players set #rd_phase_lock ec.var 0

# Clear per-player raid scoreboards
scoreboard players set @a rd.gold 0
scoreboard players set @a rd.antidote 0
scoreboard players set @a ec.rd_zone_tick 0
scoreboard players set @a ec.rd_wind_tick 0
scoreboard players set @a ec.rd_totem_tick 0

# Clear dimension effects from Gatekeeper
effect clear @a jump_boost
