# On Join — Compute dream rate, show unified briefing, initialize player systems
# @s = player, at @s context


# === Compute dream rate (scores used by briefing/show) ===
# Get total dream rate (scale 10 for decimal display)
execute store result score @s ec.temp run attribute @s luck get 10

# Calculate whole and decimal parts
scoreboard players operation @s ec.var = @s ec.temp
scoreboard players set #10 ec.const 10
scoreboard players operation @s ec.var /= #10 ec.const
scoreboard players operation #dec ec.temp = @s ec.temp
scoreboard players operation #dec ec.temp %= #10 ec.const

# Fix negative decimals: ensure decimal part is always positive for display
# e.g., -5 % 10 = -5 in Minecraft, but we want to show -0.5 not -0.-5
scoreboard players set #-1 ec.var -1
execute if score #dec ec.temp matches ..-1 run scoreboard players operation #dec ec.temp *= #-1 ec.var


# === Daily Login Gift ===
function evercraft:world/daily_gift


# === Show unified join briefing ===
function evercraft:briefing/show

playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 0.3 1.5


# === Initialize player systems ===
function evercraft:advantage/init_player
function evercraft:advantage/effects/reapply_all

# Initialize RPG health bar (claim/reassign boss bar slot)
function evercraft:health_bar/join


# === ENABLE ALL TRIGGER SCOREBOARDS (OPT — moved from per-tick enable @a) ===
# Core triggers
scoreboard players enable @s ach.progress
scoreboard players enable @s ec.dreams
scoreboard players enable @s ec.dr_history
scoreboard players enable @s ec.moon
scoreboard players enable @s ec.loot_timer
scoreboard players enable @s ec.stats
scoreboard players enable @s ec.healthbar
scoreboard players enable @s ec.codex
scoreboard players enable @s ec.codex_combine
scoreboard players enable @s ec.ncore
scoreboard players enable @s ec.codex_tp
scoreboard players enable @s ec.quest
scoreboard players enable @s ec.lore_add
scoreboard players enable @s ec.lore_map
scoreboard players enable @s ec.wake
scoreboard players enable @s ec.quest_track
scoreboard players enable @s ec.notify_lvl
scoreboard players enable @s ec.ready
scoreboard players enable @s ec.bm_quicksell
scoreboard players enable @s ec.biome_mastery
scoreboard players enable @s ec.milestones
scoreboard players enable @s ec.duel
scoreboard players enable @s ec.pd
scoreboard players enable @s ec.h2h
scoreboard players enable @s ec.party
scoreboard players enable @s wb.catalog
scoreboard players enable @s ec.tomb_accept
scoreboard players enable @s ec.tomb_deny
scoreboard players enable @s tx.dep_conf
scoreboard players enable @s ec.ge_event_tp
scoreboard players enable @s ec.diff_trigger
scoreboard players enable @s ec.sr_prompt
scoreboard players enable @s ec.newcomer_pick
scoreboard players enable @s ec.bulk_clm
scoreboard players enable @s bs.claim
scoreboard players enable @s ec.sp_meta
scoreboard players enable @s ec.sp_prog
scoreboard players enable @s ec.sp_trade
scoreboard players enable @s ec.bd_confirm

# Apply expedition buff if active
execute if score #expedition_activity ec.var matches 1.. if score @s ec.guild_id matches 1.. run function evercraft:guild/expedition/apply_buff
# Trim triggers
scoreboard players enable @s update_trim_ability
scoreboard players enable @s wild_wolves
scoreboard players enable @s panda_genes
scoreboard players enable @s find_way
scoreboard players enable @s get_bundle
scoreboard players enable @s water_dash
scoreboard players enable @s summon_guardian

# Competition mid-join baseline snapshot (delta-tracked types)
execute if score #comp_active ec.var matches 2 run scoreboard players operation @s ec.comp_baseline = @s adv.stat_mine
execute if score #comp_active ec.var matches 4 run scoreboard players operation @s ec.comp_baseline = @s ach.prospects_done
execute if score #comp_active ec.var matches 5 run scoreboard players operation @s ec.comp_baseline = @s ach.forages_done
execute if score #comp_active ec.var matches 1..6 run bossbar set minecraft:competition players @a

