# Trade Trial — Complete! Player reached the target score
# Run as/at: the player

# === VICTORY EFFECTS ===
title @s times 10 40 10
title @s title [{"text":"TRIAL ","color":"gold","bold":true},{"text":"COMPLETE!","color":"green","bold":true}]
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1.0
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.0
particle minecraft:totem_of_undying ~ ~1 ~ 1 1 1 0.5 100

# === HARD MODE BONUS EFFECTS ===
execute if score @s ec.tt_hard_mode matches 1 run title @s subtitle [{"text":"HARD MODE","color":"red","bold":true}]
execute if score @s ec.tt_hard_mode matches 1 run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.3 1.5
execute if score @s ec.tt_hard_mode matches 1 run particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.1 30

# === SPEED CLEAR DETECTION ===
# Speed clear = finished with >50% time remaining
# ec.tt_timer holds remaining time (positive = time left before completion countdown)
# We need to compare timer vs original max. Store max in temp.
execute store result score #tt_max_timer ec.var run bossbar get evercraft:trial_timer max
scoreboard players operation #tt_half ec.var = #tt_max_timer ec.var
scoreboard players operation #tt_half ec.var /= #2 ec.const
# If remaining timer > half of max, it's a speed clear
execute if score @s ec.tt_timer > #tt_half ec.var run scoreboard players add @s ec.tt_speed_clear 1
execute if score @s ec.tt_timer > #tt_half ec.var run tellraw @s [{"text":"  "},{"text":"\u26a1 SPEED CLEAR!","color":"yellow","bold":true},{"text":" — Finished with over half the time remaining!","color":"gray"}]
execute if score @s ec.tt_timer > #tt_half ec.var run playsound minecraft:entity.firework_rocket.twinkle master @s ~ ~ ~ 1 1.5

# === UPDATE BEST TIER ===
# Track if this is a NEW best (first clear of this tier)
scoreboard players set @s ec.tt_first_clear 0
execute if score @s ec.tt_type matches 1 if score @s ec.tt_tier > @s ec.tt_m_best run scoreboard players set @s ec.tt_first_clear 1
execute if score @s ec.tt_type matches 2 if score @s ec.tt_tier > @s ec.tt_farm_best run scoreboard players set @s ec.tt_first_clear 1
execute if score @s ec.tt_type matches 3 if score @s ec.tt_tier > @s ec.tt_fish_best run scoreboard players set @s ec.tt_first_clear 1
execute if score @s ec.tt_type matches 4 if score @s ec.tt_tier > @s ec.tt_build_best run scoreboard players set @s ec.tt_first_clear 1
execute if score @s ec.tt_type matches 5 if score @s ec.tt_tier > @s ec.tt_lumb_best run scoreboard players set @s ec.tt_first_clear 1
execute if score @s ec.tt_type matches 6 if score @s ec.tt_tier > @s ec.tt_art_best run scoreboard players set @s ec.tt_first_clear 1

# Actually update best
execute if score @s ec.tt_type matches 1 if score @s ec.tt_tier > @s ec.tt_m_best run scoreboard players operation @s ec.tt_m_best = @s ec.tt_tier
execute if score @s ec.tt_type matches 2 if score @s ec.tt_tier > @s ec.tt_farm_best run scoreboard players operation @s ec.tt_farm_best = @s ec.tt_tier
execute if score @s ec.tt_type matches 3 if score @s ec.tt_tier > @s ec.tt_fish_best run scoreboard players operation @s ec.tt_fish_best = @s ec.tt_tier
execute if score @s ec.tt_type matches 4 if score @s ec.tt_tier > @s ec.tt_build_best run scoreboard players operation @s ec.tt_build_best = @s ec.tt_tier
execute if score @s ec.tt_type matches 5 if score @s ec.tt_tier > @s ec.tt_lumb_best run scoreboard players operation @s ec.tt_lumb_best = @s ec.tt_tier
execute if score @s ec.tt_type matches 6 if score @s ec.tt_tier > @s ec.tt_art_best run scoreboard players operation @s ec.tt_art_best = @s ec.tt_tier

# === MASTERY CHECK ===
# Count how many categories have best=10 (mastered)
scoreboard players set @s ec.tt_mastery 0
execute if score @s ec.tt_m_best matches 10 run scoreboard players add @s ec.tt_mastery 1
execute if score @s ec.tt_farm_best matches 10 run scoreboard players add @s ec.tt_mastery 1
execute if score @s ec.tt_fish_best matches 10 run scoreboard players add @s ec.tt_mastery 1
execute if score @s ec.tt_build_best matches 10 run scoreboard players add @s ec.tt_mastery 1
execute if score @s ec.tt_lumb_best matches 10 run scoreboard players add @s ec.tt_mastery 1
execute if score @s ec.tt_art_best matches 10 run scoreboard players add @s ec.tt_mastery 1

