# Advantage Trees — Load/Init
# Register all scoreboards, constants, and bootstrap schedules
# Called from load.json on datapack load/reload

# === SKILL LEVELS (0-25 per tree) ===
scoreboard objectives add adv.agility dummy "Agility Level"
scoreboard objectives add adv.dexterity dummy "Dexterity Level"
scoreboard objectives add adv.evasion dummy "Evasion Level"
scoreboard objectives add adv.stealth dummy "Stealth Level"
scoreboard objectives add adv.vitality dummy "Vitality Level"
scoreboard objectives add adv.taskmaster dummy "Taskmaster Level"
scoreboard objectives add adv.beastmaster dummy "Beastmaster Level"
scoreboard objectives add adv.victorian dummy "Victorian Level"
scoreboard objectives add adv.fishing dummy "Fishing Level"
scoreboard objectives add adv.mining dummy "Mining Level"
scoreboard objectives add adv.gathering dummy "Gathering Level"
scoreboard objectives add adv.blacksmith dummy "Blacksmith Level"
scoreboard objectives add adv.explorer dummy "Explorer Level"
scoreboard objectives add adv.culinary dummy "Culinary Level"

# === STAT COUNTERS (tracked via periodic sync or inline increments) ===
scoreboard objectives add adv.stat_walk dummy "Blocks Walked"
scoreboard objectives add adv.stat_place dummy "Blocks Placed"
scoreboard objectives add adv.stat_hit dummy "Times Hit"
scoreboard objectives add adv.stat_crouch dummy "Blocks Crouched"
scoreboard objectives add adv.stat_food dummy "Fruits/Vegs Eaten"
scoreboard objectives add adv.stat_quests dummy "Quests Completed"
scoreboard objectives add adv.stat_pets100 dummy "Pets at Max Level"
scoreboard objectives add adv.stat_mobs dummy "Mobs Slain"
scoreboard objectives add adv.stat_fish dummy "Fish Caught"
scoreboard objectives add adv.stat_mine dummy "Blocks Mined"
scoreboard objectives add adv.stat_harvest dummy "Crops Harvested"
scoreboard objectives add adv.stat_smelt dummy "Items Smelted"
scoreboard objectives add adv.stat_struct dummy "Structure Crates"
scoreboard objectives add adv.stat_trades dummy "Villager Trades"
scoreboard objectives add adv.stat_cook dummy "Meals Cooked"
scoreboard objectives add adv.stat_attack dummy "Attacks Landed"
scoreboard objectives add adv.stat_ranged dummy "Ranged Hits"
scoreboard objectives add adv.stat_ore dummy "Ores Mined"
scoreboard objectives add adv.stat_dmg minecraft.custom:minecraft.damage_taken "Damage Taken"

# === VANILLA STAT CRITERIA SCOREBOARDS (auto-increment by Minecraft) ===
scoreboard objectives add adv.walk_cm minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add adv.crouch_cm minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add adv.fish_ct minecraft.custom:minecraft.fish_caught
scoreboard objectives add adv.mob_kills minecraft.custom:minecraft.mob_kills
scoreboard objectives add adv.furnace_ct minecraft.custom:minecraft.interact_with_furnace
scoreboard objectives add adv.blast_ct minecraft.custom:minecraft.interact_with_blast_furnace
scoreboard objectives add adv.smoker_ct minecraft.custom:minecraft.interact_with_smoker

# === STAT BASELINES (for reset — vanilla stats can't be zeroed, so we subtract these) ===
scoreboard objectives add adv.base_walk dummy "Walk Baseline (cm)"
scoreboard objectives add adv.base_crouch dummy "Crouch Baseline (cm)"
scoreboard objectives add adv.base_fish dummy "Fish Baseline"
scoreboard objectives add adv.base_mobs dummy "Mobs Baseline"
scoreboard objectives add adv.base_mine dummy "Mining Baseline"
scoreboard objectives add adv.base_ore dummy "Ore Mining Baseline"
scoreboard objectives add adv.base_smelt dummy "Smelting Baseline"
scoreboard objectives add adv.base_dmg dummy "Damage Taken Baseline"

# === XP LEVEL READING (for deduction math) ===
scoreboard objectives add adv.xp_levels dummy "XP Levels"

# === SURGE TIMER & TRACKING ===
scoreboard objectives add adv.surge_timer dummy "Mining Surge Timer"
scoreboard objectives add adv.mine_prev dummy "Mine Previous Snapshot"

