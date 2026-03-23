# Reaper — Apply passive effects based on alignment tier
# Run as player at player (from 60s tick)

# Save old tier for change detection
scoreboard players operation #rp_old_tier rp.temp = @s rp.tier

# Compute current tier
function evercraft:reaper/title/compute

# Announce tier changes (Villain/Peacemonger milestones, neutral returns)
execute unless score @s rp.tier = #rp_old_tier rp.temp run function evercraft:reaper/title/announce_change

# === VILLAIN EFFECTS ===
# Mob pacification (infamy >= 3000, tier -3 or lower)
execute if score @s rp.tier matches ..-3 run function evercraft:reaper/effects/villain/mob_pacify

# Iron golem aggro (infamy >= 2000, tier -2 or lower)
execute if score @s rp.tier matches ..-2 run function evercraft:reaper/effects/villain/golem_aggro

# === PEACEMONGER EFFECTS ===
# Hero of the Village (renown >= 2000, tier +2 or higher)
execute if score @s rp.tier matches 2.. run function evercraft:reaper/effects/peacemonger/hero_buff

# === TRADE DAILY CAP RESET (piggyback on dawn — reset when new day detected) ===
# Uses the visual_day change already tracked by luck_buffs/tick
# Reset trade_today at dawn by checking if it's morning (DayTime 0-1000)
execute store result score #rp_vtime rp.temp run time query daytime
execute if score #rp_vtime rp.temp matches 0..1200 if score @s rp.trade_today matches 1.. run scoreboard players set @s rp.trade_today 0