# Category mastery announcement (only on first T10 clear)
execute if score @s ec.tt_first_clear matches 1 if score @s ec.tt_tier matches 10 run function evercraft:craftforever/trials/mastery_announce

# === GRANT REWARDS ===
# Artisan XP — first clear gets full XP, repeat gets 25%
# First clear XP
execute if score @s ec.tt_first_clear matches 1 if score @s ec.tt_tier matches 1 run scoreboard players add @s ec.cf_xp 50
execute if score @s ec.tt_first_clear matches 1 if score @s ec.tt_tier matches 2 run scoreboard players add @s ec.cf_xp 100
execute if score @s ec.tt_first_clear matches 1 if score @s ec.tt_tier matches 3 run scoreboard players add @s ec.cf_xp 150
execute if score @s ec.tt_first_clear matches 1 if score @s ec.tt_tier matches 4 run scoreboard players add @s ec.cf_xp 250
execute if score @s ec.tt_first_clear matches 1 if score @s ec.tt_tier matches 5 run scoreboard players add @s ec.cf_xp 400
execute if score @s ec.tt_first_clear matches 1 if score @s ec.tt_tier matches 6 run scoreboard players add @s ec.cf_xp 600
execute if score @s ec.tt_first_clear matches 1 if score @s ec.tt_tier matches 7 run scoreboard players add @s ec.cf_xp 800
execute if score @s ec.tt_first_clear matches 1 if score @s ec.tt_tier matches 8 run scoreboard players add @s ec.cf_xp 1000
execute if score @s ec.tt_first_clear matches 1 if score @s ec.tt_tier matches 9 run scoreboard players add @s ec.cf_xp 1500
execute if score @s ec.tt_first_clear matches 1 if score @s ec.tt_tier matches 10 run scoreboard players add @s ec.cf_xp 5000

# Repeat clear XP (25% of first clear)
execute unless score @s ec.tt_first_clear matches 1 if score @s ec.tt_tier matches 1 run scoreboard players add @s ec.cf_xp 12
execute unless score @s ec.tt_first_clear matches 1 if score @s ec.tt_tier matches 2 run scoreboard players add @s ec.cf_xp 25
execute unless score @s ec.tt_first_clear matches 1 if score @s ec.tt_tier matches 3 run scoreboard players add @s ec.cf_xp 37
execute unless score @s ec.tt_first_clear matches 1 if score @s ec.tt_tier matches 4 run scoreboard players add @s ec.cf_xp 62
execute unless score @s ec.tt_first_clear matches 1 if score @s ec.tt_tier matches 5 run scoreboard players add @s ec.cf_xp 100
execute unless score @s ec.tt_first_clear matches 1 if score @s ec.tt_tier matches 6 run scoreboard players add @s ec.cf_xp 150
execute unless score @s ec.tt_first_clear matches 1 if score @s ec.tt_tier matches 7 run scoreboard players add @s ec.cf_xp 200
execute unless score @s ec.tt_first_clear matches 1 if score @s ec.tt_tier matches 8 run scoreboard players add @s ec.cf_xp 250
execute unless score @s ec.tt_first_clear matches 1 if score @s ec.tt_tier matches 9 run scoreboard players add @s ec.cf_xp 375
execute unless score @s ec.tt_first_clear matches 1 if score @s ec.tt_tier matches 10 run scoreboard players add @s ec.cf_xp 1250

# Hard mode bonus: +50% XP on top (applied to both first and repeat)
execute if score @s ec.tt_hard_mode matches 1 if score @s ec.tt_tier matches 1 run scoreboard players add @s ec.cf_xp 25
execute if score @s ec.tt_hard_mode matches 1 if score @s ec.tt_tier matches 2 run scoreboard players add @s ec.cf_xp 50
execute if score @s ec.tt_hard_mode matches 1 if score @s ec.tt_tier matches 3 run scoreboard players add @s ec.cf_xp 75
execute if score @s ec.tt_hard_mode matches 1 if score @s ec.tt_tier matches 4 run scoreboard players add @s ec.cf_xp 125
execute if score @s ec.tt_hard_mode matches 1 if score @s ec.tt_tier matches 5 run scoreboard players add @s ec.cf_xp 200
execute if score @s ec.tt_hard_mode matches 1 if score @s ec.tt_tier matches 6 run scoreboard players add @s ec.cf_xp 300
execute if score @s ec.tt_hard_mode matches 1 if score @s ec.tt_tier matches 7 run scoreboard players add @s ec.cf_xp 400
execute if score @s ec.tt_hard_mode matches 1 if score @s ec.tt_tier matches 8 run scoreboard players add @s ec.cf_xp 500
execute if score @s ec.tt_hard_mode matches 1 if score @s ec.tt_tier matches 9 run scoreboard players add @s ec.cf_xp 750
execute if score @s ec.tt_hard_mode matches 1 if score @s ec.tt_tier matches 10 run scoreboard players add @s ec.cf_xp 2500