# === TEMPORARY CALCULATION SCORES ===
scoreboard objectives add adv.temp dummy "Advantage Temp"
scoreboard objectives add adv.req_xp dummy "Required XP"
scoreboard objectives add adv.req_stat dummy "Required Stat"

# === SYNERGY SCOREBOARDS ===
scoreboard objectives add adv.syn_combat dummy "Combat Synergy Active"
scoreboard objectives add adv.syn_gather dummy "Gathering Synergy Active"
scoreboard objectives add adv.syn_utility dummy "Utility Synergy Active"
scoreboard objectives add adv.syn_support dummy "Support Synergy Active"
scoreboard objectives add adv.syn_trance dummy "Battle Trance Timer"
scoreboard objectives add adv.syn_shadow dummy "Shadow Step Timer"
scoreboard objectives add adv.syn_shad_cd dummy "Shadow Step Cooldown"

# === PRESTIGE SCOREBOARDS ===
scoreboard objectives add adv.pres_agil dummy "Agility Prestige"
scoreboard objectives add adv.pres_dext dummy "Dexterity Prestige"
scoreboard objectives add adv.pres_evas dummy "Evasion Prestige"
scoreboard objectives add adv.pres_stea dummy "Stealth Prestige"
scoreboard objectives add adv.pres_vita dummy "Vitality Prestige"
scoreboard objectives add adv.pres_task dummy "Taskmaster Prestige"
scoreboard objectives add adv.pres_beas dummy "Beastmaster Prestige"
scoreboard objectives add adv.pres_vict dummy "Victorian Prestige"
scoreboard objectives add adv.pres_fish dummy "Fishing Prestige"
scoreboard objectives add adv.pres_mine dummy "Mining Prestige"
scoreboard objectives add adv.pres_gath dummy "Gathering Prestige"
scoreboard objectives add adv.pres_blac dummy "Blacksmith Prestige"
scoreboard objectives add adv.pres_expl dummy "Explorer Prestige"
scoreboard objectives add adv.pres_culi dummy "Culinary Prestige"
scoreboard objectives add adv.pres_total dummy "Total Prestige Levels"

# === RESPEC SCOREBOARDS ===
scoreboard objectives add adv.respec_cd dummy "Respec Cooldown (ticks)"

# === COSMETIC SCOREBOARDS ===
scoreboard objectives add adv.cosm_unlock dummy "Cosmetics Unlocked Bitfield"
scoreboard objectives add adv.cosm_active dummy "Active Cosmetic Slot"
scoreboard objectives add adv.cosm_tree dummy "Cosmetic Tree Source"

# === CRATE COSMETIC SCOREBOARDS (S71) ===
scoreboard objectives add adv.cc_particles dummy "Crate Particles Bitfield"
scoreboard objectives add adv.cc_titles dummy "Crate Titles Bitfield"
scoreboard objectives add adv.cc_part1 dummy "Active Crate Particle 1"
scoreboard objectives add adv.cc_part2 dummy "Active Crate Particle 2"
scoreboard objectives add adv.cc_title dummy "Active Crate Title"

# === DEATH DETECTION ===
scoreboard objectives add adv.death deathCount "Advantage Death Detect"

# === GUI PAGE TRACKING ===
scoreboard objectives add adv.gui_page dummy "Advantage GUI Page"
scoreboard objectives add adv.gui_section dummy "Codex Hub Section"
scoreboard objectives add adv.gui_cd dummy "GUI Click Cooldown"
scoreboard objectives add adv.gui_art_tier dummy "Artifact Tier Selection"
scoreboard objectives add adv.gui_art_cat dummy "Artifact Category Selection"
scoreboard objectives add adv.gui_cls_id dummy "Classes GUI Selected Class"

# === CHALLENGE SCOREBOARDS ===
scoreboard objectives add adv.chal_id dummy "Active Challenge ID"
scoreboard objectives add adv.chal_prog dummy "Challenge Progress"
scoreboard objectives add adv.chal_tree dummy "Challenge Tree ID"
scoreboard objectives add adv.chal_75 dummy "Challenge 75% Notified"
scoreboard objectives add adv.chal_cancel dummy "Challenge Cancel Gametime"
scoreboard objectives add adv.chal_aux dummy "Challenge Auxiliary Data"
scoreboard objectives add adv.chal_remind dummy "Challenge Reminder Timer"
scoreboard objectives add adv.chal_lprog dummy "Challenge Last Known Progress"

