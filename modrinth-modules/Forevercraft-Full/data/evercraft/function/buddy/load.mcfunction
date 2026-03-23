# ============================================================
# Buddy System — Load
# Allows players to bond with tamed vanilla mobs
# Buddies earn friendship points, unlock tiers of abilities
# One Best Buddy (any type) + one Buddy per tamed mob type
# ============================================================

# === CORE SCOREBOARDS ===
scoreboard objectives add ec.bd_points dummy
scoreboard objectives add ec.bd_tier dummy
scoreboard objectives add ec.bd_type_id dummy

# UUID targeting (2-int UUID matching, same pattern as mount_training)
scoreboard objectives add ec.bd_uuid0 dummy
scoreboard objectives add ec.bd_uuid1 dummy
# Owner ID stored on buddy entity for multiplayer ownership verification
scoreboard objectives add ec.bd_owner_id dummy
scoreboard objectives add ec.bd_best_uuid0 dummy
scoreboard objectives add ec.bd_best_uuid1 dummy
scoreboard objectives add ec.bd_best_type dummy

# Summon cooldowns
scoreboard objectives add ec.bd_summon_ct dummy
scoreboard objectives add ec.bd_summon_day dummy

# === DESIGNATION FLOW ===
scoreboard objectives add ec.bd_designating dummy
scoreboard objectives add ec.bd_des_uuid0 dummy
scoreboard objectives add ec.bd_des_uuid1 dummy
scoreboard objectives add ec.bd_naming dummy

# Trigger for [Yes]/[No] tellraw click
scoreboard objectives add ec.bd_confirm trigger

# === POINT EARNING ===
scoreboard objectives add ec.bd_prox_timer dummy
scoreboard objectives add ec.bd_walk_prev dummy
scoreboard objectives add ec.bd_walk_accum dummy
scoreboard objectives add ec.bd_feed_today dummy
scoreboard objectives add ec.bd_fish_prev dummy
scoreboard objectives add ec.bd_ore_prev dummy
scoreboard objectives add ec.bd_kills_prev dummy
scoreboard objectives add ec.bd_struct_prev dummy

# === ABILITY COOLDOWNS ===
scoreboard objectives add ec.bd_cry_cd dummy
scoreboard objectives add ec.bd_meal_cd dummy
scoreboard objectives add ec.bd_last_cd dummy
scoreboard objectives add ec.bd_last_active dummy
scoreboard objectives add ec.bd_wc_cd dummy
scoreboard objectives add ec.bd_aura_cd dummy
scoreboard objectives add ec.bd_vitality_cd dummy

# === BEST BUDDY ===
scoreboard objectives add ec.bd_best_active dummy
scoreboard objectives add ec.bd_best_atk_cd dummy
scoreboard objectives add ec.bd_best_revive dummy
scoreboard objectives add ec.bd_best_dead dummy

# === MOUNT CHARGE ===
scoreboard objectives add ec.bd_charge_spd dummy
scoreboard objectives add ec.bd_charging dummy
scoreboard objectives add ec.bd_charge_cd dummy
scoreboard objectives add ec.bd_ride_cont dummy
scoreboard objectives add ec.bd_breath dummy
scoreboard objectives add ec.bd_breath_ct dummy
scoreboard objectives add ec.bd_prev_x dummy
scoreboard objectives add ec.bd_prev_z dummy

# === GUI ===
scoreboard objectives add ec.bd_tab dummy
scoreboard objectives add ec.bd_summon_pg dummy

# === UTILITY CONSTANTS ===
scoreboard players set #30 ec.temp 30
scoreboard players set #-1 ec.temp -1

# === TIER THRESHOLD CONSTANTS ===
scoreboard players set #bd_t1 ec.var 250
scoreboard players set #bd_t2 ec.var 750
scoreboard players set #bd_t3 ec.var 1500
scoreboard players set #bd_t4 ec.var 3000
scoreboard players set #bd_t5 ec.var 5500
scoreboard players set #bd_t6 ec.var 10000

# === MOB TYPE ID CONSTANTS ===
# Used to identify buddy mob type in storage
scoreboard players set #bd_wolf ec.var 1
scoreboard players set #bd_cat ec.var 2
scoreboard players set #bd_parrot ec.var 3
scoreboard players set #bd_horse ec.var 4
scoreboard players set #bd_donkey ec.var 5
scoreboard players set #bd_mule ec.var 6
scoreboard players set #bd_llama ec.var 7
scoreboard players set #bd_trader_llama ec.var 8
scoreboard players set #bd_camel ec.var 9
scoreboard players set #bd_fox ec.var 10
scoreboard players set #bd_ocelot ec.var 11
scoreboard players set #bd_happy_ghast ec.var 12

# Initialize storage namespace if not present
execute unless data storage evercraft:buddy players run data modify storage evercraft:buddy players set value {}

# Enable trigger for all players
scoreboard players enable @a ec.bd_confirm

# Revoke advancements so they can re-fire
advancement revoke @a only evercraft:buddy/signed_charter

# Start tick loop
schedule function evercraft:buddy/tick 20t replace
