# === CHECK ALL PERSONAL MILESTONES ===
# Sets ec.claim_prs to the number of unclaimed personal milestone stages
scoreboard players set @s ec.claim_prs 0

# p1: Companion Collector (ach.comp_owned)
function evercraft:milestones/personal/check_one {id:"p1", score:"ach.comp_owned", t1:10, t2:25, t3:50, t4:75, t5:96}
# p2: Eternal Bonds (ach.comp_eternal)
function evercraft:milestones/personal/check_one {id:"p2", score:"ach.comp_eternal", t1:1, t2:5, t3:15, t4:30, t5:50}
# p3: Mob Slayer (ach.total_kills)
function evercraft:milestones/personal/check_one {id:"p3", score:"ach.total_kills", t1:1000, t2:5000, t3:15000, t4:50000, t5:100000}
# p4: Patron Hunter (ach.patron_kills)
function evercraft:milestones/personal/check_one {id:"p4", score:"ach.patron_kills", t1:10, t2:50, t3:200, t4:500, t5:1000}
# p5: Quest Master (ach.quests_done)
function evercraft:milestones/personal/check_one {id:"p5", score:"ach.quests_done", t1:10, t2:50, t3:150, t4:300, t5:500}
# p6: Dungeon Delver (ach.dungeons_done)
function evercraft:milestones/personal/check_one {id:"p6", score:"ach.dungeons_done", t1:5, t2:20, t3:50, t4:100, t5:200}
# p7: Artifact Hoarder (ec.artifacts_ever)
function evercraft:milestones/personal/check_one {id:"p7", score:"ec.artifacts_ever", t1:25, t2:75, t3:150, t4:225, t5:290}
# p8: Lore Scholar (ach.lore_found)
function evercraft:milestones/personal/check_one {id:"p8", score:"ach.lore_found", t1:20, t2:60, t3:100, t4:140, t5:162}
# p9: Boss Vanquisher (ach.boss_kills)
function evercraft:milestones/personal/check_one {id:"p9", score:"ach.boss_kills", t1:3, t2:10, t3:25, t4:50, t5:100}
# p10: Tree Grower (ach.total_levels)
function evercraft:milestones/personal/check_one {id:"p10", score:"ach.total_levels", t1:25, t2:75, t3:150, t4:250, t5:325}
# p11: Dream Chaser (ec.dr_peak_ms)
function evercraft:milestones/personal/check_one {id:"p11", score:"ec.dr_peak_ms", t1:2, t2:4, t3:6, t4:8, t5:99}
# p12: Explorer (ach.structures_found)
function evercraft:milestones/personal/check_one {id:"p12", score:"ach.structures_found", t1:5, t2:10, t3:15, t4:20, t5:22}
# p13: Crate Opener (ach.crates_opened)
function evercraft:milestones/personal/check_one {id:"p13", score:"ach.crates_opened", t1:50, t2:200, t3:500, t4:1000, t5:2500}
# p14: Bounty Tracker (ec.bounty_done)
function evercraft:milestones/personal/check_one {id:"p14", score:"ec.bounty_done", t1:5, t2:20, t3:50, t4:100, t5:200}
# p15: Party Legend (ach.combos_triggered)
function evercraft:milestones/personal/check_one {id:"p15", score:"ach.combos_triggered", t1:10, t2:50, t3:150, t4:300, t5:500}
# p16: Angler (ach.fish_caught)
function evercraft:milestones/personal/check_one {id:"p16", score:"ach.fish_caught", t1:100, t2:500, t3:2000, t4:5000, t5:15000}
# p17: Miner (ach.blocks_mined)
function evercraft:milestones/personal/check_one {id:"p17", score:"ach.blocks_mined", t1:500, t2:5000, t3:25000, t4:100000, t5:500000}
# p18: Harvester (ach.crops_harvested)
function evercraft:milestones/personal/check_one {id:"p18", score:"ach.crops_harvested", t1:100, t2:1000, t3:5000, t4:25000, t5:100000}
# p19: Armor Collector (ach.sets_equipped)
function evercraft:milestones/personal/check_one {id:"p19", score:"ach.sets_equipped", t1:3, t2:8, t3:15, t4:22, t5:27}
# p20: Merchant (ach.adj_trade)
function evercraft:milestones/personal/check_one {id:"p20", score:"ach.adj_trade", t1:50, t2:200, t3:500, t4:1500, t5:5000}
# p21: Biome Seeker (ach.biomes_visited)
function evercraft:milestones/personal/check_one {id:"p21", score:"ach.biomes_visited", t1:5, t2:10, t3:15, t4:20, t5:24}
# p22: Homesteader (ach.housing_tier)
function evercraft:milestones/personal/check_one {id:"p22", score:"ach.housing_tier", t1:1, t2:2, t3:3, t4:4, t5:5}
# p23: Tower Climber (ic.record)
function evercraft:milestones/personal/check_one {id:"p23", score:"ic.record", t1:10, t2:25, t3:50, t4:75, t5:100}
# p24: Runesmith (ach.runes_forged)
function evercraft:milestones/personal/check_one {id:"p24", score:"ach.runes_forged", t1:5, t2:15, t3:30, t4:60, t5:100}
# p25: Transmuter (ach.transmutes_done)
function evercraft:milestones/personal/check_one {id:"p25", score:"ach.transmutes_done", t1:5, t2:25, t3:50, t4:100, t5:250}
# p26: Forager (ach.forages_done)
function evercraft:milestones/personal/check_one {id:"p26", score:"ach.forages_done", t1:10, t2:50, t3:100, t4:250, t5:500}
# p27: Prospector (ach.prospects_done)
function evercraft:milestones/personal/check_one {id:"p27", score:"ach.prospects_done", t1:10, t2:50, t3:100, t4:250, t5:500}
# p28: Satchel Keeper (ach.satchel_artifacts)
function evercraft:milestones/personal/check_one {id:"p28", score:"ach.satchel_artifacts", t1:3, t2:10, t3:20, t4:35, t5:50}
# p29: Sky Forger (ach.elytra_merges)
function evercraft:milestones/personal/check_one {id:"p29", score:"ach.elytra_merges", t1:1, t2:3, t3:5, t4:8, t5:12}
# p30: Chronicler (ach.journal_entries)
function evercraft:milestones/personal/check_one {id:"p30", score:"ach.journal_entries", t1:3, t2:10, t3:25, t4:50, t5:100}
# p31: Treasure Fisher (ach.fish_treasure)
function evercraft:milestones/personal/check_one {id:"p31", score:"ach.fish_treasure", t1:5, t2:20, t3:50, t4:100, t5:250}
# p32: Veteran (ach.adj_play)
function evercraft:milestones/personal/check_one {id:"p32", score:"ach.adj_play", t1:72000, t2:720000, t3:3600000, t4:7200000, t5:36000000}
# p33: Wanderlust (ach.adj_walk)
function evercraft:milestones/personal/check_one {id:"p33", score:"ach.adj_walk", t1:100000, t2:1000000, t3:5000000, t4:25000000, t5:100000000}
# p34: Gourmand (ach.food_eaten)
function evercraft:milestones/personal/check_one {id:"p34", score:"ach.food_eaten", t1:50, t2:200, t3:500, t4:1500, t5:5000}
# p35: Builder (ach.blocks_placed)
function evercraft:milestones/personal/check_one {id:"p35", score:"ach.blocks_placed", t1:500, t2:5000, t3:25000, t4:100000, t5:500000}
# p36: Sprinter (ach.adj_sprint)
function evercraft:milestones/personal/check_one {id:"p36", score:"ach.adj_sprint", t1:100000, t2:1000000, t3:5000000, t4:25000000, t5:100000000}
# p37: Deep Diver (ach.adj_swim)
function evercraft:milestones/personal/check_one {id:"p37", score:"ach.adj_swim", t1:50000, t2:500000, t3:2500000, t4:10000000, t5:50000000}
# p38: Well Rested (ach.adj_sleep)
function evercraft:milestones/personal/check_one {id:"p38", score:"ach.adj_sleep", t1:5, t2:15, t3:30, t4:50, t5:100}
# p39: Looter (ach.adj_chest)
function evercraft:milestones/personal/check_one {id:"p39", score:"ach.adj_chest", t1:50, t2:200, t3:500, t4:1500, t5:5000}
# p40: Enchanter (ach.adj_ench)
function evercraft:milestones/personal/check_one {id:"p40", score:"ach.adj_ench", t1:10, t2:30, t3:75, t4:150, t5:500}
# p41: Alchemist (ach.adj_brew)
function evercraft:milestones/personal/check_one {id:"p41", score:"ach.adj_brew", t1:10, t2:30, t3:75, t4:150, t5:500}
# p42: Cartographer (ach.adj_map)
function evercraft:milestones/personal/check_one {id:"p42", score:"ach.adj_map", t1:5, t2:15, t3:30, t4:50, t5:100}
# p43: Tree Sage (ach.trees_unlocked)
function evercraft:milestones/personal/check_one {id:"p43", score:"ach.trees_unlocked", t1:3, t2:5, t3:8, t4:11, t5:13}
# p44: Village Elder (ach.village_upgrades)
function evercraft:milestones/personal/check_one {id:"p44", score:"ach.village_upgrades", t1:1, t2:3, t3:5, t4:8, t5:12}
# p45: Guild Officer (ec.guild_rank)
function evercraft:milestones/personal/check_one {id:"p45", score:"ec.guild_rank", t1:2, t2:4, t3:6, t4:8, t5:10}
# p46: Guild Patron (ec.guild_contrib)
function evercraft:milestones/personal/check_one {id:"p46", score:"ec.guild_contrib", t1:500, t2:2000, t3:5000, t4:10000, t5:25000}
# p47: Campfire Sage (ach.cf_listened)
function evercraft:milestones/personal/check_one {id:"p47", score:"ach.cf_listened", t1:3, t2:10, t3:25, t4:50, t5:100}
# p48: Bard (ach.cf_recorded)
function evercraft:milestones/personal/check_one {id:"p48", score:"ach.cf_recorded", t1:1, t2:3, t3:5, t4:10, t5:20}
# p49: Encounter Seeker (ach.encounters_done)
function evercraft:milestones/personal/check_one {id:"p49", score:"ach.encounters_done", t1:3, t2:10, t3:25, t4:50, t5:100}
# p50: Party Animal (ach.parties_formed)
function evercraft:milestones/personal/check_one {id:"p50", score:"ach.parties_formed", t1:1, t2:3, t3:5, t4:10, t5:20}
# p51: Night Stalker (ach.night_ticks)
function evercraft:milestones/personal/check_one {id:"p51", score:"ach.night_ticks", t1:72000, t2:360000, t3:720000, t4:1800000, t5:3600000}
# p52: Untouchable (ach.dungeon_no_death)
function evercraft:milestones/personal/check_one {id:"p52", score:"ach.dungeon_no_death", t1:1, t2:3, t3:5, t4:10, t5:20}
# p53: Storm Rider (ach.we_starfall)
function evercraft:milestones/personal/check_one {id:"p53", score:"ach.we_starfall", t1:1, t2:3, t3:5, t4:10, t5:20}
# p54: Dream Walker (ach.we_dreaming)
function evercraft:milestones/personal/check_one {id:"p54", score:"ach.we_dreaming", t1:1, t2:3, t3:5, t4:10, t5:20}
# p55: Star Collector (ach.fallen_stars)
function evercraft:milestones/personal/check_one {id:"p55", score:"ach.fallen_stars", t1:1, t2:5, t3:15, t4:30, t5:50}
# p56: Pyromaniac (ach.adj_flint)
function evercraft:milestones/personal/check_one {id:"p56", score:"ach.adj_flint", t1:10, t2:50, t3:100, t4:250, t5:500}
# p57: Leap Master (ach.adj_jump)
function evercraft:milestones/personal/check_one {id:"p57", score:"ach.adj_jump", t1:10000, t2:50000, t3:100000, t4:250000, t5:500000}
# p58: Daredevil (ach.adj_fall)
function evercraft:milestones/personal/check_one {id:"p58", score:"ach.adj_fall", t1:100000, t2:500000, t3:2500000, t4:10000000, t5:50000000}
# p59: Spirit Bond (ach.comp_bonded)
function evercraft:milestones/personal/check_one {id:"p59", score:"ach.comp_bonded", t1:1, t2:3, t3:5, t4:10, t5:20}
# p60: Mining Crates (ach.crates_mining)
function evercraft:milestones/personal/check_one {id:"p60", score:"ach.crates_mining", t1:5, t2:20, t3:50, t4:100, t5:250}