# === WEEKLY CHALLENGE SCOREBOARDS ===
scoreboard objectives add adv.weekly_tree dummy "Weekly Featured Tree (1-13)"
scoreboard objectives add adv.weekly_done dummy "Weekly Challenge Done (0/1)"
scoreboard objectives add adv.weekly_day dummy "Day Weekly Was Last Rolled"
scoreboard players set #7 adv.temp 7
scoreboard players set #13 adv.temp 13

# Compute initial weekly tree on load: (day / 7) % 13 + 1
execute store result score #adv_weekly_tree adv.temp run time query day
scoreboard players operation #adv_weekly_tree adv.temp /= #7 adv.temp
scoreboard players operation #adv_weekly_tree adv.temp %= #13 adv.temp
scoreboard players add #adv_weekly_tree adv.temp 1
execute store result score #adv_weekly_day adv.temp run time query day

# === TOKEN SCOREBOARDS ===
scoreboard objectives add adv.tokens dummy "Tree Token Balance"
scoreboard objectives add adv.tok_earned dummy "Lifetime Tokens Earned"
scoreboard objectives add adv.tok_spent dummy "Lifetime Tokens Spent"

# === PRESTIGE ABILITY SCOREBOARDS ===
# Agility
scoreboard objectives add adv.pa_agil1 dummy "Agility P1: Sprint Persist"
scoreboard objectives add adv.pa_agil2 dummy "Agility P2: Double Jump"
scoreboard objectives add adv.pa_agil2_cd dummy "Agility P2: Double Jump CD"
scoreboard objectives add adv.pa_agil3 dummy "Agility P3: Dash"
scoreboard objectives add adv.pa_agil3_cd dummy "Agility P3: Dash CD"
# Dexterity
scoreboard objectives add adv.pa_dex1 dummy "Dexterity P1: Quick Draw"
# Evasion
scoreboard objectives add adv.pa_evas3_tm dummy "Evasion P3: Dodge Immunity Timer"
# Stealth
scoreboard objectives add adv.pa_stea3_tm dummy "Stealth P3: Full Invis Timer"
scoreboard objectives add adv.pa_stea3_cd dummy "Stealth P3: Full Invis CD"
# Vitality
scoreboard objectives add adv.pa_vita2_cd dummy "Vitality P2: Death Save CD"
# Taskmaster
scoreboard objectives add adv.pa_task1 dummy "Taskmaster P1: Quest Mastery"
scoreboard objectives add adv.pa_task2 dummy "Taskmaster P2: Diplomat"
scoreboard objectives add adv.pa_task3 dummy "Taskmaster P3: Guild Master"
# Beastmaster
scoreboard objectives add adv.pa_beas1 dummy "Beastmaster P1: Alpha Bond"
scoreboard objectives add adv.pa_beas2 dummy "Beastmaster P2: Pack Tactics"
scoreboard objectives add adv.pa_beas3 dummy "Beastmaster P3: War Cry"
scoreboard objectives add adv.pa_beas3_cd dummy "Beastmaster P3: War Cry CD"
scoreboard objectives add adv.warcry trigger "Beastmaster War Cry Trigger"
# Victorian
scoreboard objectives add adv.pa_vict1_sn dummy "Victorian P1: XP Snapshot"
scoreboard objectives add adv.pa_vict2 dummy "Victorian P2: Critical Loot"
scoreboard objectives add adv.pa_vict3 dummy "Victorian P3: Trophy Hunter"
# Fishing
scoreboard objectives add adv.pa_fish1 dummy "Fishing P1: Water Net"
scoreboard objectives add adv.pa_fish2 dummy "Fishing P2: Second Net"
scoreboard objectives add adv.pa_fish3 dummy "Fishing P3: Master Angler"
scoreboard objectives add adv.pa_cage_ct dummy "Water Net Timer"
# Mining
scoreboard objectives add adv.pa_mine1_tm dummy "Mining P1: Ore Magnet Timer"
scoreboard objectives add adv.pa_mine2 dummy "Mining P2: Ore Doubling"
scoreboard objectives add adv.pa_mine3 dummy "Mining P3: Ancient Ore"
# Gathering
scoreboard objectives add adv.pa_gath1 dummy "Gathering P1: Green Thumb"
scoreboard objectives add adv.pa_gath2 dummy "Gathering P2: Fertile Aura"
scoreboard objectives add adv.pa_gath3 dummy "Gathering P3: Harvest Lord"
# Blacksmith
scoreboard objectives add adv.pa_blac1 dummy "Blacksmith P1: Master Alloy"
scoreboard objectives add adv.pa_blac2 dummy "Blacksmith P2: Efficient Fuel"
scoreboard objectives add adv.pa_blac3 dummy "Blacksmith P3: Auto-Smelt Active"
scoreboard objectives add adv.ore_prev dummy "Auto-Smelt: Ore Total Prev"
scoreboard objectives add adv.smelt_iron_pv dummy "Auto-Smelt: Iron Prev"
scoreboard objectives add adv.smelt_gold_pv dummy "Auto-Smelt: Gold Prev"
scoreboard objectives add adv.smelt_cop_pv dummy "Auto-Smelt: Copper Prev"
# Explorer
scoreboard objectives add adv.pa_expl1 dummy "Explorer P1: Structure Sense"
scoreboard objectives add adv.pa_expl1_cd dummy "Explorer P1: Sense Cooldown"
scoreboard objectives add adv.pa_expl2 dummy "Explorer P2: Cartographer"
scoreboard objectives add adv.pa_expl2_cd dummy "Explorer P2: Cartographer CD"
scoreboard objectives add adv.pa_expl3 dummy "Explorer P3: Wayfinder"
scoreboard objectives add adv.pa_expl3_cd dummy "Explorer P3: Wayfinder CD"
scoreboard objectives add adv.explore trigger "Explorer Ability Trigger"
# Culinary
scoreboard objectives add adv.pa_culi1 dummy "Culinary P1: Hearty Harvest"
scoreboard objectives add adv.pa_culi2 dummy "Culinary P2: Double Portion"
scoreboard objectives add adv.pa_culi3 dummy "Culinary P3: Master Chef"
scoreboard objectives add ec.ck_bonus_pct dummy "Culinary Well-Fed Bonus %"

