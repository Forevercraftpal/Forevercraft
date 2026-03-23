# Spirit Artifact System — Initialization
# Called from init.mcfunction on datapack load

# === SPIRIT ARTIFACT CORE SCOREBOARDS ===
scoreboard objectives add ec.sp_tier dummy "Spirit Tier"
scoreboard objectives add ec.sp_mastery dummy "Spirit Mastery XP"
scoreboard objectives add ec.sp_kills dummy "Spirit Kills"
scoreboard objectives add ec.sp_heals dummy "Spirit Heals"
scoreboard objectives add ec.sp_quest dummy "Spirit Quest Part"
scoreboard objectives add ec.sp_owner dummy "Marker Owner UID"
scoreboard objectives add ec.sp_uid dummy "Player Unique ID"

# === METAMORPHOSIS REQUIREMENT FLAGS (per-player) ===
scoreboard objectives add ec.sp_req1 dummy "Spirit Req 1 (Glyphs)"
scoreboard objectives add ec.sp_req2 dummy "Spirit Req 2 (Mastery)"
scoreboard objectives add ec.sp_req3 dummy "Spirit Req 3 (All Bosses)"
scoreboard objectives add ec.sp_req4 dummy "Spirit Req 4 (Unique)"
scoreboard objectives add ec.sp_req5 dummy "Spirit Req 5 (Unique)"
scoreboard objectives add ec.sp_req6 dummy "Spirit Req 6 (Unique)"
scoreboard objectives add ec.sp_req7 dummy "Spirit Req 7 (Unique)"

# === PER-WEAPON TRACKING (shared across all spirit weapons) ===
scoreboard objectives add ec.sp_stealth_kills dummy "Stealth Kills"
scoreboard objectives add ec.sp_range_kills dummy "Range Kills"
scoreboard objectives add ec.sp_damage_taken dummy "Damage Taken"
scoreboard objectives add ec.sp_run_kills dummy "Run Kill Max"
scoreboard objectives add ec.sp_guild_exp dummy "Guild Expeditions"
scoreboard objectives add ec.sp_dodges dummy "Dodge Procs"
scoreboard objectives add ec.sp_flawless dummy "Flawless Boss Kill"
scoreboard objectives add ec.sp_whirl_kills dummy "Whirlwind Kills"
scoreboard objectives add ec.sp_solo_bosses dummy "Solo Boss Kills"
scoreboard objectives add ec.sp_bonds dummy "Pet Eternal Bonds"
scoreboard objectives add ec.sp_pets_found dummy "Pets Discovered"
scoreboard objectives add ec.sp_damage_blocked dummy "Damage Blocked"
scoreboard objectives add ec.sp_ally_protect dummy "Ally Damage Prevented"
scoreboard objectives add ec.sp_sentinel_variety dummy "Sentinel Mace Variety"
scoreboard objectives add ec.sp_thrown_kills dummy "Thrown Kills"
scoreboard objectives add ec.sp_ocean_explore dummy "Ocean Structures"
scoreboard objectives add ec.sp_snipe_kills dummy "Snipe Kills"
scoreboard objectives add ec.sp_impact_hits dummy "Impact Strikes"
scoreboard objectives add ec.sp_quests_done dummy "Quests Completed"
scoreboard objectives add ec.sp_duel_wins dummy "Duel Wins"
scoreboard objectives add ec.sp_combat_heals dummy "Combat Healing"
scoreboard objectives add ec.sp_ally_heals dummy "Ally Healing"
scoreboard objectives add ec.sp_revives dummy "Revives"
scoreboard objectives add ec.sp_crits dummy "Critical Shots"
scoreboard objectives add ec.sp_speed_kill dummy "Speed Kill Flag"
scoreboard objectives add ec.sp_shield_block dummy "Shield Blocked"
scoreboard objectives add ec.sp_ability_variety dummy "Ability Variety"
scoreboard objectives add ec.sp_taunts dummy "Mobs Taunted"
scoreboard objectives add ec.sp_total_absorb dummy "Total Absorbed"
scoreboard objectives add ec.sp_deathless_hours dummy "Deathless Hours"

