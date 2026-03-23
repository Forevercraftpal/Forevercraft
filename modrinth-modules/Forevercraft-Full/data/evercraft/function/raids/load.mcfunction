# Spirit Raids — Load
# Called from init.mcfunction on datapack load

# ══════════════════════════════════════════
# Global Raid State (stored on #rd_ fake players in ec.var)
# ══════════════════════════════════════════

# === CORE INFRASTRUCTURE SCOREBOARDS ===
scoreboard objectives add ec.rd_floor dummy
scoreboard objectives add ec.rd_wave dummy
scoreboard objectives add ec.rd_struct dummy
scoreboard objectives add ec.rd_vote trigger
scoreboard objectives add ec.rd_vote_active dummy
scoreboard objectives add ec.rd_vote_timer dummy
scoreboard objectives add ec.rd_ox dummy
scoreboard objectives add ec.rd_oy dummy
scoreboard objectives add ec.rd_oz dummy
scoreboard objectives add ec.rd_dim dummy
scoreboard objectives add ec.rd_deaths dummy
scoreboard objectives add ec.rd_boss_alive dummy

# Raid active: 0=inactive, 1=active
scoreboard players set #rd_active ec.var 0
# Boss ID: 1=Hollow Sovereign, 2=Void Architect, 3=Gilded Tyrant,
#          4=Arbiter, 5=Gatekeeper, 6=Grand Illusionist,
#          7=Ashen Lord, 8=Leviathan, 9=Eternal Pharaoh,
#          10=Venomweaver, 11=Deepcrawler, 12=Mossheart Warden,
#          13=Crimson Bulwark
scoreboard players set #rd_boss_id ec.var 0
# Boss phase (1-3)
scoreboard players set #rd_boss_phase ec.var 0
# Boss max HP (scaled)
scoreboard players set #rd_boss_hp_max ec.var 0
# Phase thresholds
scoreboard players set #rd_p2_threshold ec.var 0
scoreboard players set #rd_p3_threshold ec.var 0
# Boss ability cooldown (ticks, decremented per-tick)
scoreboard players set #rd_ability_cd ec.var 0
# Boss fight timer (ticks)
scoreboard players set #rd_timer ec.var 0
# Player count in raid
scoreboard players set #rd_players ec.var 0
# HP/damage scaling
scoreboard players set #rd_hp_scale ec.var 100
scoreboard players set #rd_dmg_scale ec.var 100
# Phase transition lock (prevents re-triggering during transition VFX)
scoreboard players set #rd_phase_lock ec.var 0

# ══════════════════════════════════════════
# Boss-Specific State — Hollow Sovereign
# ══════════════════════════════════════════
# Phase 1: visibility timer (ticks remaining of visible window, 0=invisible)
scoreboard players set #rd_hs_vis_timer ec.var 0
# Phase 1: hit counter (hits while invisible to break invis)
scoreboard players set #rd_hs_hits ec.var 0
# Phase 2: silence flag (0=normal, 1=reflecting damage)
scoreboard players set #rd_hs_silence ec.var 0
# Phase 2: silence timer
scoreboard players set #rd_hs_silence_timer ec.var 0
# Phase 2: tendril spawn timer
scoreboard players set #rd_hs_tendril_cd ec.var 0
# Phase 3: shadow respawn timers
scoreboard players set #rd_hs_shadow_cd ec.var 0

# ══════════════════════════════════════════
# Boss-Specific State — Void Architect
# ══════════════════════════════════════════
scoreboard players set #rd_va_tp_cd ec.var 0
scoreboard players set #rd_va_proj_cd ec.var 0
scoreboard players set #rd_va_well_cd ec.var 0
scoreboard players set #rd_va_laser_angle ec.var 0

# ══════════════════════════════════════════
# Boss-Specific State — Gilded Tyrant
# ══════════════════════════════════════════
scoreboard players set #rd_gt_charge_cd ec.var 0
scoreboard players set #rd_gt_slam_cd ec.var 0
scoreboard players set #rd_gt_add_cd ec.var 0
scoreboard players set #rd_gt_lava_timer ec.var 0

# ══════════════════════════════════════════
# Boss-Specific State — Arbiter
# ══════════════════════════════════════════
scoreboard players set #rd_arb_mimic_cd ec.var 0
scoreboard players set #rd_arb_zone_timer ec.var 0
scoreboard players set #rd_arb_calm ec.var 0

# ══════════════════════════════════════════
# Boss-Specific State — Gatekeeper
# ══════════════════════════════════════════
scoreboard players set #rd_gk_combo ec.var 0
scoreboard players set #rd_gk_dash_cd ec.var 0
scoreboard players set #rd_gk_dim ec.var 0
scoreboard players set #rd_gk_dim_timer ec.var 0

# ══════════════════════════════════════════
# Boss-Specific State — Grand Illusionist
# ══════════════════════════════════════════
scoreboard players set #rd_gi_vis_timer ec.var 0
scoreboard players set #rd_gi_totem_cd ec.var 0

# ══════════════════════════════════════════
# Per-Player Scoreboards
# ══════════════════════════════════════════
# Gold nugget counter (Gilded Tyrant mechanic)
scoreboard objectives add rd.gold dummy
# Per-player raid boss kill tracking
scoreboard objectives add rd.kills dummy

# ══════════════════════════════════════════
# Boss-Specific State — Ashen Lord (#7)
# ══════════════════════════════════════════
scoreboard players set #rd_al_fire_cd ec.var 0
scoreboard players set #rd_al_skull_cd ec.var 0
scoreboard players set #rd_al_spawner_cd ec.var 0
scoreboard players set #rd_al_safe_timer ec.var 0
scoreboard players set #rd_al_heat_timer ec.var 0
scoreboard players set #rd_al_anchors ec.var 4
scoreboard players set #rd_al_lanterns_lit ec.var 0