# --- One-Time Milestones ---
# s1: First Blood (ach.total_kills >= 1)
function evercraft:milestones/personal/check_one {id:"s1", score:"ach.total_kills", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s2: Adventurer's Call (ach.quests_done >= 1)
function evercraft:milestones/personal/check_one {id:"s2", score:"ach.quests_done", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s3: Boss Challenger (ach.boss_kills >= 1)
function evercraft:milestones/personal/check_one {id:"s3", score:"ach.boss_kills", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s4: Dungeon Crawler (ach.dungeons_done >= 1)
function evercraft:milestones/personal/check_one {id:"s4", score:"ach.dungeons_done", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s5: Pet Owner (ach.comp_owned >= 1)
function evercraft:milestones/personal/check_one {id:"s5", score:"ach.comp_owned", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s6: Soulbound (ach.comp_eternal >= 1)
function evercraft:milestones/personal/check_one {id:"s6", score:"ach.comp_eternal", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s7: Lucky Find (ec.artifacts_ever >= 1)
function evercraft:milestones/personal/check_one {id:"s7", score:"ec.artifacts_ever", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s8: Lore Seeker (ach.lore_found >= 1)
function evercraft:milestones/personal/check_one {id:"s8", score:"ach.lore_found", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s9: Treasure Hunter (ach.structures_found >= 1)
function evercraft:milestones/personal/check_one {id:"s9", score:"ach.structures_found", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s10: Unboxing Day (ach.crates_opened >= 1)
function evercraft:milestones/personal/check_one {id:"s10", score:"ach.crates_opened", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s11: Deal Maker (ach.adj_trade >= 10)
function evercraft:milestones/personal/check_one {id:"s11", score:"ach.adj_trade", t1:10, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s12: Bounty Contract (ec.bounty_done >= 1)
function evercraft:milestones/personal/check_one {id:"s12", score:"ec.bounty_done", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s13: Wing Commander (ach.elytra_merges >= 1)
function evercraft:milestones/personal/check_one {id:"s13", score:"ach.elytra_merges", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s14: Rune Apprentice (ach.runes_forged >= 1)
function evercraft:milestones/personal/check_one {id:"s14", score:"ach.runes_forged", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s15: Transmute Novice (ach.transmutes_done >= 1)
function evercraft:milestones/personal/check_one {id:"s15", score:"ach.transmutes_done", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s16: Kitchen Fire (ach.meals_cooked >= 1)
function evercraft:milestones/personal/check_one {id:"s16", score:"ach.meals_cooked", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s17: Nature Walk (ach.forages_done >= 1)
function evercraft:milestones/personal/check_one {id:"s17", score:"ach.forages_done", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s18: Ore Finder (ach.prospects_done >= 1)
function evercraft:milestones/personal/check_one {id:"s18", score:"ach.prospects_done", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s19: First Catch (ach.fish_caught >= 1)
function evercraft:milestones/personal/check_one {id:"s19", score:"ach.fish_caught", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s20: Pickaxe Ready (ach.blocks_mined >= 100)
function evercraft:milestones/personal/check_one {id:"s20", score:"ach.blocks_mined", t1:100, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s21: Green Thumb (ach.crops_harvested >= 10)
function evercraft:milestones/personal/check_one {id:"s21", score:"ach.crops_harvested", t1:10, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s22: Home Sweet Home (ach.housing_tier >= 1)
function evercraft:milestones/personal/check_one {id:"s22", score:"ach.housing_tier", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s23: Guild Recruit (ec.guild_rank >= 1)
function evercraft:milestones/personal/check_one {id:"s23", score:"ec.guild_rank", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s24: Trial Initiate (ec.tt_completed >= 1)
function evercraft:milestones/personal/check_one {id:"s24", score:"ec.tt_completed", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s25: Gather Round (ach.cf_listened >= 1)
function evercraft:milestones/personal/check_one {id:"s25", score:"ach.cf_listened", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s26: Random Encounter (ach.encounters_done >= 1)
function evercraft:milestones/personal/check_one {id:"s26", score:"ach.encounters_done", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s27: Party Starter (ach.parties_formed >= 1)
function evercraft:milestones/personal/check_one {id:"s27", score:"ach.parties_formed", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s28: Pack Rat (ach.satchel_artifacts >= 1)
function evercraft:milestones/personal/check_one {id:"s28", score:"ach.satchel_artifacts", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s29: Dear Diary (ach.journal_entries >= 1)
function evercraft:milestones/personal/check_one {id:"s29", score:"ach.journal_entries", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s30: New Horizons (ach.biomes_visited >= 3)
function evercraft:milestones/personal/check_one {id:"s30", score:"ach.biomes_visited", t1:3, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s31: Full Arsenal (ach.sets_equipped >= 27)
function evercraft:milestones/personal/check_one {id:"s31", score:"ach.sets_equipped", t1:27, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s32: Companion Master (ach.comp_owned >= 96)
function evercraft:milestones/personal/check_one {id:"s32", score:"ach.comp_owned", t1:96, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s33: Complete Lore (ach.lore_found >= 162)
function evercraft:milestones/personal/check_one {id:"s33", score:"ach.lore_found", t1:162, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s34: World Mapped (ach.biomes_visited >= 24)
function evercraft:milestones/personal/check_one {id:"s34", score:"ach.biomes_visited", t1:24, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s35: Patron Destroyer (ach.patron_kills >= 500)
function evercraft:milestones/personal/check_one {id:"s35", score:"ach.patron_kills", t1:500, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s36: Star Touched (ach.fallen_stars >= 10)
function evercraft:milestones/personal/check_one {id:"s36", score:"ach.fallen_stars", t1:10, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s37: Dream Ascended (ec.dr_peak_ms >= 8)
function evercraft:milestones/personal/check_one {id:"s37", score:"ec.dr_peak_ms", t1:8, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s38: Combo King (ach.combos_triggered >= 200)
function evercraft:milestones/personal/check_one {id:"s38", score:"ach.combos_triggered", t1:200, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s39: Night Master (ach.night_ticks >= 1800000)
function evercraft:milestones/personal/check_one {id:"s39", score:"ach.night_ticks", t1:1800000, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s40: Mega Miner (ach.blocks_mined >= 1000000)
function evercraft:milestones/personal/check_one {id:"s40", score:"ach.blocks_mined", t1:1000000, t2:999999999, t3:999999999, t4:999999999, t5:999999999}

# --- Trial Expansion One-Time Milestones ---
# s41: Trial Master (ec.tt_mastery >= 1 — first category mastered)
function evercraft:milestones/personal/check_one {id:"s41", score:"ec.tt_mastery", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s42: Grand Master (ec.tt_mastery >= 6 — all 6 categories mastered)
function evercraft:milestones/personal/check_one {id:"s42", score:"ec.tt_mastery", t1:6, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s43: Speed Demon (ec.tt_speed_clear >= 1 — first speed clear)
function evercraft:milestones/personal/check_one {id:"s43", score:"ec.tt_speed_clear", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s44: Hard Mode Victor (ec.tt_hard_wins >= 1 — first hard mode win)
function evercraft:milestones/personal/check_one {id:"s44", score:"ec.tt_hard_wins", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s45: Daily Devotee (ec.tt_daily_wins >= 1 — first daily challenge done)
function evercraft:milestones/personal/check_one {id:"s45", score:"ec.tt_daily_wins", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}

# ═══════════════════════════════════════════════════════════════
# NEW STAGED MILESTONES (p61-p120) — 60 milestones, 5 stages each
# ═══════════════════════════════════════════════════════════════

# --- COOKING MASTERY (11 categories) ---
# p61: Combat Cuisine (ck.m_combat)
function evercraft:milestones/personal/check_one {id:"p61", score:"ck.m_combat", t1:10, t2:25, t3:50, t4:100, t5:200}
# p62: Mining Meals (ck.m_mining)
function evercraft:milestones/personal/check_one {id:"p62", score:"ck.m_mining", t1:10, t2:25, t3:50, t4:100, t5:200}
# p63: Fortune Foods (ck.m_fortune)
function evercraft:milestones/personal/check_one {id:"p63", score:"ck.m_fortune", t1:10, t2:25, t3:50, t4:100, t5:200}
# p64: Wayfarer Fare (ck.m_wayfarer)
function evercraft:milestones/personal/check_one {id:"p64", score:"ck.m_wayfarer", t1:10, t2:25, t3:50, t4:100, t5:200}
# p65: Delicacies (ck.m_delicacy)
function evercraft:milestones/personal/check_one {id:"p65", score:"ck.m_delicacy", t1:10, t2:25, t3:50, t4:100, t5:200}
# p66: Seasonal Cooking (ck.m_seasonal)
function evercraft:milestones/personal/check_one {id:"p66", score:"ck.m_seasonal", t1:10, t2:25, t3:50, t4:100, t5:200}
# p67: Sweet Treats (ck.m_treats)
function evercraft:milestones/personal/check_one {id:"p67", score:"ck.m_treats", t1:10, t2:25, t3:50, t4:100, t5:200}
# p68: Laborer Rations (ck.m_ration)
function evercraft:milestones/personal/check_one {id:"p68", score:"ck.m_ration", t1:10, t2:25, t3:50, t4:100, t5:200}
# p69: Feast Platters (ck.m_feast)
function evercraft:milestones/personal/check_one {id:"p69", score:"ck.m_feast", t1:10, t2:25, t3:50, t4:100, t5:200}
# p70: Preservation (ck.m_preserve)
function evercraft:milestones/personal/check_one {id:"p70", score:"ck.m_preserve", t1:10, t2:25, t3:50, t4:100, t5:200}
# p71: Spirit Cuisine (ck.m_spirit)
function evercraft:milestones/personal/check_one {id:"p71", score:"ck.m_spirit", t1:10, t2:25, t3:50, t4:100, t5:200}

# --- SPIRIT ARTIFACT PROGRESSION ---
# p72: Spirit Tier (ec.sp_tier)
function evercraft:milestones/personal/check_one {id:"p72", score:"ec.sp_tier", t1:3, t2:5, t3:8, t4:12, t5:15}
# p73: Spirit Mastery (ec.sp_mastery)
function evercraft:milestones/personal/check_one {id:"p73", score:"ec.sp_mastery", t1:500, t2:2000, t3:5000, t4:10000, t5:25000}
# p74: Spirit Kills (ec.sp_kills)
function evercraft:milestones/personal/check_one {id:"p74", score:"ec.sp_kills", t1:100, t2:500, t3:2000, t4:5000, t5:15000}

# --- SPIRIT COMBAT TRACKING ---
# p75: Stealth Operative (ec.sp_stealth_kills)
function evercraft:milestones/personal/check_one {id:"p75", score:"ec.sp_stealth_kills", t1:10, t2:50, t3:100, t4:250, t5:500}
# p76: Marksman (ec.sp_range_kills)
function evercraft:milestones/personal/check_one {id:"p76", score:"ec.sp_range_kills", t1:25, t2:100, t3:250, t4:500, t5:1000}
# p77: Solo Warrior (ec.sp_solo_bosses)
function evercraft:milestones/personal/check_one {id:"p77", score:"ec.sp_solo_bosses", t1:1, t2:3, t3:5, t4:10, t5:14}
# p78: Sniper (ec.sp_snipe_kills)
function evercraft:milestones/personal/check_one {id:"p78", score:"ec.sp_snipe_kills", t1:10, t2:50, t3:100, t4:250, t5:500}
# p79: Whirlwind (ec.sp_whirl_kills)
function evercraft:milestones/personal/check_one {id:"p79", score:"ec.sp_whirl_kills", t1:25, t2:100, t3:250, t4:500, t5:1000}
# p80: Iron Wall (ec.sp_damage_blocked)
function evercraft:milestones/personal/check_one {id:"p80", score:"ec.sp_damage_blocked", t1:1000, t2:5000, t3:25000, t4:100000, t5:500000}

# --- CRATE SUBTYPES ---
# p81: Fishing Crates (ach.crates_fishing)
function evercraft:milestones/personal/check_one {id:"p81", score:"ach.crates_fishing", t1:5, t2:20, t3:50, t4:100, t5:250}
# p82: Harvest Crates (ach.crates_harvest)
function evercraft:milestones/personal/check_one {id:"p82", score:"ach.crates_harvest", t1:5, t2:20, t3:50, t4:100, t5:250}
# p83: Structure Crates (ach.crates_structure)
function evercraft:milestones/personal/check_one {id:"p83", score:"ach.crates_structure", t1:5, t2:20, t3:50, t4:100, t5:250}
# p84: Mob Crates (ach.crates_mob)
function evercraft:milestones/personal/check_one {id:"p84", score:"ach.crates_mob", t1:5, t2:20, t3:50, t4:100, t5:250}

# --- COMPANION DEPTH ---
# p85: Devoted Collector (ach.comp_devoted)
function evercraft:milestones/personal/check_one {id:"p85", score:"ach.comp_devoted", t1:1, t2:5, t3:15, t4:30, t5:50}
# p86: Soulbound Collector (ach.comp_soulbound)
function evercraft:milestones/personal/check_one {id:"p86", score:"ach.comp_soulbound", t1:1, t2:3, t3:10, t4:20, t5:40}
# p87: Pet Feeder (ach.comp_feeds)
function evercraft:milestones/personal/check_one {id:"p87", score:"ach.comp_feeds", t1:50, t2:200, t3:500, t4:1500, t5:5000}
# p88: Companion Interactor (ach.comp_interacts)
function evercraft:milestones/personal/check_one {id:"p88", score:"ach.comp_interacts", t1:50, t2:200, t3:500, t4:1500, t5:5000}
# p89: Ability Master (ach.comp_abilities)
function evercraft:milestones/personal/check_one {id:"p89", score:"ach.comp_abilities", t1:25, t2:100, t3:250, t4:500, t5:1000}

# --- WORLD EVENTS ---
# p90: Abyssal Survivor (ach.we_abyssal)
function evercraft:milestones/personal/check_one {id:"p90", score:"ach.we_abyssal", t1:1, t2:3, t3:5, t4:10, t5:20}
# p91: Aurora Chaser (ach.we_aurora)
function evercraft:milestones/personal/check_one {id:"p91", score:"ach.we_aurora", t1:1, t2:3, t3:5, t4:10, t5:20}
# p92: Rift Walker (ach.we_rift_echo)
function evercraft:milestones/personal/check_one {id:"p92", score:"ach.we_rift_echo", t1:1, t2:3, t3:5, t4:10, t5:20}
# p93: Rift Slayer (ach.rift_kills_event)
function evercraft:milestones/personal/check_one {id:"p93", score:"ach.rift_kills_event", t1:10, t2:50, t3:100, t4:250, t5:500}
# p94: Meteor Miner (ach.meteor_ores_event)
function evercraft:milestones/personal/check_one {id:"p94", score:"ach.meteor_ores_event", t1:5, t2:20, t3:50, t4:100, t5:250}
# p95: Moon Watcher (ach.moons_seen)
function evercraft:milestones/personal/check_one {id:"p95", score:"ach.moons_seen", t1:8, t2:32, t3:100, t4:250, t5:500}
# p96: Calendar Expert (ach.cal_meteor)
function evercraft:milestones/personal/check_one {id:"p96", score:"ach.cal_meteor", t1:3, t2:10, t3:25, t4:50, t5:100}

# --- QUESTS & BOUNTY ---
# p97: Quest XP (ach.quest_xp)
function evercraft:milestones/personal/check_one {id:"p97", score:"ach.quest_xp", t1:500, t2:2000, t3:5000, t4:15000, t5:50000}
# p98: Village Quester (ach.villages_quested)
function evercraft:milestones/personal/check_one {id:"p98", score:"ach.villages_quested", t1:3, t2:5, t3:8, t4:12, t5:15}
# p99: Bounty Hunter (ach.bnt_kills)
function evercraft:milestones/personal/check_one {id:"p99", score:"ach.bnt_kills", t1:10, t2:50, t3:150, t4:300, t5:500}

# --- DUNGEON DEPTH ---
# p100: Dungeon Veteran (ec.dng_attempts)
function evercraft:milestones/personal/check_one {id:"p100", score:"ec.dng_attempts", t1:10, t2:30, t3:75, t4:150, t5:300}

# --- HOUSING ---
# p101: Popular Home (hs.visitors)
function evercraft:milestones/personal/check_one {id:"p101", score:"hs.visitors", t1:5, t2:15, t3:30, t4:50, t5:100}
# p102: Decorator (hs.decor)
function evercraft:milestones/personal/check_one {id:"p102", score:"hs.decor", t1:10, t2:30, t3:60, t4:100, t5:200}
# p103: Item Stasher (hs.stashed)
function evercraft:milestones/personal/check_one {id:"p103", score:"hs.stashed", t1:25, t2:100, t3:250, t4:500, t5:1000}

# --- GUILD ---
# p104: Guild Pets (ec.gs_pet_count)
function evercraft:milestones/personal/check_one {id:"p104", score:"ec.gs_pet_count", t1:1, t2:3, t3:5, t4:8, t5:12}

# --- SPIRIT WEAPON ADVANCED ---
# p105: Combat Healer (ec.sp_combat_heals)
function evercraft:milestones/personal/check_one {id:"p105", score:"ec.sp_combat_heals", t1:50, t2:200, t3:500, t4:1000, t5:2500}
# p106: Ally Healer (ec.sp_ally_heals)
function evercraft:milestones/personal/check_one {id:"p106", score:"ec.sp_ally_heals", t1:25, t2:100, t3:250, t4:500, t5:1000}
# p107: Thrown Weapons (ec.sp_thrown_kills)
function evercraft:milestones/personal/check_one {id:"p107", score:"ec.sp_thrown_kills", t1:10, t2:50, t3:100, t4:250, t5:500}
# p108: Taunt Master (ec.sp_taunts)
function evercraft:milestones/personal/check_one {id:"p108", score:"ec.sp_taunts", t1:25, t2:100, t3:250, t4:500, t5:1000}
# p109: Dungeon Runner (ec.sp_dungeon_runs)
function evercraft:milestones/personal/check_one {id:"p109", score:"ec.sp_dungeon_runs", t1:5, t2:20, t3:50, t4:100, t5:200}
# p110: Floor Clearer (ec.sp_total_floors)
function evercraft:milestones/personal/check_one {id:"p110", score:"ec.sp_total_floors", t1:50, t2:200, t3:500, t4:1000, t5:2500}

# --- PRESTIGE ---
# p111: Prestige Tokens (ec.prestige_use)
function evercraft:milestones/personal/check_one {id:"p111", score:"ec.prestige_use", t1:1, t2:5, t3:15, t4:30, t5:60}
# p112: Combat Prestige (ach.prestige_combat)
function evercraft:milestones/personal/check_one {id:"p112", score:"ach.prestige_combat", t1:1, t2:3, t3:5, t4:8, t5:10}
# p113: Gathering Prestige (ach.prestige_gathering)
function evercraft:milestones/personal/check_one {id:"p113", score:"ach.prestige_gathering", t1:1, t2:3, t3:5, t4:8, t5:10}
# p114: Companion Prestige (ach.prestige_companions)
function evercraft:milestones/personal/check_one {id:"p114", score:"ach.prestige_companions", t1:1, t2:3, t3:5, t4:8, t5:10}
# p115: Explorer Prestige (ach.prestige_exploration)
function evercraft:milestones/personal/check_one {id:"p115", score:"ach.prestige_exploration", t1:1, t2:3, t3:5, t4:8, t5:10}
# p116: Collector Prestige (ach.prestige_collection)
function evercraft:milestones/personal/check_one {id:"p116", score:"ach.prestige_collection", t1:1, t2:3, t3:5, t4:8, t5:10}
# p117: Growth Prestige (ach.prestige_growth)
function evercraft:milestones/personal/check_one {id:"p117", score:"ach.prestige_growth", t1:1, t2:3, t3:5, t4:8, t5:10}

# --- MISC TRACKED ---
# p118: Weapon Abilities (ach.weapon_abilities)
function evercraft:milestones/personal/check_one {id:"p118", score:"ach.weapon_abilities", t1:50, t2:200, t3:500, t4:1500, t5:5000}
# p119: Surge Triggers (ach.surge_triggers)
function evercraft:milestones/personal/check_one {id:"p119", score:"ach.surge_triggers", t1:5, t2:20, t3:50, t4:100, t5:250}
# p120: Dodge Master (ach.dodge_count)
function evercraft:milestones/personal/check_one {id:"p120", score:"ach.dodge_count", t1:25, t2:100, t3:250, t4:500, t5:1000}

# ═══════════════════════════════════════════════════════════════
# NEW ONE-TIME MILESTONES (s46-s127) — 82 milestones
# ═══════════════════════════════════════════════════════════════

# --- SPIRIT FIRSTS ---
# s46: Spirit Awakened (first tier reached)
function evercraft:milestones/personal/check_one {id:"s46", score:"ec.sp_tier", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s47: Spirit Ascended (max tier 15)
function evercraft:milestones/personal/check_one {id:"s47", score:"ec.sp_tier", t1:15, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s48: Flawless Victor (first flawless boss)
function evercraft:milestones/personal/check_one {id:"s48", score:"ec.sp_flawless", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s49: Shadow Strike (first perfect stealth)
function evercraft:milestones/personal/check_one {id:"s49", score:"ec.sp_perfect_stealth", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s50: Rapid Fire (first rapid snipe)
function evercraft:milestones/personal/check_one {id:"s50", score:"ec.sp_rapid_snipe", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s51: Glyph Master (all glyphs filled)
function evercraft:milestones/personal/check_one {id:"s51", score:"ec.sp_glyphs_full", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s52: Solo Hollow Sovereign
function evercraft:milestones/personal/check_one {id:"s52", score:"ec.sp_solo_hollow", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s53: All Bosses Slain (14 unique)
function evercraft:milestones/personal/check_one {id:"s53", score:"ec.sp_all_bosses", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}

# --- RAID BOSSES (individual firsts) ---
# s54: Slew Hollow Sovereign
function evercraft:milestones/personal/check_one {id:"s54", score:"ec.sp_bk1", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s55: Slew Void Architect
function evercraft:milestones/personal/check_one {id:"s55", score:"ec.sp_bk2", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s56: Slew Gilded Tyrant
function evercraft:milestones/personal/check_one {id:"s56", score:"ec.sp_bk3", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s57: Slew The Arbiter
function evercraft:milestones/personal/check_one {id:"s57", score:"ec.sp_bk4", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s58: Slew The Gatekeeper
function evercraft:milestones/personal/check_one {id:"s58", score:"ec.sp_bk5", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s59: Slew Grand Illusionist
function evercraft:milestones/personal/check_one {id:"s59", score:"ec.sp_bk6", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s60: Slew Ashen Lord
function evercraft:milestones/personal/check_one {id:"s60", score:"ec.sp_bk7", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s61: Slew Leviathan
function evercraft:milestones/personal/check_one {id:"s61", score:"ec.sp_bk8", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s62: Slew Eternal Pharaoh
function evercraft:milestones/personal/check_one {id:"s62", score:"ec.sp_bk9", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s63: Slew Venomweaver
function evercraft:milestones/personal/check_one {id:"s63", score:"ec.sp_bk10", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s64: Slew Deepcrawler
function evercraft:milestones/personal/check_one {id:"s64", score:"ec.sp_bk11", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s65: Slew Mossheart Warden
function evercraft:milestones/personal/check_one {id:"s65", score:"ec.sp_bk12", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s66: Slew Crimson Bulwark
function evercraft:milestones/personal/check_one {id:"s66", score:"ec.sp_bk13", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}

# --- WORLD EVENT FIRSTS ---
# s67: First Abyssal Tremor
function evercraft:milestones/personal/check_one {id:"s67", score:"ach.we_abyssal", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s68: First Aurora Bloom
function evercraft:milestones/personal/check_one {id:"s68", score:"ach.we_aurora", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s69: First Rift Echo
function evercraft:milestones/personal/check_one {id:"s69", score:"ach.we_rift_echo", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}

# --- COOKING FIRSTS ---
# s70: First Recipe Learned
function evercraft:milestones/personal/check_one {id:"s70", score:"ach.recipes_learned", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s71: Recipe Completionist (all 42)
function evercraft:milestones/personal/check_one {id:"s71", score:"ach.recipes_learned", t1:42, t2:999999999, t3:999999999, t4:999999999, t5:999999999}

# --- CRATE FIRSTS ---
# s72: First Fishing Crate
function evercraft:milestones/personal/check_one {id:"s72", score:"ach.crates_fishing", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s73: First Harvest Crate
function evercraft:milestones/personal/check_one {id:"s73", score:"ach.crates_harvest", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s74: First Structure Crate
function evercraft:milestones/personal/check_one {id:"s74", score:"ach.crates_structure", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s75: First Mob Crate
function evercraft:milestones/personal/check_one {id:"s75", score:"ach.crates_mob", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s76: First Surge Crate
function evercraft:milestones/personal/check_one {id:"s76", score:"ach.surge_crates", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}

# --- COMPANION FIRSTS ---
# s77: First Devoted Pet
function evercraft:milestones/personal/check_one {id:"s77", score:"ach.comp_devoted", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s78: First Soulbound Pet
function evercraft:milestones/personal/check_one {id:"s78", score:"ach.comp_soulbound", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}

# --- PRESTIGE FIRSTS ---
# s79: First Prestige
function evercraft:milestones/personal/check_one {id:"s79", score:"ec.prestige_use", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s80: All Prestiges (6 categories)
function evercraft:milestones/personal/check_one {id:"s80", score:"ec.sp_all_prestige", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}

# --- CASTLE THRESHOLDS ---
# s81: Castle Floor 25
function evercraft:milestones/personal/check_one {id:"s81", score:"ic.record", t1:25, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s82: Castle Floor 50
function evercraft:milestones/personal/check_one {id:"s82", score:"ic.record", t1:50, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s83: Castle Floor 100
function evercraft:milestones/personal/check_one {id:"s83", score:"ic.record", t1:100, t2:999999999, t3:999999999, t4:999999999, t5:999999999}

# --- HOUSING FIRSTS ---
# s84: First Visitor
function evercraft:milestones/personal/check_one {id:"s84", score:"hs.visitors", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s85: Max Housing Tier
function evercraft:milestones/personal/check_one {id:"s85", score:"ach.housing_tier", t1:5, t2:999999999, t3:999999999, t4:999999999, t5:999999999}

# --- GUILD FIRSTS ---
# s86: First Guild Pet
function evercraft:milestones/personal/check_one {id:"s86", score:"ec.gs_pet_count", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s87: Guild Rank 5 (Officer)
function evercraft:milestones/personal/check_one {id:"s87", score:"ec.guild_rank", t1:5, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s88: Guild Rank 10 (Leader)
function evercraft:milestones/personal/check_one {id:"s88", score:"ec.guild_rank", t1:10, t2:999999999, t3:999999999, t4:999999999, t5:999999999}

# --- DUNGEON THRESHOLDS ---
# s89: 10 Deathless Runs
function evercraft:milestones/personal/check_one {id:"s89", score:"ach.dungeon_no_death", t1:10, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s90: 100 Dungeons Done
function evercraft:milestones/personal/check_one {id:"s90", score:"ach.dungeons_done", t1:100, t2:999999999, t3:999999999, t4:999999999, t5:999999999}

# --- LORE & KNOWLEDGE ---
# s91: First Lore Set Complete
function evercraft:milestones/personal/check_one {id:"s91", score:"ach.lore_sets", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s92: All Lore Sets
function evercraft:milestones/personal/check_one {id:"s92", score:"ach.lore_sets", t1:10, t2:999999999, t3:999999999, t4:999999999, t5:999999999}

# --- COMBAT ELITE ---
# s93: 10K Kills
function evercraft:milestones/personal/check_one {id:"s93", score:"ach.total_kills", t1:10000, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s94: 100K Kills
function evercraft:milestones/personal/check_one {id:"s94", score:"ach.total_kills", t1:100000, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s95: 25 Unique Bosses
function evercraft:milestones/personal/check_one {id:"s95", score:"ach.boss_unique", t1:25, t2:999999999, t3:999999999, t4:999999999, t5:999999999}

# --- VILLAGE & COMMUNITY ---
# s96: All Village Upgrades (12)
function evercraft:milestones/personal/check_one {id:"s96", score:"ach.village_upgrades", t1:12, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s97: All Trees Unlocked (13)
function evercraft:milestones/personal/check_one {id:"s97", score:"ach.trees_unlocked", t1:13, t2:999999999, t3:999999999, t4:999999999, t5:999999999}

# --- MISC ULTIMATES ---
# s98: Ancient Debris (10)
function evercraft:milestones/personal/check_one {id:"s98", score:"ach.mined_debris", t1:10, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s99: No Sleep 7 Days
function evercraft:milestones/personal/check_one {id:"s99", score:"ach.no_sleep_days", t1:7, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s100: Death Collector (100 deaths)
function evercraft:milestones/personal/check_one {id:"s100", score:"ach.deaths", t1:100, t2:999999999, t3:999999999, t4:999999999, t5:999999999}

# --- EXTREME PROGRESSION ---
# s101: Set Bonus Veteran (100)
function evercraft:milestones/personal/check_one {id:"s101", score:"ach.set_bonuses", t1:100, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s102: Duel Champion (10 wins)
function evercraft:milestones/personal/check_one {id:"s102", score:"ec.sp_duel_wins", t1:10, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s103: Spirit Reviver (10 revives)
function evercraft:milestones/personal/check_one {id:"s103", score:"ec.sp_revives", t1:10, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s104: Critical Marksman (100 crits)
function evercraft:milestones/personal/check_one {id:"s104", score:"ec.sp_crits", t1:100, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s105: Ocean Explorer (5 structures)
function evercraft:milestones/personal/check_one {id:"s105", score:"ec.sp_ocean_explore", t1:5, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s106: Deathless 24h (ec.sp_deathless_hours >= 24)
function evercraft:milestones/personal/check_one {id:"s106", score:"ec.sp_deathless_hours", t1:24, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s107: Kill Streak 50
function evercraft:milestones/personal/check_one {id:"s107", score:"ec.sp_kill_streak", t1:50, t2:999999999, t3:999999999, t4:999999999, t5:999999999}

# --- CRAFTFOREVER EXTRAS ---
# s108: First Laborer Expedition
function evercraft:milestones/personal/check_one {id:"s108", score:"ec.lb_expeditions", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s109: 50 Laborer Expeditions
function evercraft:milestones/personal/check_one {id:"s109", score:"ec.lb_expeditions", t1:50, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s110: First Laborer Adventure
function evercraft:milestones/personal/check_one {id:"s110", score:"ec.lb_adventures", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}

# --- DUEL & COMBAT ---
# s111: Duel First Blood (ec.sp_duel_wins >= 1)
function evercraft:milestones/personal/check_one {id:"s111", score:"ec.sp_duel_wins", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s112: Ranged Boss Kill
function evercraft:milestones/personal/check_one {id:"s112", score:"ec.sp_ranged_boss", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s113: Snipe Boss 50+ blocks
function evercraft:milestones/personal/check_one {id:"s113", score:"ec.sp_snipe_boss", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}

# --- FOOD & SURVIVAL ---
# s114: 1000 Food Eaten
function evercraft:milestones/personal/check_one {id:"s114", score:"ach.food_eaten", t1:1000, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s115: 10K Blocks Placed
function evercraft:milestones/personal/check_one {id:"s115", score:"ach.blocks_placed", t1:10000, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s116: 500 Quest Rep
function evercraft:milestones/personal/check_one {id:"s116", score:"ach.quest_rep", t1:500, t2:999999999, t3:999999999, t4:999999999, t5:999999999}

# --- SPIRIT QUEST ---
# s117: Spirit Quest Started (ec.sq_part >= 1)
function evercraft:milestones/personal/check_one {id:"s117", score:"ec.sq_part", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}

# --- ENDGAME ---
# s118: 500 Total Achievements
function evercraft:milestones/personal/check_one {id:"s118", score:"ach.total", t1:500, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s119: Surge Crate Collector (10)
function evercraft:milestones/personal/check_one {id:"s119", score:"ach.surge_crates", t1:10, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s120: Castle Hoplite 40 (ec.sp_castle_hoplite)
function evercraft:milestones/personal/check_one {id:"s120", score:"ec.sp_castle_hoplite", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}

# --- ENDERMAN & NICHE ---
# s121: Enderman Slayer (50)
function evercraft:milestones/personal/check_one {id:"s121", score:"ec.sp_enderman_kills", t1:50, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s122: Shield Perfectionist (100 blocks)
function evercraft:milestones/personal/check_one {id:"s122", score:"ec.sp_shield_block", t1:100, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s123: Ability Variety (10 types)
function evercraft:milestones/personal/check_one {id:"s123", score:"ec.sp_ability_variety", t1:10, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s124: Impact Striker (50)
function evercraft:milestones/personal/check_one {id:"s124", score:"ec.sp_impact_hits", t1:50, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s125: Castle Max Floor 50
function evercraft:milestones/personal/check_one {id:"s125", score:"ec.sp_castle_max", t1:50, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s126: Biome Explorer (20 via spirit)
function evercraft:milestones/personal/check_one {id:"s126", score:"ec.sp_biomes", t1:20, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s127: Survival Endurance (100 minutes)
function evercraft:milestones/personal/check_one {id:"s127", score:"ec.sp_survive", t1:100, t2:999999999, t3:999999999, t4:999999999, t5:999999999}

# --- BUDDY SYSTEM ---
# s128: Buddy Bond (reach buddy tier 1)
function evercraft:milestones/personal/check_one {id:"s128", score:"ec.bd_tier", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
# s129: Best Friends Forever (reach buddy tier 6 — max)
function evercraft:milestones/personal/check_one {id:"s129", score:"ec.bd_tier", t1:6, t2:999999999, t3:999999999, t4:999999999, t5:999999999}

# --- HEIST SYSTEM ---
# s130: Heist Veteran (complete a heist)
function evercraft:milestones/personal/check_one {id:"s130", score:"ec.heist_wins", t1:1, t2:999999999, t3:999999999, t4:999999999, t5:999999999}