# Category-specific material rewards (first clear only)
execute if score @s ec.tt_first_clear matches 1 if score @s ec.tt_type matches 1 run function evercraft:craftforever/trials/types/mining/reward
execute if score @s ec.tt_first_clear matches 1 if score @s ec.tt_type matches 2 run function evercraft:craftforever/trials/types/farming/reward
execute if score @s ec.tt_first_clear matches 1 if score @s ec.tt_type matches 3 run function evercraft:craftforever/trials/types/fishing/reward
execute if score @s ec.tt_first_clear matches 1 if score @s ec.tt_type matches 4 run function evercraft:craftforever/trials/types/building/reward
execute if score @s ec.tt_first_clear matches 1 if score @s ec.tt_type matches 5 run function evercraft:craftforever/trials/types/lumber/reward
execute if score @s ec.tt_first_clear matches 1 if score @s ec.tt_type matches 6 run function evercraft:craftforever/trials/types/artisan/reward

# Coin reward (tier-scaled — always granted)
function evercraft:coins/trial_reward

# Crate coins (always granted, hard mode doubles)
execute if score @s ec.tt_tier matches 1..3 run scoreboard players add @s ic.coins 1
execute if score @s ec.tt_tier matches 1..3 unless score @s ec.tt_hard_mode matches 1 run tellraw @s [{"text":"  \u2726 ","color":"gold"},{"text":"+1 Crate Coin","color":"yellow"},{"text":" earned!","color":"gray"}]
execute if score @s ec.tt_tier matches 4..6 run scoreboard players add @s ic.coins 2
execute if score @s ec.tt_tier matches 4..6 unless score @s ec.tt_hard_mode matches 1 run tellraw @s [{"text":"  \u2726 ","color":"gold"},{"text":"+2 Crate Coins","color":"yellow"},{"text":" earned!","color":"gray"}]
execute if score @s ec.tt_tier matches 7..8 run scoreboard players add @s ic.coins 3
execute if score @s ec.tt_tier matches 7..8 unless score @s ec.tt_hard_mode matches 1 run tellraw @s [{"text":"  \u2726 ","color":"gold"},{"text":"+3 Crate Coins","color":"yellow"},{"text":" earned!","color":"gray"}]
execute if score @s ec.tt_tier matches 9 run scoreboard players add @s ic.coins 5
execute if score @s ec.tt_tier matches 9 unless score @s ec.tt_hard_mode matches 1 run tellraw @s [{"text":"  \u2726 ","color":"gold"},{"text":"+5 Crate Coins","color":"yellow"},{"text":" earned!","color":"gray"}]
execute if score @s ec.tt_tier matches 10 run scoreboard players add @s ic.coins 8
execute if score @s ec.tt_tier matches 10 unless score @s ec.tt_hard_mode matches 1 run tellraw @s [{"text":"  \u2726 ","color":"gold"},{"text":"+8 Crate Coins","color":"yellow"},{"text":" earned!","color":"gray"}]

# Hard mode double coins
execute if score @s ec.tt_hard_mode matches 1 if score @s ec.tt_tier matches 1..3 run scoreboard players add @s ic.coins 1
execute if score @s ec.tt_hard_mode matches 1 if score @s ec.tt_tier matches 4..6 run scoreboard players add @s ic.coins 2
execute if score @s ec.tt_hard_mode matches 1 if score @s ec.tt_tier matches 7..8 run scoreboard players add @s ic.coins 3
execute if score @s ec.tt_hard_mode matches 1 if score @s ec.tt_tier matches 9 run scoreboard players add @s ic.coins 5
execute if score @s ec.tt_hard_mode matches 1 if score @s ec.tt_tier matches 10 run scoreboard players add @s ic.coins 8
execute if score @s ec.tt_hard_mode matches 1 if score @s ec.tt_tier matches 1..3 run tellraw @s [{"text":"  \u2726 ","color":"gold"},{"text":"+2 Crate Coins","color":"red"},{"text":" (Hard Mode!)","color":"gray"}]
execute if score @s ec.tt_hard_mode matches 1 if score @s ec.tt_tier matches 4..6 run tellraw @s [{"text":"  \u2726 ","color":"gold"},{"text":"+4 Crate Coins","color":"red"},{"text":" (Hard Mode!)","color":"gray"}]
execute if score @s ec.tt_hard_mode matches 1 if score @s ec.tt_tier matches 7..8 run tellraw @s [{"text":"  \u2726 ","color":"gold"},{"text":"+6 Crate Coins","color":"red"},{"text":" (Hard Mode!)","color":"gray"}]
execute if score @s ec.tt_hard_mode matches 1 if score @s ec.tt_tier matches 9 run tellraw @s [{"text":"  \u2726 ","color":"gold"},{"text":"+10 Crate Coins","color":"red"},{"text":" (Hard Mode!)","color":"gray"}]
execute if score @s ec.tt_hard_mode matches 1 if score @s ec.tt_tier matches 10 run tellraw @s [{"text":"  \u2726 ","color":"gold"},{"text":"+16 Crate Coins","color":"red"},{"text":" (Hard Mode!)","color":"gray"}]