# === MEAL VARIETY TRACKING (Vitality stat) ===
scoreboard objectives add ec.meal_ate dummy "Last Meal Eaten ID"
scoreboard objectives add ec.meal_h1 dummy "Meal History Slot 1"
scoreboard objectives add ec.meal_h2 dummy "Meal History Slot 2"
scoreboard objectives add ec.meal_h3 dummy "Meal History Slot 3"
scoreboard objectives add ec.meal_h4 dummy "Meal History Slot 4"
scoreboard objectives add ec.meal_h5 dummy "Meal History Slot 5"

# === WISE WANDERER SCOREBOARDS ===
scoreboard objectives add ww.buying dummy "Wise Wanderer Purchase In Progress"

# === CONSTANTS ===
scoreboard players set #1 adv.temp 1
scoreboard players set #2 adv.temp 2
scoreboard players set #3 adv.temp 3
scoreboard players set #4 adv.temp 4
scoreboard players set #12 adv.temp 12
scoreboard players set #15 adv.temp 15
scoreboard players set #20 adv.temp 20
scoreboard players set #25 adv.temp 25
scoreboard players set #75 adv.temp 75
scoreboard players set #100 adv.temp 100
scoreboard players set #625 adv.temp 625
scoreboard players set #1000 adv.temp 1000
scoreboard players set #5000 adv.temp 5000
scoreboard players set #8 adv.temp 8
scoreboard players set #10 adv.temp 10
scoreboard players set #16 adv.temp 16
scoreboard players set #17 adv.temp 17
scoreboard players set #125 adv.temp 125
scoreboard players set #250 adv.temp 250
scoreboard players set #500 adv.temp 500
scoreboard players set #1200 adv.temp 1200
scoreboard players set #3600 adv.temp 3600
scoreboard players set #10000 adv.temp 10000
scoreboard players set #5 adv.temp 5

# Stat multipliers per tree
scoreboard players set #mult_agility adv.temp 4000
scoreboard players set #mult_dexterity adv.temp 4000
scoreboard players set #mult_evasion adv.temp 400
scoreboard players set #mult_stealth adv.temp 2000
scoreboard players set #mult_vitality adv.temp 400
scoreboard players set #mult_taskmaster adv.temp 100
scoreboard players set #mult_beastmaster adv.temp 1
scoreboard players set #mult_victorian adv.temp 2000
scoreboard players set #mult_fishing adv.temp 2000
scoreboard players set #mult_mining adv.temp 40000
scoreboard players set #mult_gathering adv.temp 1000
scoreboard players set #mult_blacksmith adv.temp 2000
scoreboard players set #mult_explorer adv.temp 100
scoreboard players set #mult_culinary adv.temp 50