# ══════════════════════════════════════════
# Boss-Specific State — Leviathan (#8)
# ══════════════════════════════════════════
scoreboard players set #rd_lv_laser_cd ec.var 0
scoreboard players set #rd_lv_wave_cd ec.var 0
scoreboard players set #rd_lv_burrow_cd ec.var 0
scoreboard players set #rd_lv_water_level ec.var 0
scoreboard players set #rd_lv_whirl_timer ec.var 0

# ══════════════════════════════════════════
# Boss-Specific State — Eternal Pharaoh (#9)
# ══════════════════════════════════════════
scoreboard players set #rd_ep_curse_cd ec.var 0
scoreboard players set #rd_ep_altar_cd ec.var 0
scoreboard players set #rd_ep_sand_timer ec.var 0
scoreboard players set #rd_ep_shield_cd ec.var 0
scoreboard players set #rd_ep_time_state ec.var 0
scoreboard players set #rd_ep_time_timer ec.var 0
scoreboard players set #rd_ep_glow_cd ec.var 0
scoreboard players set #rd_ep_glow_color ec.var 0

# ══════════════════════════════════════════
# Boss-Specific State — Venomweaver (#10)
# ══════════════════════════════════════════
scoreboard players set #rd_vw_perch_cd ec.var 0
scoreboard players set #rd_vw_spit_cd ec.var 0
scoreboard players set #rd_vw_web_cd ec.var 0
scoreboard players set #rd_vw_rage ec.var 0
scoreboard players set #rd_vw_cloud_cd ec.var 0
scoreboard players set #rd_vw_color_cd ec.var 0
scoreboard players set #rd_vw_glow_color ec.var 0

# ══════════════════════════════════════════
# Boss-Specific State — Deepcrawler (#11)
# ══════════════════════════════════════════
scoreboard players set #rd_dc_burrow_cd ec.var 0
scoreboard players set #rd_dc_stala_cd ec.var 0
scoreboard players set #rd_dc_above ec.var 0
scoreboard players set #rd_dc_cart_cd ec.var 0
scoreboard players set #rd_dc_dark_timer ec.var 0
scoreboard players set #rd_dc_lever_seq ec.var 0

# ══════════════════════════════════════════
# Boss-Specific State — Mossheart Warden (#12)
# ══════════════════════════════════════════
scoreboard players set #rd_mw_core_cd ec.var 0
scoreboard players set #rd_mw_cores_active ec.var 0
scoreboard players set #rd_mw_slam_cd ec.var 0
scoreboard players set #rd_mw_fissure_cd ec.var 0

# ══════════════════════════════════════════
# Boss-Specific State — Crimson Bulwark (#13)
# ══════════════════════════════════════════
scoreboard players set #rd_cb_slam_cd ec.var 0
scoreboard players set #rd_cb_guard_cd ec.var 0
scoreboard players set #rd_cb_reflect ec.var 0
scoreboard players set #rd_cb_spin_cd ec.var 0
scoreboard players set #rd_cb_throw_cd ec.var 0
scoreboard players set #rd_cb_pillar_hp1 ec.var 0
scoreboard players set #rd_cb_pillar_hp2 ec.var 0
scoreboard players set #rd_cb_pillar_hp3 ec.var 0
scoreboard players set #rd_cb_pillar_hp4 ec.var 0

# Per-player antidote charges (Venomweaver mechanic)
scoreboard objectives add rd.antidote dummy

# ══════════════════════════════════════════
# Boss storage namespace
# ══════════════════════════════════════════
data modify storage evercraft:raids temp set value {}
data modify storage evercraft:raids active set value {}

# ══════════════════════════════════════════
# Bootstrap tick — raid boss runs per-tick (not 1s like world bosses)
# ══════════════════════════════════════════
# Raid bosses need per-tick precision for ability timing, projectile tracking, etc.
# Only runs when #rd_active = 1, so negligible cost when idle

# Safety cleanup on reload
kill @e[tag=ec.rd_boss]
kill @e[tag=ec.rd_minion]
kill @e[tag=ec.rd_tendril]
kill @e[tag=ec.rd_fake]
kill @e[tag=ec.rd_proj]
kill @e[tag=ec.rd_mechanic]
kill @e[tag=ec.rd_puzzle]
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
bossbar remove evercraft:raid_boss
tag @a remove ec.rd_participant
tag @a remove rd.player
kill @e[tag=rd.mob]
kill @e[tag=rd.center]

# Reset core infrastructure state
scoreboard players set #rd_floor ec.var 0
scoreboard players set #rd_wave ec.var 0
scoreboard players set #rd_struct ec.var 0
scoreboard players set #rd_vote_active ec.var 0
scoreboard players set #rd_vote_timer ec.var 0
scoreboard players set #rd_boss_alive ec.var 0
scoreboard players set #rd_mobs ec.var 0
scoreboard players set #rd_dc_timer ec.var 0
scoreboard players set #rd_online ec.var 0

# Structure-to-raid mapping constants (match #dg_struct_id from dungeon/start)
scoreboard players set #rd_ancient_city ec.var 1
scoreboard players set #rd_end_city ec.var 2
scoreboard players set #rd_trial ec.var 3
scoreboard players set #rd_stronghold ec.var 4
scoreboard players set #rd_mansion ec.var 5
scoreboard players set #rd_bastion ec.var 6
scoreboard players set #rd_fortress ec.var 7
scoreboard players set #rd_monument ec.var 8
scoreboard players set #rd_desert ec.var 9
scoreboard players set #rd_jungle ec.var 10
scoreboard players set #rd_mineshaft ec.var 17
scoreboard players set #rd_dungeon ec.var 19