# === PROGRESSION SYSTEM (Objective-Based Tier Upgrades) ===
scoreboard objectives add ec.sp_eff dummy "Spirit Effectiveness %"
scoreboard objectives add ec.sp_obj_done dummy "Tier Objectives Done"
scoreboard objectives add ec.sp_ability1_uses dummy "Ability 1 Uses"
scoreboard objectives add ec.sp_ability2_uses dummy "Ability 2 Uses"
scoreboard objectives add ec.sp_dungeon_runs dummy "Dungeon Runs"
scoreboard objectives add ec.sp_total_floors dummy "Total Dungeon Floors"
scoreboard objectives add ec.sp_castle_max dummy "Castle Max Floor"
scoreboard objectives add ec.sp_floor_max dummy "Dungeon Max Floor"
scoreboard objectives add ec.sp_biomes dummy "Biomes Visited"
scoreboard objectives add ec.sp_survive dummy "Survival Minutes"
scoreboard objectives add ec.sp_kill_streak dummy "Kill Streak Max"
scoreboard objectives add ec.sp_runes dummy "Runes Bound"
scoreboard objectives add ec.sp_bosses_killed dummy "Raid Bosses Killed"
scoreboard objectives add ec.sp_combo_variety dummy "Combo Mob Types"
scoreboard objectives add ec.sp_cv_timer dummy "Combo Variety Timer"
scoreboard objectives add ec.sp_cv_t1 dummy "Combo Type 1 Flag"
scoreboard objectives add ec.sp_cv_t2 dummy "Combo Type 2 Flag"
scoreboard objectives add ec.sp_cv_t3 dummy "Combo Type 3 Flag"
scoreboard objectives add ec.sp_perfect_stealth dummy "Perfect Stealth Kill"
scoreboard objectives add ec.sp_rapid_snipe dummy "Rapid Snipe"
scoreboard objectives add ec.sp_rapid_timer dummy "Rapid Snipe Window"
scoreboard objectives add ec.sp_rapid_count dummy "Rapid Snipe Count"
scoreboard objectives add ec.sp_cur_streak dummy "Current Kill Streak"
scoreboard objectives add ec.sp_enderman_kills dummy "Enderman Kills"
scoreboard objectives add ec.sp_glyphs_full dummy "All Glyphs Filled"
scoreboard objectives add ec.sp_glyphs_exq dummy "Glyphs at Exquisite"
scoreboard objectives add ec.sp_all_bosses dummy "All 14 Bosses Slain"
# Per-boss kill flags (1 per unique boss type, used to compute ec.sp_all_bosses)
scoreboard objectives add ec.sp_bk1 dummy "Killed Hollow Sovereign"
scoreboard objectives add ec.sp_bk2 dummy "Killed Void Architect"
scoreboard objectives add ec.sp_bk3 dummy "Killed Gilded Tyrant"
scoreboard objectives add ec.sp_bk4 dummy "Killed Arbiter"
scoreboard objectives add ec.sp_bk5 dummy "Killed Gatekeeper"
scoreboard objectives add ec.sp_bk6 dummy "Killed Grand Illusionist"
scoreboard objectives add ec.sp_bk7 dummy "Killed Ashen Lord"
scoreboard objectives add ec.sp_bk8 dummy "Killed Leviathan"
scoreboard objectives add ec.sp_bk9 dummy "Killed Eternal Pharaoh"
scoreboard objectives add ec.sp_bk10 dummy "Killed Venomweaver"
scoreboard objectives add ec.sp_bk11 dummy "Killed Deepcrawler"
scoreboard objectives add ec.sp_bk12 dummy "Killed Mossheart Warden"
scoreboard objectives add ec.sp_bk13 dummy "Killed Crimson Bulwark"
scoreboard objectives add ec.sp_solo_boss dummy "Solo Boss Kill"
scoreboard objectives add ec.sp_solo_hollow dummy "Solo Hollow Sovereign"
scoreboard objectives add ec.sp_ranged_boss dummy "Ranged-Only Boss Kills"
scoreboard objectives add ec.sp_snipe_boss dummy "Boss Kill 50+ Blocks"
scoreboard objectives add ec.sp_snipe_flag dummy "Snipe Boss Flag (per-hit)"
scoreboard objectives add ec.sp_all_prestige dummy "All Prestiges Done"