# === TRIGGER SCOREBOARDS ===
scoreboard objectives add adv.menu trigger "Advantage Menu"
scoreboard objectives add adv.levelup trigger "Advantage Level Up"
scoreboard objectives add adv.prestige trigger "Prestige Trigger"
scoreboard objectives add adv.respec trigger "Respec Trigger"
scoreboard objectives add adv.cosmetic trigger "Cosmetic Toggle"
scoreboard objectives add adv.challenge trigger "Challenge Trigger"
scoreboard objectives add adv.treeinfo trigger "Tree Info Viewer"
scoreboard objectives add adv.guiclear trigger "GUI Clear"
# adv.cosm_tree is dummy (line 87), not a trigger — used for internal cosmetic tree tracking
scoreboard players enable @a adv.menu
scoreboard players enable @a adv.levelup
scoreboard players enable @a adv.prestige
scoreboard players enable @a adv.respec
scoreboard players enable @a adv.cosmetic
scoreboard players enable @a adv.challenge
scoreboard players enable @a adv.treeinfo
scoreboard players enable @a adv.guiclear
scoreboard players enable @a adv.warcry

# === COSMETIC TEAMS (for glow color + title prefix) ===
team add adv.cosm_agility
team modify adv.cosm_agility color aqua
team modify adv.cosm_agility prefix {text:"The Swift ",color:"aqua",italic:true}
team modify adv.cosm_agility friendlyFire false
team add adv.cosm_dexterity
team modify adv.cosm_dexterity color yellow
team modify adv.cosm_dexterity prefix {text:"Sharpshot ",color:"yellow",italic:true}
team modify adv.cosm_dexterity friendlyFire false
team add adv.cosm_evasion
team modify adv.cosm_evasion color white
team modify adv.cosm_evasion prefix {text:"The Untouchable ",color:"white",italic:true}
team modify adv.cosm_evasion friendlyFire false
team add adv.cosm_stealth
team modify adv.cosm_stealth color dark_gray
team modify adv.cosm_stealth prefix {text:"Shadow ",color:"dark_gray",italic:true}
team modify adv.cosm_stealth friendlyFire false
team add adv.cosm_vitality
team modify adv.cosm_vitality color red
team modify adv.cosm_vitality prefix {text:"Ironheart ",color:"red",italic:true}
team modify adv.cosm_vitality friendlyFire false
team add adv.cosm_taskmaster
team modify adv.cosm_taskmaster color dark_purple
team modify adv.cosm_taskmaster prefix {text:"Questlord ",color:"dark_purple",italic:true}
team modify adv.cosm_taskmaster friendlyFire false
team add adv.cosm_beastmaster
team modify adv.cosm_beastmaster color green
team modify adv.cosm_beastmaster prefix {text:"The Wild ",color:"green",italic:true}
team modify adv.cosm_beastmaster friendlyFire false
team add adv.cosm_victorian
team modify adv.cosm_victorian color dark_red
team modify adv.cosm_victorian prefix {text:"Warlord ",color:"dark_red",italic:true}
team modify adv.cosm_victorian friendlyFire false
team add adv.cosm_fishing
team modify adv.cosm_fishing color blue
team modify adv.cosm_fishing prefix {text:"Master Fisher ",color:"blue",italic:true}
team modify adv.cosm_fishing friendlyFire false
team add adv.cosm_mining
team modify adv.cosm_mining color gold
team modify adv.cosm_mining prefix {text:"Ore Lord ",color:"gold",italic:true}
team modify adv.cosm_mining friendlyFire false
team add adv.cosm_gathering
team modify adv.cosm_gathering color green
team modify adv.cosm_gathering prefix {text:"Harvest King ",color:"green",italic:true}
team modify adv.cosm_gathering friendlyFire false
team add adv.cosm_blacksmith
team modify adv.cosm_blacksmith color gray
team modify adv.cosm_blacksmith prefix {text:"Forgemaster ",color:"gray",italic:true}
team modify adv.cosm_blacksmith friendlyFire false
team add adv.cosm_explorer
team modify adv.cosm_explorer color dark_aqua
team modify adv.cosm_explorer prefix {text:"Wayfinder ",color:"dark_aqua",italic:true}
team modify adv.cosm_explorer friendlyFire false
team add adv.cosm_culinary
team modify adv.cosm_culinary color green
team modify adv.cosm_culinary prefix {text:"Chef ",color:"green",italic:true}
team modify adv.cosm_culinary friendlyFire false