execute run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.5

# High-tier crate bonus (first clear only)
execute if score @s ec.tt_first_clear matches 1 if score @s ec.tt_tier matches 7..8 run loot give @s loot evercraft:artifacts/rare/main
execute if score @s ec.tt_first_clear matches 1 if score @s ec.tt_tier matches 7..8 run tellraw @s [{"text":"  \u2605 ","color":"aqua"},{"text":"Rare Artifact","color":"aqua","bold":true},{"text":" \u2014 High Trial Bonus!","color":"gray"}]
execute if score @s ec.tt_first_clear matches 1 if score @s ec.tt_tier matches 9 run loot give @s loot evercraft:artifacts/ornate/main
execute if score @s ec.tt_first_clear matches 1 if score @s ec.tt_tier matches 9 run tellraw @s [{"text":"  \u2605 ","color":"dark_purple"},{"text":"Ornate Artifact","color":"dark_purple","bold":true},{"text":" \u2014 Master Trial Bonus!","color":"gray"}]
execute if score @s ec.tt_first_clear matches 1 if score @s ec.tt_tier matches 10 run loot give @s loot evercraft:artifacts/exquisite/main
execute if score @s ec.tt_first_clear matches 1 if score @s ec.tt_tier matches 10 run tellraw @s [{"text":"  \u2605 ","color":"gold"},{"text":"Exquisite Artifact","color":"gold","bold":true},{"text":" \u2014 Grand Trial Bonus!","color":"gold"}]

# === DAILY CHALLENGE BONUS ===
# Check if this trial matches the daily challenge
execute store result score #tt_daily_match ec.var run scoreboard players get @s ec.tt_type
scoreboard players operation #tt_daily_match ec.var -= @s ec.tt_daily_type
execute if score #tt_daily_match ec.var matches 0 store result score #tt_daily_tier_match ec.var run scoreboard players get @s ec.tt_tier
execute if score #tt_daily_match ec.var matches 0 run scoreboard players operation #tt_daily_tier_match ec.var -= @s ec.tt_daily_tier
execute if score #tt_daily_match ec.var matches 0 if score #tt_daily_tier_match ec.var matches 0 unless score @s ec.tt_daily_done matches 1 run function evercraft:craftforever/trials/daily_complete

# Announce in chat
execute store result storage evercraft:trials tier int 1 run scoreboard players get @s ec.tt_tier
execute if score @s ec.tt_type matches 1 run data modify storage evercraft:trials trial_name set value "Mining"
execute if score @s ec.tt_type matches 2 run data modify storage evercraft:trials trial_name set value "Farming"
execute if score @s ec.tt_type matches 3 run data modify storage evercraft:trials trial_name set value "Fishing"
execute if score @s ec.tt_type matches 4 run data modify storage evercraft:trials trial_name set value "Building"
execute if score @s ec.tt_type matches 5 run data modify storage evercraft:trials trial_name set value "Lumber"
execute if score @s ec.tt_type matches 6 run data modify storage evercraft:trials trial_name set value "Artisan"
execute if score @s ec.tt_hard_mode matches 1 run data modify storage evercraft:trials hard set value " [HARD]"
execute unless score @s ec.tt_hard_mode matches 1 run data modify storage evercraft:trials hard set value ""
function evercraft:craftforever/trials/announce_complete with storage evercraft:trials

# === MILESTONE TRACKING ===
scoreboard players add @s ec.tt_completed 1
execute if score @s ec.tt_hard_mode matches 1 run scoreboard players add @s ec.tt_hard_wins 1
execute if score @s ec.tt_is_daily matches 1 run scoreboard players add @s ec.tt_daily_wins 1

# === LOCKOUT (7-day per trial type, skip if daily challenge) ===
execute unless score @s ec.tt_is_daily matches 1 run function evercraft:craftforever/trials/lockout/set

# === DAILY CHALLENGE COMPLETION FLAG ===
execute if score @s ec.tt_is_daily matches 1 run scoreboard players set @s ec.daily_done 1

# === CLEANUP ===
tag @s add ec.tt_complete
scoreboard players set @s ec.tt_timer -60
