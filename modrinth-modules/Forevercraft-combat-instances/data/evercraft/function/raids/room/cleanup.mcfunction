# Spirit Raids — Room Cleanup
# Removes all raid entities and clears the arena

# Kill all raid-related entities
kill @e[tag=rd.mob]
kill @e[tag=rd.center]
kill @e[tag=ec.rd_boss]
kill @e[tag=ec.rd_minion]
kill @e[tag=ec.rd_tendril]
kill @e[tag=ec.rd_fake]
kill @e[tag=ec.rd_proj]
kill @e[tag=ec.rd_mechanic]
kill @e[tag=ec.rd_puzzle]

# Kill boss-specific entities
kill @e[tag=ec.rd_al_spawner]
kill @e[tag=ec.rd_al_anchor]
kill @e[tag=ec.rd_al_lantern]
kill @e[tag=ec.rd_lv_whirlpool]
kill @e[tag=ec.rd_ep_mummy]
kill @e[tag=ec.rd_vw_spider]
kill @e[tag=ec.rd_vw_egg]
kill @e[tag=ec.rd_dc_wall_pos]
kill @e[tag=ec.rd_mw_core]
kill @e[tag=ec.rd_mw_gate]
kill @e[tag=ec.rd_cb_pillar]
kill @e[tag=ec.rd_cb_banner]

# Clear the arena (fill with air)
execute in minecraft:overworld run fill -26 400 -26 26 411 26 minecraft:air

# Remove bossbar
bossbar remove evercraft:raid_boss

# Remove raid tags from players
tag @a remove rd.player
tag @a remove ec.rd_participant
tag @a remove rd.voted

# Reset all raid state
scoreboard players set #rd_active ec.var 0
scoreboard players set #rd_floor ec.var 0
scoreboard players set #rd_wave ec.var 0
scoreboard players set #rd_timer ec.var 0
scoreboard players set #rd_boss_alive ec.var 0
scoreboard players set #rd_boss_phase ec.var 0
scoreboard players set #rd_boss_id ec.var 0
scoreboard players set #rd_vote_active ec.var 0
scoreboard players set #rd_players ec.var 0
scoreboard players set #rd_phase_lock ec.var 0
scoreboard players set #rd_ability_cd ec.var 0
scoreboard players set #rd_dc_timer ec.var 0