# === CRATE COSMETIC TEAMS (S71 — 18 exclusive titles) ===
team add adv.cc_dreamwalker
team modify adv.cc_dreamwalker color light_purple
team modify adv.cc_dreamwalker prefix {text:"Dreamwalker ",color:"light_purple",italic:true}
team modify adv.cc_dreamwalker friendlyFire false
team add adv.cc_stargazer
team modify adv.cc_stargazer color blue
team modify adv.cc_stargazer prefix {text:"Stargazer ",color:"blue",italic:true}
team modify adv.cc_stargazer friendlyFire false
team add adv.cc_ancient
team modify adv.cc_ancient color dark_green
team modify adv.cc_ancient prefix {text:"The Ancient ",color:"dark_green",italic:true}
team modify adv.cc_ancient friendlyFire false
team add adv.cc_moonblessed
team modify adv.cc_moonblessed color aqua
team modify adv.cc_moonblessed prefix {text:"Moonblessed ",color:"aqua",italic:true}
team modify adv.cc_moonblessed friendlyFire false
team add adv.cc_nightborn
team modify adv.cc_nightborn color dark_gray
team modify adv.cc_nightborn prefix {text:"Nightborn ",color:"dark_gray",italic:true}
team modify adv.cc_nightborn friendlyFire false
team add adv.cc_sunforged
team modify adv.cc_sunforged color gold
team modify adv.cc_sunforged prefix {text:"Sunforged ",color:"gold",italic:true}
team modify adv.cc_sunforged friendlyFire false
team add adv.cc_eternal
team modify adv.cc_eternal color dark_purple
team modify adv.cc_eternal prefix {text:"The Eternal ",color:"dark_purple",italic:true}
team modify adv.cc_eternal friendlyFire false
team add adv.cc_stormchaser
team modify adv.cc_stormchaser color yellow
team modify adv.cc_stormchaser prefix {text:"Stormchaser ",color:"yellow",italic:true}
team modify adv.cc_stormchaser friendlyFire false
team add adv.cc_frostbitten
team modify adv.cc_frostbitten color white
team modify adv.cc_frostbitten prefix {text:"Frostbitten ",color:"white",italic:true}
team modify adv.cc_frostbitten friendlyFire false
team add adv.cc_flameheart
team modify adv.cc_flameheart color dark_red
team modify adv.cc_flameheart prefix {text:"Flameheart ",color:"dark_red",italic:true}
team modify adv.cc_flameheart friendlyFire false
team add adv.cc_tidecaller
team modify adv.cc_tidecaller color dark_aqua
team modify adv.cc_tidecaller prefix {text:"Tidecaller ",color:"dark_aqua",italic:true}
team modify adv.cc_tidecaller friendlyFire false
team add adv.cc_earthshaker
team modify adv.cc_earthshaker color green
team modify adv.cc_earthshaker prefix {text:"Earthshaker ",color:"green",italic:true}
team modify adv.cc_earthshaker friendlyFire false
team add adv.cc_voidtouched
team modify adv.cc_voidtouched color dark_blue
team modify adv.cc_voidtouched prefix {text:"Voidtouched ",color:"dark_blue",italic:true}
team modify adv.cc_voidtouched friendlyFire false
team add adv.cc_wyrmborn
team modify adv.cc_wyrmborn color red
team modify adv.cc_wyrmborn prefix {text:"Wyrmborn ",color:"red",italic:true}
team modify adv.cc_wyrmborn friendlyFire false
team add adv.cc_undying
team modify adv.cc_undying color dark_gray
team modify adv.cc_undying prefix {text:"The Undying ",color:"dark_gray",italic:true,bold:true}
team modify adv.cc_undying friendlyFire false
team add adv.cc_spiritbound
team modify adv.cc_spiritbound color aqua
team modify adv.cc_spiritbound prefix {text:"Spiritbound ",color:"aqua",italic:true}
team modify adv.cc_spiritbound friendlyFire false
team add adv.cc_dawnbringer
team modify adv.cc_dawnbringer color gold
team modify adv.cc_dawnbringer prefix {text:"Dawnbringer ",color:"gold",italic:true,bold:true}
team modify adv.cc_dawnbringer friendlyFire false
team add adv.cc_forsaken
team modify adv.cc_forsaken color dark_red
team modify adv.cc_forsaken prefix {text:"The Forsaken ",color:"dark_red",italic:true,bold:true}
team modify adv.cc_forsaken friendlyFire false

# === BOOTSTRAP SCHEDULES ===
schedule function evercraft:advantage/track/sync_stats 5s
schedule function evercraft:advantage/tick/main 1s
schedule function evercraft:advantage/beastmaster/wolf_tick 20t
