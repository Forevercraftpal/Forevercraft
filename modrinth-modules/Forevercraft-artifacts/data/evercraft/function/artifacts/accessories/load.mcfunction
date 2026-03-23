# Accessories System - Load Function
# Bootstraps the self-scheduling tick system

# Mob Vision cooldown scoreboards (activation-based, not passive)
scoreboard objectives add ec.monocle_cd dummy "Monocle Cooldown"

# Dream Aegis iframe cooldown
scoreboard objectives add ec.aegis_cd dummy "Dream Aegis Cooldown"

# Armor ability scoreboards
scoreboard objectives add ec.double_jump_cd dummy "Double Jump Cooldown"
scoreboard objectives add ec.seers_cd dummy "Seers Compass Cooldown"
scoreboard objectives add ec.wecho_cd dummy "Wardens Echo Cooldown"
scoreboard objectives add ec.ceye_cd dummy "Claudes Eye Cooldown"
scoreboard objectives add ec.wtotem_cd dummy "Warden Totem Cooldown"
scoreboard objectives add ec.codex_cd dummy "Codex Cooldown"

# === ACCESSORY TOGGLE SYSTEM (F8) ===
# Sneak timer and cooldown for toggle detection
scoreboard objectives add ec.t_sneak dummy "Toggle Sneak Timer"
scoreboard objectives add ec.t_cooldown dummy "Toggle Cooldown"

# Per-artifact toggle state (0 = ON default, 1 = OFF)
scoreboard objectives add ec.t_pebble dummy "Toggle Pebble"
scoreboard objectives add ec.t_traveler dummy "Toggle Traveler"
scoreboard objectives add ec.t_wcompass dummy "Toggle W.Compass"
scoreboard objectives add ec.t_glowpend dummy "Toggle Glowpend"
scoreboard objectives add ec.t_irontali dummy "Toggle IronTali"
scoreboard objectives add ec.t_feather dummy "Toggle Feather"
scoreboard objectives add ec.t_dring dummy "Toggle D.Ring"
scoreboard objectives add ec.t_rwatch dummy "Toggle RuinWatch"
scoreboard objectives add ec.t_heart dummy "Toggle Heartstone"
scoreboard objectives add ec.t_storm dummy "Toggle Storm"
scoreboard objectives add ec.t_merchant dummy "Toggle Merchant"
scoreboard objectives add ec.t_healer dummy "Toggle Healer"
scoreboard objectives add ec.t_wind dummy "Toggle WindChime"
scoreboard objectives add ec.t_angler dummy "Toggle Angler"
scoreboard objectives add ec.t_phoenix dummy "Toggle Phoenix"
scoreboard objectives add ec.t_undying dummy "Toggle Undying"
scoreboard objectives add ec.t_voidhrt dummy "Toggle VoidHeart"
scoreboard objectives add ec.t_phantom dummy "Toggle Phantom"
scoreboard objectives add ec.t_sculkhrt dummy "Toggle SculkHrt"
scoreboard objectives add ec.t_redhrt dummy "Toggle RedHeart"

# === WEAPON ABILITY SCOREBOARDS ===
# Battle Tempo (Mauler) — 5-hit combo counter
scoreboard objectives add ec.battle_tempo dummy "Battle Tempo"
# Primal Roar (Boneclub) — 10-hit roar counter
scoreboard objectives add ec.primal_roar dummy "Primal Roar"
# Flowing Strikes (Battlestaff) — 3-hit Haste stacking
scoreboard objectives add ec.flow_hits dummy "Flow Hits"
# Mjolnir Worthy — lightning chain counter
scoreboard objectives add ec.mjolnir_chain dummy "Mjolnir Chain"
# Momentum Cleave (Claymore) — sweep damage stacking
scoreboard objectives add ec.cleave_stacks dummy "Cleave Stacks"
# Kill Chain (Caliburn/Excalibur) — consecutive kill counter
scoreboard objectives add ec.kill_chain dummy "Kill Chain"
# Eyelander Souls — stacking soul counter
scoreboard objectives add ec.eyelander_souls dummy "Eyelander Souls"
# Voltaic Chains (Sinister Sword) — hit counter for chain lightning
scoreboard objectives add ec.voltaic_hits dummy "Voltaic Hits"
# Titan Momentum (Golden Goliath) — consecutive hit chain without taking damage
scoreboard objectives add ec.titan_hits dummy "Titan Hits"
# Tidal Rush (Prismarine Gauntlet) — hit counter in water/rain
scoreboard objectives add ec.tidal_hits dummy "Tidal Hits"
# Crimson Tempo (Red Gauntlet) — heal proc stacking attack speed
scoreboard objectives add ec.crimson_stacks dummy "Crimson Stacks"
# Per-player decay countdown timers (decremented in 1s tick)
scoreboard objectives add ec.cleave_cd dummy "Cleave Decay CD"
scoreboard objectives add ec.chain_cd dummy "Kill Chain Decay CD"
scoreboard objectives add ec.soul_cd dummy "Soul Harvest Decay CD"
scoreboard objectives add ec.titan_cd dummy "Titan Decay CD"
scoreboard objectives add ec.crimson_cd dummy "Crimson Decay CD"
# Dedicated persistent counters (avoid ec.artifact_roll collisions)
scoreboard objectives add ec.iai_charge dummy "Iai Draw Charge"
scoreboard objectives add ec.fury_hits dummy "Dragon Fury Hits"
scoreboard objectives add ec.zant_hits dummy "Zantetsuken Hits"
scoreboard objectives add ec.rift_ticks dummy "Rift Marker Ticks"
# Regen fallback cooldown (instant heal when Regen II+ already active)
scoreboard objectives add ec.regen_ih_cd dummy "Regen Fallback CD"

# Death-save cooldowns (Soul Protection 3min, Void Heart 5min)
scoreboard objectives add ec.cd_soul dummy "Soul Protection CD"
scoreboard objectives add ec.cd_void dummy "Void Heart CD"

# Start the accessory tick loop
schedule function evercraft:artifacts/accessories/tick 1s

# Start the double jump tick loop (fast, 2 ticks for responsiveness)
schedule function evercraft:artifacts/abilities/double_jump_tick 2t
