# Harmonic Convergence — Condition Check
# Called from world_events/tick when a world event is active
# Checks if all 4 conditions align for any of the 4 named Convergences

# Skip if convergence already active
execute if score #conv_active ec.var matches 1 run return 0

# Skip if on cooldown (gametime < cooldown expiry)
execute store result score #conv_now ec.temp run time query gametime
execute if score #conv_now ec.temp < #conv_cooldown_cd ec.var run return 0

# Reset convergence ID before checking
scoreboard players set #conv_id ec.var 0

# === Celestial Tide: Summer(3) + Full Moon(0) + Starfall(1) + avg DR >= 150 ===
execute if score #conv_id ec.var matches 0 if score #season_id ec.var matches 3 if score #moon_phase ec.var matches 0 if score #we_event_id ec.var matches 1 if score #we_avg_dr ec.var matches 150.. run scoreboard players set #conv_id ec.var 1

# === Veil of Embers: Autumn(0) + Waning Gibbous(5) + Abyssal Tremor(3) + avg DR >= 200 ===
execute if score #conv_id ec.var matches 0 if score #season_id ec.var matches 0 if score #moon_phase ec.var matches 5 if score #we_event_id ec.var matches 3 if score #we_avg_dr ec.var matches 200.. run scoreboard players set #conv_id ec.var 2

# === Frozen Aurora: Winter(1) + New Moon(4) + Aurora Bloom(4) + avg DR >= 150 ===
execute if score #conv_id ec.var matches 0 if score #season_id ec.var matches 1 if score #moon_phase ec.var matches 4 if score #we_event_id ec.var matches 4 if score #we_avg_dr ec.var matches 150.. run scoreboard players set #conv_id ec.var 3

# === Bloom of Eternity: Spring(2) + Waxing Gibbous(3) + Rift Echo(5) + avg DR >= 250 ===
execute if score #conv_id ec.var matches 0 if score #season_id ec.var matches 2 if score #moon_phase ec.var matches 3 if score #we_event_id ec.var matches 5 if score #we_avg_dr ec.var matches 250.. run scoreboard players set #conv_id ec.var 4

# If a match was found, start convergence
execute if score #conv_id ec.var matches 1.. run function evercraft:convergence/start
