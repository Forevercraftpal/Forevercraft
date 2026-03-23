# Dawn reset - clear moon event flags and effects
scoreboard players set #ec_moon_notified ec.var 0

# Reset Harvest Moon if active
# Only reset random_tick_speed if Harvest Festival isn't also active (it uses speed 6)
execute if score #ec_harvest_moon ec.var matches 1 unless score #cal_event_id ec.var matches 1 run gamerule minecraft:random_tick_speed 3
execute if score #ec_harvest_moon ec.var matches 1 if score #cal_event_id ec.var matches 1 run gamerule minecraft:random_tick_speed 6
execute if score #ec_harvest_moon ec.var matches 1 run tellraw @a [{text:""},{text:"The harvest moon fades as dawn breaks...",color:"gray",italic:true}]
scoreboard players set #ec_harvest_moon ec.var 0

# Remove harvest moon dream rate modifier from all players
execute as @a run attribute @s luck modifier remove ec_harvest_moon_luck

# --- Achievement: Full Moon Madness — survived a full moon night without sleeping ---
# Only grant if dawn was reached naturally (not via sleep skip)
# Use #prev_moon_phase (the NIGHT that just ended), not #moon_phase (already recalculated to new day)
execute if score #prev_moon_phase ec.var matches 0 unless score #slept_through_night ec.var matches 1 as @a unless entity @s[advancements={evercraft:alternate/secrets/full_moon_madness=true}] run advancement grant @s only evercraft:alternate/secrets/full_moon_madness

# Clear sleep flag for next night
scoreboard players set #slept_through_night ec.var 0

# === AFFINITY DAILY RESET ===
scoreboard players set @a ec.daff_rg 0
scoreboard players set @a ec.daff_bk 0
scoreboard players set @a ec.daff_dn 0
scoreboard players set @a ec.daff_sk 0
scoreboard players set @a ec.daff_kt 0
scoreboard players set @a ec.daff_hl 0
scoreboard players set @a ec.daff_bl 0
scoreboard players set @a ec.daff_jv 0
scoreboard players set @a ec.daff_hp 0
scoreboard players set @a ec.daff_ar 0
scoreboard players set @a ec.daff_ht 0
scoreboard players set @a ec.daff_tk 0
scoreboard players set @a ec.daff_kn 0
scoreboard players set @a ec.daff_ds 0

# === DUNGEON DAILY FLOOR COUNTER RESET ===
scoreboard players set @a ec.dg_floors_today 0
