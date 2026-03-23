# Advantage Trees — 1s Tick Schedule
# Handles stealth speed toggle and other per-second checks

schedule function evercraft:advantage/tick/main 1s

# === DEATH DETECTION: re-apply all prestige effects on respawn ===
# OPT: 3 @a[scores={adv.death=1..}] scans → 1 per-player function
execute as @a[scores={adv.death=1..}] run function evercraft:advantage/tick/on_death

# Stealth: apply/remove sneak speed boost + P2 backstab + P1 invis
# OPT: 4 @a[stealth] scans → 1 per-player dispatch
execute as @a[scores={adv.stealth=1..}] run function evercraft:advantage/tick/stealth_tick

# Blacksmith: speed up nearby furnaces
function evercraft:advantage/blacksmith/check_furnace

# === EXPANSION SYSTEMS ===
# Synergies: check multi-tree combo requirements (only for players with advantage levels)
execute as @a[scores={adv.total_levels=1..}] run function evercraft:advantage/synergies/check_all

# Cosmetics: apply active cosmetic effects
execute as @a[scores={adv.cosm_active=1..}] at @s run function evercraft:advantage/cosmetics/tick

# Crate Cosmetics: apply active crate particle effects
execute as @a[scores={adv.cc_part1=1..}] at @s run function evercraft:advantage/cosmetics/crate_particles_tick

# Weekly challenge rotation (check once per day at dawn)
execute store result score #wk_day adv.temp run time query day
execute unless score #wk_day adv.temp = #adv_weekly_day adv.temp run function evercraft:advantage/challenges/weekly/check_rotation

# Challenges: track active challenge progress + periodic reminder
execute as @a[scores={adv.chal_id=1..}] run function evercraft:advantage/challenges/check_progress
execute as @a[scores={adv.chal_id=1..}] run function evercraft:advantage/challenges/periodic_reminder

# Tokens: sync physical token count to scoreboard (for display)
# OPT: every 5s instead of 1s — token counts rarely change mid-gameplay
scoreboard players add #token_sync ec.var 1
execute if score #token_sync ec.var matches 5.. as @a run function evercraft:advantage/tokens/sync_balance
execute if score #token_sync ec.var matches 5.. run scoreboard players set #token_sync ec.var 0

# === ALL COOLDOWN DECREMENTS (batched into single @a scan) ===
# OPT: Was 10 separate @a scans for cooldowns — now 1
# NOTE: Cannot gate on total_levels — respec sets total_levels=0 but leaves respec_cd running
execute as @a run function evercraft:advantage/tick/cooldowns

# === PRESTIGE ABILITY TICKS ===
# Vitality P1: Regen I when below 50% HP
execute as @a[scores={adv.pres_vita=1..}] at @s if predicate evercraft:advantage/is_low_hp run effect give @s minecraft:regeneration 2 0 true

# Vitality P2: Death save — when health drops below 4 HP (2 hearts), auto-heal
execute as @a[scores={adv.pres_vita=2..,adv.pa_vita2_cd=0}] at @s if predicate evercraft:advantage/is_critical_hp run function evercraft:advantage/prestige/abilities/death_save_trigger

# Stealth P1 invis moved to advantage/tick/stealth_tick (consolidated with speed/backstab)

# Agility P1: Sprint persist — speed effect after stopping sprint
execute as @a[scores={adv.pa_agil1=1..}] at @s run function evercraft:advantage/prestige/abilities/sprint_persist_tick

# Agility P2: Double Jump — levitation burst when sneaking while airborne
execute as @a[scores={adv.pa_agil2=1,adv.pa_agil2_cd=0}] at @s if predicate evercraft:advantage/is_sneaking if predicate evercraft:advantage/is_airborne run function evercraft:advantage/prestige/abilities/double_jump

# Agility P3: Dash — teleport 10 blocks forward when sprinting + sneaking
execute as @a[scores={adv.pa_agil3=1,adv.pa_agil3_cd=0}] at @s if predicate evercraft:advantage/is_sneaking if predicate evercraft:advantage/is_sprinting run function evercraft:advantage/prestige/abilities/dash

# Victorian P1: XP boost tracking (25% more XP)
execute as @a[scores={adv.pres_vict=1..}] run function evercraft:advantage/prestige/abilities/xp_boost_tick

# Explorer P1: Structure Sense — alert when near a structure (every 5s, with 30s cooldown)
execute as @a[scores={adv.pa_expl1=1,adv.pa_expl1_cd=0}] at @s run function evercraft:advantage/prestige/abilities/structure_sense

# Gathering P2: Fertile Aura — 25% crop growth in 16-block radius (skip if P3 active)
execute as @a[scores={adv.pa_gath2=1,adv.pa_gath3=0}] at @s run function evercraft:advantage/prestige/abilities/fertile_aura

# Gathering P3: Harvest Lord Aura — 50% crop growth in 32-block radius (supersedes P2)
execute as @a[scores={adv.pa_gath3=1}] at @s run function evercraft:advantage/prestige/abilities/harvest_lord_aura

# Mining P1: Ore magnet — pull ore drops to player
execute as @a[scores={adv.pres_mine=1..}] at @s run function evercraft:advantage/prestige/abilities/ore_magnet_tick

# Water Net: tick all active nets
# OPT: Existence gate — nets are rare, skip entity scan most seconds
execute if entity @e[type=marker,tag=WaterNet,limit=1] as @e[type=marker,tag=WaterNet] at @s run function evercraft:advantage/prestige/abilities/water_net_tick
