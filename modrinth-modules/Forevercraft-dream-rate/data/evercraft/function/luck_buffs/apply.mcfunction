# Apply dream rate buffs to individual player based on time/weather/moon
# Run as each player
# Slow daylight: morning 0-6000, noon 6000-13000, night 13000-23000, dawn 23000-24000
# Uses #visual_time ec.var (0-24000) set by luck_buffs/tick

# OPT: Skip 8 attribute removes if player had no time-based buffs last tick
# (most players aren't holding fishing rods or swords — saves 8 modifier remove calls)
execute if entity @s[tag=ec.has_time_dr] run attribute @s luck modifier remove ec_rain_fishing_luck
execute if entity @s[tag=ec.has_time_dr] run attribute @s luck modifier remove ec_fullmoon_fishing_luck
execute if entity @s[tag=ec.has_time_dr] run attribute @s luck modifier remove ec_morning_fishing_luck
execute if entity @s[tag=ec.has_time_dr] run attribute @s luck modifier remove ec_noon_harvest_luck
execute if entity @s[tag=ec.has_time_dr] run attribute @s luck modifier remove ec_night_mob_luck
execute if entity @s[tag=ec.has_time_dr] run attribute @s luck modifier remove ec_newmoon_mob_luck
execute if entity @s[tag=ec.has_time_dr] run attribute @s luck modifier remove ec_luck_potion_bonus
execute if entity @s[tag=ec.has_time_dr] run attribute @s luck modifier remove ec_enchant_dream_luck
tag @s remove ec.has_time_dr

# === FISHING DREAM RATE BUFFS ===

# Rain: +0.5 fishing dream rate (when raining and player has fishing rod in hand)
execute if predicate evercraft:is_raining if items entity @s weapon.mainhand minecraft:fishing_rod run attribute @s luck modifier add ec_rain_fishing_luck 0.5 add_value
execute if predicate evercraft:is_raining if items entity @s weapon.mainhand minecraft:fishing_rod run tag @s add ec.has_time_dr

# Full Moon (phase 0): +0.5 fishing dream rate at night with fishing rod
execute if score #moon_phase ec.var matches 0 if score #visual_time ec.var matches 13000..23000 if items entity @s weapon.mainhand minecraft:fishing_rod run attribute @s luck modifier add ec_fullmoon_fishing_luck 0.5 add_value
execute if score #moon_phase ec.var matches 0 if score #visual_time ec.var matches 13000..23000 if items entity @s weapon.mainhand minecraft:fishing_rod run tag @s add ec.has_time_dr

# Morning (0-6000): +0.5 fishing dream rate with fishing rod
execute if score #visual_time ec.var matches 0..6000 if items entity @s weapon.mainhand minecraft:fishing_rod run attribute @s luck modifier add ec_morning_fishing_luck 0.5 add_value
execute if score #visual_time ec.var matches 0..6000 if items entity @s weapon.mainhand minecraft:fishing_rod run tag @s add ec.has_time_dr

# === HARVESTING/MINING DREAM RATE BUFF ===

# Noon to Evening (6000-13000): +1.0 dream rate for mining/harvesting/gathering
# OPT: Short-circuit after first tool type match (was 4 checks always, now 1-4)
execute if score #visual_time ec.var matches 6000..13000 run function evercraft:luck_buffs/check_noon_harvest

# === MOB LOOT DREAM RATE BUFFS ===

# Night (13000-23000): +0.5 dream rate for mob loot (holding sword)
execute if score #visual_time ec.var matches 13000..23000 if items entity @s weapon.mainhand #minecraft:swords run attribute @s luck modifier add ec_night_mob_luck 0.5 add_value
execute if score #visual_time ec.var matches 13000..23000 if items entity @s weapon.mainhand #minecraft:swords run tag @s add ec.has_time_dr

# New Moon (phase 4): +0.5 dream rate for mob loot at night
execute if score #moon_phase ec.var matches 4 if score #visual_time ec.var matches 13000..23000 if items entity @s weapon.mainhand #minecraft:swords run attribute @s luck modifier add ec_newmoon_mob_luck 0.5 add_value

# === HARVEST MOON DREAM RATE BUFF ===
# +1.5 dream rate during harvest moon nights
attribute @s luck modifier remove ec_harvest_moon_luck
execute if score #ec_harvest_moon ec.var matches 1 run attribute @s luck modifier add ec_harvest_moon_luck 1.5 add_value

# === ENCHANTMENT DREAM RATE SENSOR ===
# OPT: Moved to sub-function with return run (was ~19 predicate evals, now ~8-10)
function evercraft:luck_buffs/check_enchant_dream

# === LUCK POTION EFFECT DREAM RATE BONUS ===
# We provide the full dream rate in apply_potion (amplifier + 1).
# Vanilla Luck effect modifier (minecraft:effect.luck) is also neutralized there.
# OPT: Single existence gate — skip checks when no luck potion active (common case)
execute if entity @s[nbt={active_effects:[{id:"minecraft:luck"}]}] run function evercraft:luck_buffs/apply_potion

# OPT: Snapshot luck score for loot tables (moved from per-tick treasure/tick_player)
execute store result score @s ec.luck run attribute @s luck get 1