# === ABILITY COOLDOWN SCOREBOARDS (tick-based) ===
# Generic per-player cooldowns for ability 1 and ability 2
scoreboard objectives add ec.sp_cd1 dummy "Spirit Ability 1 CD"
scoreboard objectives add ec.sp_cd2 dummy "Spirit Ability 2 CD"
# Active ability timers (for channeled/duration abilities)
scoreboard objectives add ec.sp_timer dummy "Spirit Ability Timer"
scoreboard objectives add ec.sp_state dummy "Spirit Ability State"

# === HOPLITE (Depthsworn) TRACKING ===
scoreboard objectives add ec.sp_counter_hits dummy "Counter Thrust Hits"
scoreboard objectives add ec.sp_castle_hoplite dummy "Castle 40 as Hoplite"
scoreboard objectives add ec.sp_aegis_active dummy "Aegis Wall Active"
scoreboard objectives add ec.sp_counter_cd dummy "Counter Thrust CD"
scoreboard objectives add ec.ip_slain dummy "Iron Phalanx Slain"

# === SPIRIT WEAPON IDENTITY (which of the 14 weapons the player holds) ===
scoreboard objectives add ec.sp_weapon dummy "Spirit Weapon ID"

# === TWIN SYSTEM ===
scoreboard objectives add ec.sp_twin dummy "Has Twin Equipped"
scoreboard objectives add ec.sp_boosted dummy "25% Solo Boost Active"

# === SOULBOUND SYSTEM ===
scoreboard objectives add ec.sp_trade trigger "Spirit Trade"
scoreboard players enable @a ec.sp_trade

# === METAMORPHOSIS CHECK TRIGGER ===
scoreboard objectives add ec.sp_meta trigger "Spirit Metamorphosis Check"

# === PROGRESS CHECK TRIGGER ===
scoreboard objectives add ec.sp_prog trigger "Spirit Progress Check"

# === PASSIVE TRACKING ===
# Hollow Fangs: consecutive hit counter for Soul Rend
scoreboard objectives add ec.sp_combo dummy "Spirit Combo Counter"
# Firebrand: Rampage damage stacks + timer
scoreboard objectives add ec.sp_rampage dummy "Rampage Timer"
scoreboard objectives add ec.sp_rampage_dmg dummy "Rampage Damage Stacks"
# Zephyr Edge: Wind Charges
scoreboard objectives add ec.sp_charges dummy "Wind Charges"
# Pharaoh's Fist: Combo counter + kill combo
scoreboard objectives add ec.sp_hit_combo dummy "Hit Combo"
scoreboard objectives add ec.sp_kill_combo dummy "Kill Combo"
# Ashcrown: Shield charges
scoreboard objectives add ec.sp_shield_charge dummy "Shield Charges"
# Bulwark: Damage absorbed during Wall
scoreboard objectives add ec.sp_wall_absorb dummy "Wall Damage Absorbed"

# === DUAL SWORDSMAN CLASS ===
scoreboard objectives add ec.ds_active dummy "Dual Swordsman Active"
scoreboard objectives add ec.ds_twin dummy "DS Both Twins"
scoreboard objectives add ec.ds_whirl_cd dummy "DS Whirlwind CD"
scoreboard objectives add ec.ds_ability_cd dummy "DS Ability CD"
scoreboard objectives add ec.ds_tier dummy "DS Tier"

# === PROGRESSION SYSTEM (self-scheduling check) ===
function evercraft:spirit/progression/load

# === CONSTANTS ===
scoreboard players set #4 ec.const 4
scoreboard players set #5 ec.const 5
scoreboard players set #6 ec.const 6
scoreboard players set #7 ec.const 7
scoreboard players set #8 ec.const 8
scoreboard players set #10 ec.const 10
scoreboard players set #15 ec.const 15
scoreboard players set #20 ec.const 20
scoreboard players set #30 ec.const 30
scoreboard players set #40 ec.const 40
scoreboard players set #50 ec.const 50
scoreboard players set #80 ec.const 80
scoreboard players set #160 ec.const 160
scoreboard players set #200 ec.const 200
scoreboard players set #240 ec.const 240
scoreboard players set #400 ec.const 400
scoreboard players set #500 ec.const 500
scoreboard players set #600 ec.const 600
scoreboard players set #900 ec.const 900