# Reset dungeon daily floor counter if player missed a dawn while offline
execute unless score @s ec.last_day = #visual_day ec.var run scoreboard players set @s ec.dg_floors_today 0

# Initialize Chrono Shard state
scoreboard players add @s ec.cs_active 0

# Initialize party scores (no score ≠ 0, so invite scan won't find them without this)
scoreboard players add @s ec.party_id 0
scoreboard players add @s ec.party_role 0

# Initialize difficulty score (no score ≠ 0)
scoreboard players add @s ec.difficulty 0

# OPT: Initialize night terrors scores (moved from 60s check that scanned all @a)
scoreboard players add @s ec.nt_active 0
scoreboard players add @s ec.nt_cd 0

# Initialize companion evolution + pet duel scores
scoreboard players add @s ec.ce_evolved 0
scoreboard players add @s ec.ce_evolved2 0
scoreboard players add @s ec.pd_active 0
scoreboard players add @s ec.pd_cd 0
scoreboard players add @s ec.pd_wins 0
scoreboard players add @s ec.pd_losses 0
scoreboard players add @s ec.pd_draws 0
scoreboard players add @s ec.pd_streak 0
scoreboard players add @s ec.pd_best_streak 0

# Guild Events: check for pending weekly rewards
function evercraft:guild/events/weekly/check_pending

# Guild Diplomacy: join mid-event if applicable
function evercraft:guild/diplomacy/event/on_join

# Enable diplomacy trigger
scoreboard players enable @s ec.gd_diplo


# === Friend System ===
# Enable friend triggers
scoreboard players enable @s ec.fr_invite
scoreboard players enable @s ec.fr_gift
scoreboard players enable @s ec.fr_marry
scoreboard players enable @s ec.fr_title
scoreboard players enable @s ec.fr_remove

# Initialize friend count (no score ≠ 0)
scoreboard players add @s ec.fr_count 0
scoreboard players add @s ec.fr_married 0

# Catch up missed daily resets for gift streak evaluation
function evercraft:friends/gift/login_streak_catchup

# Deliver queued gifts from offline friends
function evercraft:friends/gift/check_queue

# Apply best friend / marriage proximity buffs
execute at @s run function evercraft:friends/buff/apply

# Track unique player for realm milestones (first-ever join only)
execute unless score @s ec.rm_joined matches 1 run scoreboard players add #rm_total_players ec.var 1
execute unless score @s ec.rm_joined matches 1 run scoreboard players set @s ec.rm_joined 1

# Reapply milestone DR bonus (in case milestones completed while offline)
execute if score #rm_dr_bonus ec.var matches 1.. run attribute @s luck modifier remove evercraft:milestone_dr_bonus
execute if score #rm_dr_bonus ec.var matches 1.. store result storage evercraft:milestones temp.dr_total double 0.1 run scoreboard players get #rm_dr_bonus ec.var
execute if score #rm_dr_bonus ec.var matches 1.. run function evercraft:milestones/complete/apply_dr_modifier with storage evercraft:milestones temp

# Clear session-scoped tags
tag @s remove ec.guild_arrow_warned

# Clear stale boss engagement tags (player may have been offline during boss cleanup/despawn)
tag @s remove wb.participant
tag @s remove wb.last_hit
tag @s remove wb.summoner
tag @s remove wb.natural_spawn
advancement revoke @s only evercraft:bosses/damage/dealt
scoreboard players set @s wb.range_warn 0

# Difficulty selection prompt (if not yet chosen — no score or 0)
execute unless score @s ec.difficulty matches 1..2 run function evercraft:difficulty/prompt


# === Harmonic Convergence: Sync modifier + notify if active ===
execute if score #conv_active ec.var matches 1 run attribute @s luck modifier remove ec_convergence
execute if score #conv_active ec.var matches 1 run attribute @s luck modifier add ec_convergence 2.0 add_value
execute if score #conv_active ec.var matches 1 run tellraw @s ["",{text:"  [Convergence] ",color:"light_purple"},{text:"A Harmonic Convergence is active! Gathering yields are doubled, boss drops are enhanced, and rare lore sparkles shimmer nearby.",color:"gray"}]
execute if score #conv_active ec.var matches 1 run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.3 1.5

# Migrate old stick-based Companion Catalogue to book-based version
function evercraft:companions/handler/menu_v2/migrate_item

# Mark as joined
tag @s add ec.joined