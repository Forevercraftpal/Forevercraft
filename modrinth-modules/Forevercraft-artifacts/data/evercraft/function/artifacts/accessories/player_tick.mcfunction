# Accessory Artifacts — Per-Player Tick
# Runs as @s = player, at @s (position set by caller)
# Checks container.* (all inventory + hotbar slots) + weapon.offhand for accessory effects
# OPT: Multi-effect accessories use temp tag ec._a to consolidate item scans
# (reduces ~196 item scans to ~68 per player per second)

# OPT: Early exit for players with no accessories, rings, or boss-exclusives
# ec.has_accessory persists 1 extra tick to allow attribute modifier cleanup
execute unless entity @s[tag=ec.has_accessory] unless items entity @s container.* *[custom_data~{accessory:true}] unless items entity @s weapon.offhand *[custom_data~{accessory:true}] unless items entity @s container.* *[custom_data~{ring:true}] unless items entity @s weapon.offhand *[custom_data~{ring:true}] unless items entity @s container.* *[custom_data~{boss_exclusive:true}] unless items entity @s weapon.offhand *[custom_data~{boss_exclusive:true}] run return 0

# === REGEN FALLBACK SYSTEM ===
# Detect if player already has Regen II+ (campfire boost / golden apple / harmonize)
# Regen artifacts switch to instant_health when regen would be wasted
# Check: has regeneration AND it's NOT amplifier 0 → must be level II or higher
tag @s remove ec.regen_capped
execute if data entity @s {active_effects:[{id:"minecraft:regeneration"}]} unless data entity @s {active_effects:[{id:"minecraft:regeneration",amplifier:0b}]} run tag @s add ec.regen_capped
# Decrement instant-heal cooldown (shared across all regen artifacts)
execute if score @s ec.regen_ih_cd matches 1.. run scoreboard players remove @s ec.regen_ih_cd 1
# Decrement death-save cooldowns (Soul Protection 3min, Void Heart 5min)
execute if score @s ec.cd_soul matches 1.. run scoreboard players remove @s ec.cd_soul 1
execute if score @s ec.cd_void matches 1.. run scoreboard players remove @s ec.cd_void 1

# ============================================================
# === COMMON ACCESSORIES ===
# ============================================================

# Pebble of Dreams — +1 Dream Rate
execute if items entity @s container.* *[custom_data~{artifact:"pebble_of_dreams"}] unless score @s ec.t_pebble matches 1 run attribute @s luck modifier add evercraft:pebble_of_dreams_luck 1.0 add_value
execute if items entity @s weapon.offhand *[custom_data~{artifact:"pebble_of_dreams"}] unless score @s ec.t_pebble matches 1 run attribute @s luck modifier add evercraft:pebble_of_dreams_luck 1.0 add_value

# Travelers Charm — Speed I
execute if items entity @s container.* *[custom_data~{artifact:"travelers_charm"}] unless score @s ec.t_traveler matches 1 run effect give @s speed 5 0 false
execute if items entity @s weapon.offhand *[custom_data~{artifact:"travelers_charm"}] unless score @s ec.t_traveler matches 1 run effect give @s speed 5 0 false

# Worn Compass — Slow Falling when below Y=0
execute if entity @s[y=-64,dy=64] if items entity @s container.* *[custom_data~{artifact:"worn_compass"}] unless score @s ec.t_wcompass matches 1 run effect give @s slow_falling 5 0 false
execute if entity @s[y=-64,dy=64] if items entity @s weapon.offhand *[custom_data~{artifact:"worn_compass"}] unless score @s ec.t_wcompass matches 1 run effect give @s slow_falling 5 0 false

# ============================================================
# === UNCOMMON ACCESSORIES ===
# ============================================================

# Glowstone Pendant — Night Vision
execute if items entity @s container.* *[custom_data~{artifact:"glowstone_pendant"}] unless score @s ec.t_glowpend matches 1 run effect give @s night_vision 15 0 false
execute if items entity @s weapon.offhand *[custom_data~{artifact:"glowstone_pendant"}] unless score @s ec.t_glowpend matches 1 run effect give @s night_vision 15 0 false

# Iron Talisman — Resistance I
execute if items entity @s container.* *[custom_data~{artifact:"iron_talisman"}] unless score @s ec.t_irontali matches 1 run effect give @s resistance 5 0 false
execute if items entity @s weapon.offhand *[custom_data~{artifact:"iron_talisman"}] unless score @s ec.t_irontali matches 1 run effect give @s resistance 5 0 false

# Featherweight Stone — Slow Falling
execute if items entity @s container.* *[custom_data~{artifact:"featherweight_stone"}] unless score @s ec.t_feather matches 1 run effect give @s slow_falling 5 0 false
execute if items entity @s weapon.offhand *[custom_data~{artifact:"featherweight_stone"}] unless score @s ec.t_feather matches 1 run effect give @s slow_falling 5 0 false

# ============================================================
# === RARE ACCESSORIES ===
# ============================================================

# Diamond Ring — +1 Dream Rate
execute if items entity @s container.* *[custom_data~{artifact:"diamond_ring"}] unless score @s ec.t_dring matches 1 run attribute @s luck modifier add evercraft:diamond_ring_luck 1.0 add_value
execute if items entity @s weapon.offhand *[custom_data~{artifact:"diamond_ring"}] unless score @s ec.t_dring matches 1 run attribute @s luck modifier add evercraft:diamond_ring_luck 1.0 add_value

# Ruin Watch — +1 Dream Rate + Right-click shows structure timers
execute if items entity @s container.* *[custom_data~{artifact:"ruin_watch"}] unless score @s ec.t_rwatch matches 1 run attribute @s luck modifier add evercraft:ruin_watch_luck 1.0 add_value
execute if items entity @s weapon.offhand *[custom_data~{artifact:"ruin_watch"}] unless score @s ec.t_rwatch matches 1 run attribute @s luck modifier add evercraft:ruin_watch_luck 1.0 add_value

# Heartstone — Regeneration I when below 6 hearts (instant heal fallback if Regen II+)
execute if predicate evercraft:health_below_12 if items entity @s container.* *[custom_data~{artifact:"heartstone"}] unless score @s ec.t_heart matches 1 unless entity @s[tag=ec.regen_capped] run effect give @s regeneration 5 0 false
execute if predicate evercraft:health_below_12 if items entity @s weapon.offhand *[custom_data~{artifact:"heartstone"}] unless score @s ec.t_heart matches 1 unless entity @s[tag=ec.regen_capped] run effect give @s regeneration 5 0 false
execute if predicate evercraft:health_below_12 if items entity @s container.* *[custom_data~{artifact:"heartstone"}] unless score @s ec.t_heart matches 1 if entity @s[tag=ec.regen_capped] run function evercraft:artifacts/accessories/regen_fallback
execute if predicate evercraft:health_below_12 if items entity @s weapon.offhand *[custom_data~{artifact:"heartstone"}] unless score @s ec.t_heart matches 1 if entity @s[tag=ec.regen_capped] run function evercraft:artifacts/accessories/regen_fallback

# Stormcatcher Shard — Haste I
execute if items entity @s container.* *[custom_data~{artifact:"stormcatcher_shard"}] unless score @s ec.t_storm matches 1 run effect give @s haste 5 0 false
execute if items entity @s weapon.offhand *[custom_data~{artifact:"stormcatcher_shard"}] unless score @s ec.t_storm matches 1 run effect give @s haste 5 0 false

# ============================================================
# === ORNATE ACCESSORIES ===
# ============================================================

# Miner's Lantern — Night Vision + Luck I + Ore Ping
# OPT: Tag consolidation (was 7 item scans → 2)
execute if items entity @s container.* *[custom_data~{artifact:"miners_lantern"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"miners_lantern"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] run effect give @s night_vision 15 0 false
execute if entity @s[tag=ec._a] run attribute @s luck modifier add evercraft:miners_lantern_luck 1.0 add_value
execute if entity @s[tag=ec._a] run function evercraft:artifacts/accessories/ore_ping
tag @s remove ec._a
# Miner's Lantern — Fortune +2 on held pickaxe/shovel + cleanup
function evercraft:artifacts/abilities/miners_blessing
execute if entity @s[tag=ec.miners_lantern_fortune] run function evercraft:artifacts/abilities/miners_blessing_cleanup

# Seer's Compass — Night Vision + Speed I
# OPT: Tag consolidation (was 4 item scans → 2)
execute if items entity @s container.* *[custom_data~{artifact:"seers_compass"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"seers_compass"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] run effect give @s night_vision 15 0 false
execute if entity @s[tag=ec._a] run effect give @s speed 5 0 false
tag @s remove ec._a

# Merchant's Coin — +1 Dream Rate + Trade Discount (Hero of the Village)
# OPT: Tag consolidation (was 4 item scans → 2)
execute if items entity @s container.* *[custom_data~{artifact:"merchants_coin"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"merchants_coin"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] unless score @s ec.t_merchant matches 1 run attribute @s luck modifier add evercraft:merchants_coin_luck 1.0 add_value
execute if entity @s[tag=ec._a] run effect give @s hero_of_the_village 5 0 true
tag @s remove ec._a

# Spelunker's Echo — Night Vision + Haste I + Treasure Ping
# OPT: Tag consolidation (was 6 item scans → 2)
execute if items entity @s container.* *[custom_data~{artifact:"spelunkers_echo"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"spelunkers_echo"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] run effect give @s night_vision 15 0 false
execute if entity @s[tag=ec._a] run effect give @s haste 5 0 false
execute if entity @s[tag=ec._a] run function evercraft:artifacts/accessories/chest_ping
tag @s remove ec._a

# Healer's Salve — Regeneration I (instant heal fallback if Regen II+)
execute if items entity @s container.* *[custom_data~{artifact:"healers_salve"}] unless score @s ec.t_healer matches 1 unless entity @s[tag=ec.regen_capped] run effect give @s regeneration 5 0 false
execute if items entity @s weapon.offhand *[custom_data~{artifact:"healers_salve"}] unless score @s ec.t_healer matches 1 unless entity @s[tag=ec.regen_capped] run effect give @s regeneration 5 0 false
execute if items entity @s container.* *[custom_data~{artifact:"healers_salve"}] unless score @s ec.t_healer matches 1 if entity @s[tag=ec.regen_capped] run function evercraft:artifacts/accessories/regen_fallback
execute if items entity @s weapon.offhand *[custom_data~{artifact:"healers_salve"}] unless score @s ec.t_healer matches 1 if entity @s[tag=ec.regen_capped] run function evercraft:artifacts/accessories/regen_fallback

# Wind Chime — Speed I
execute if items entity @s container.* *[custom_data~{artifact:"wind_chime"}] unless score @s ec.t_wind matches 1 run effect give @s speed 5 0 false
execute if items entity @s weapon.offhand *[custom_data~{artifact:"wind_chime"}] unless score @s ec.t_wind matches 1 run effect give @s speed 5 0 false

# Angler's Pearl — +1 Dream Rate
execute if items entity @s container.* *[custom_data~{artifact:"anglers_pearl"}] unless score @s ec.t_angler matches 1 run attribute @s luck modifier add evercraft:anglers_pearl_luck 1.0 add_value
execute if items entity @s weapon.offhand *[custom_data~{artifact:"anglers_pearl"}] unless score @s ec.t_angler matches 1 run attribute @s luck modifier add evercraft:anglers_pearl_luck 1.0 add_value
# Angler's Pearl — Lure II + Luck of the Sea I on held fishing rod + cleanup
function evercraft:artifacts/abilities/fast_fishing
execute if entity @s[tag=ec.anglers_pearl_fishing] run function evercraft:artifacts/abilities/fast_fishing_cleanup

# Soul Lantern Fragment — XP Boost
execute if items entity @s container.* *[custom_data~{artifact:"soul_lantern_fragment"}] run function evercraft:artifacts/accessories/xp_boost_check
execute if items entity @s weapon.offhand *[custom_data~{artifact:"soul_lantern_fragment"}] run function evercraft:artifacts/accessories/xp_boost_check

# Farmer's Almanac — Bonus bone meal on random nearby crop
execute if items entity @s container.* *[custom_data~{artifact:"farmers_almanac"}] run function evercraft:artifacts/accessories/crop_boost
execute if items entity @s weapon.offhand *[custom_data~{artifact:"farmers_almanac"}] run function evercraft:artifacts/accessories/crop_boost

# Berserker's Fang — Strength I when below 50% HP + Haste I when below 30% HP
execute if predicate evercraft:health_below_10 if items entity @s container.* *[custom_data~{artifact:"berserkers_fang"}] run effect give @s strength 5 0 false
execute if predicate evercraft:health_below_10 if items entity @s weapon.offhand *[custom_data~{artifact:"berserkers_fang"}] run effect give @s strength 5 0 false
execute if predicate evercraft:health_below_6 if items entity @s container.* *[custom_data~{artifact:"berserkers_fang"}] run effect give @s haste 5 0 false
execute if predicate evercraft:health_below_6 if items entity @s weapon.offhand *[custom_data~{artifact:"berserkers_fang"}] run effect give @s haste 5 0 false

# Cartographer's Lens — Speed I + Saturation
# OPT: Tag consolidation (was 4 item scans → 2)
execute if items entity @s container.* *[custom_data~{artifact:"cartographers_lens"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"cartographers_lens"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] run effect give @s speed 5 0 false
execute if entity @s[tag=ec._a] run effect give @s saturation 3 0 false
tag @s remove ec._a

# Enchanted Monocle — Night Vision + +1 Dream Rate
# OPT: Tag consolidation (was 4 item scans → 2)
execute if items entity @s container.* *[custom_data~{artifact:"enchanted_monocle"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"enchanted_monocle"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] run effect give @s night_vision 15 0 false
execute if entity @s[tag=ec._a] run attribute @s luck modifier add evercraft:enchanted_monocle_luck 1.0 add_value
tag @s remove ec._a

# Phoenix Feather — Fire Resistance
execute if items entity @s container.* *[custom_data~{artifact:"phoenix_feather"}] unless score @s ec.t_phoenix matches 1 run effect give @s fire_resistance 15 0 false
execute if items entity @s weapon.offhand *[custom_data~{artifact:"phoenix_feather"}] unless score @s ec.t_phoenix matches 1 run effect give @s fire_resistance 15 0 false

# Warden's Echo — Night Vision
execute if items entity @s container.* *[custom_data~{artifact:"wardens_echo"}] run effect give @s night_vision 15 0 false
execute if items entity @s weapon.offhand *[custom_data~{artifact:"wardens_echo"}] run effect give @s night_vision 15 0 false

# ============================================================
# === EXQUISITE ACCESSORIES ===
# ============================================================

# Ring of Undying — +1 Dream Rate
execute if items entity @s container.* *[custom_data~{artifact:"ring_of_undying"}] unless score @s ec.t_undying matches 1 run attribute @s luck modifier add evercraft:ring_of_undying_luck 1.0 add_value
execute if items entity @s weapon.offhand *[custom_data~{artifact:"ring_of_undying"}] unless score @s ec.t_undying matches 1 run attribute @s luck modifier add evercraft:ring_of_undying_luck 1.0 add_value

# Claude's Eye — +1 Dream Rate + Night Vision
# OPT: Tag consolidation (was 4 item scans → 2)
execute if items entity @s container.* *[custom_data~{artifact:"claudes_eye"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"claudes_eye"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] run attribute @s luck modifier add evercraft:claudes_eye_luck 1.0 add_value
execute if entity @s[tag=ec._a] run effect give @s night_vision 15 0 false
tag @s remove ec._a

# Void Heart — Absorption II + Void Recall (teleport to spawn when near death, 5min cd)
# OPT: Tag consolidation
execute if items entity @s container.* *[custom_data~{artifact:"void_heart"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"void_heart"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] unless score @s ec.t_voidhrt matches 1 run effect give @s absorption 5 1 false
# Void Recall: triggers at 3 hearts (health_below_6) for better one-shot protection
execute if entity @s[tag=ec._a] if predicate evercraft:health_below_6 unless score @s ec.cd_void matches 1.. run function evercraft:artifacts/abilities/void_heart_save
tag @s remove ec._a

# Warden Totem — Night Vision
execute if items entity @s container.* *[custom_data~{artifact:"warden_totem"}] run effect give @s night_vision 15 0 false
execute if items entity @s weapon.offhand *[custom_data~{artifact:"warden_totem"}] run effect give @s night_vision 15 0 false

# Soul Protection — Resistance I + Absorption I + Death Save (3min cd)
# OPT: Tag consolidation (was 4 item scans → 2)
execute if items entity @s container.* *[custom_data~{artifact:"soul_protection"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"soul_protection"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] run effect give @s resistance 5 0 false
execute if entity @s[tag=ec._a] run effect give @s absorption 5 0 false
# Soul Shield: triggers at 3 hearts (health_below_6) for better one-shot protection
execute if entity @s[tag=ec._a] if predicate evercraft:health_below_6 unless score @s ec.cd_soul matches 1.. run function evercraft:artifacts/abilities/soul_protection_save
tag @s remove ec._a

# Dragon's Tear — Damage aura + Strength I
# OPT: Tag consolidation (was 4 item scans → 2)
execute if items entity @s container.* *[custom_data~{artifact:"dragons_tear"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"dragons_tear"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] as @e[type=#evercraft:hostile_mobs,distance=..4,limit=5] run damage @s 1 evercraft:bonus_strike
execute if entity @s[tag=ec._a] if score @s ec.h_str matches ..1 run effect give @s strength 5 0 false
tag @s remove ec._a

# Nether Star Shard — Beacon effects to nearby players (Regen I + Resistance I)
# OPT: Tag consolidation (was 4 item scans → 2)
# Regen fallback: instant heal for any nearby player already at Regen II+
execute if items entity @s container.* *[custom_data~{artifact:"nether_star_shard"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"nether_star_shard"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] run effect give @a[distance=..16] regeneration 5 0 false
execute if entity @s[tag=ec._a] run effect give @a[distance=..16] resistance 5 0 false
execute if entity @s[tag=ec._a] as @a[distance=..16] if data entity @s {active_effects:[{id:"minecraft:regeneration"}]} unless data entity @s {active_effects:[{id:"minecraft:regeneration",amplifier:0b}]} run function evercraft:artifacts/accessories/regen_fallback
tag @s remove ec._a

# Blaze Core — Fire Resistance + fire particle trail
# Inferno Mastery (+3 fire dmg) handled by advancement trigger (blaze_core_hit_trigger)
# OPT: Tag consolidation (was 4 item scans → 2)
execute if items entity @s container.* *[custom_data~{artifact:"blaze_core"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"blaze_core"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] run effect give @s fire_resistance 15 0 false
execute if entity @s[tag=ec._a] run particle flame ~ ~0.1 ~ 0.2 0 0.2 0.01 1
tag @s remove ec._a

# Phantom Charm — Slow Falling + Elytra durability protection
# OPT: Tag consolidation
execute if items entity @s container.* *[custom_data~{artifact:"phantom_charm"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"phantom_charm"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] unless score @s ec.t_phantom matches 1 run effect give @s slow_falling 5 0 false
# Phantom Glide: Keep elytra at full durability
execute if entity @s[tag=ec._a] if items entity @s armor.chest minecraft:elytra run item modify entity @s armor.chest evercraft:repair_elytra
tag @s remove ec._a

# Sea Heart Relic — Water Breathing + Dolphin's Grace + Conduit Power
# OPT: Tag consolidation (was 6 item scans → 2)
execute if items entity @s container.* *[custom_data~{artifact:"sea_heart_relic"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"sea_heart_relic"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] run effect give @s water_breathing 15 0 false
execute if entity @s[tag=ec._a] run effect give @s dolphins_grace 5 0 false
execute if entity @s[tag=ec._a] run effect give @s conduit_power 5 0 false
tag @s remove ec._a

# Berserker Totem — Strength I + Haste I
# OPT: Tag consolidation (was 4 item scans → 2)
execute if items entity @s container.* *[custom_data~{artifact:"berserker_totem"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"berserker_totem"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] run effect give @s strength 5 0 false
execute if entity @s[tag=ec._a] run effect give @s haste 5 0 false
tag @s remove ec._a

# Sculk Heart — +2 Dream Rate
execute if items entity @s container.* *[custom_data~{artifact:"sculk_heart"}] unless score @s ec.t_sculkhrt matches 1 run attribute @s luck modifier add evercraft:sculk_heart_luck 2.0 add_value
execute if items entity @s weapon.offhand *[custom_data~{artifact:"sculk_heart"}] unless score @s ec.t_sculkhrt matches 1 run attribute @s luck modifier add evercraft:sculk_heart_luck 2.0 add_value

# ============================================================
# === MYTHICAL ACCESSORIES ===
# ============================================================

# Dream Aegis — +2 Dream Rate + tag for per-tick iframe detection
# OPT: Tag consolidation (was 4 item scans → 2)
tag @s remove ec.has_aegis
execute if items entity @s container.* *[custom_data~{artifact:"dream_aegis"}] run tag @s add ec.has_aegis
execute unless entity @s[tag=ec.has_aegis] if items entity @s weapon.offhand *[custom_data~{artifact:"dream_aegis"}] run tag @s add ec.has_aegis
execute if entity @s[tag=ec.has_aegis] run attribute @s luck modifier add evercraft:dream_aegis_luck 2.0 add_value

# Codex of Everything — Luck III
execute if items entity @s container.* *[custom_data~{artifact:"codex_of_everything"}] run attribute @s luck modifier add evercraft:codex_of_everything_luck 3.0 add_value
execute if items entity @s weapon.offhand *[custom_data~{artifact:"codex_of_everything"}] run attribute @s luck modifier add evercraft:codex_of_everything_luck 3.0 add_value

# Temporal Hourglass — Resistance II + Speed I
# OPT: Tag consolidation (was 4 item scans → 2)
execute if items entity @s container.* *[custom_data~{artifact:"temporal_hourglass"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"temporal_hourglass"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] run effect give @s resistance 5 1 false
execute if entity @s[tag=ec._a] run effect give @s speed 5 0 false
tag @s remove ec._a

# Heart of the Void — Resistance I + Slow Falling + Night Vision
# OPT: Tag consolidation (was 6 item scans → 2)
execute if items entity @s container.* *[custom_data~{artifact:"heart_of_the_void"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"heart_of_the_void"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] run effect give @s resistance 5 0 false
execute if entity @s[tag=ec._a] run effect give @s slow_falling 5 0 false
execute if entity @s[tag=ec._a] run effect give @s night_vision 15 0 false
tag @s remove ec._a

# Beacon of Ancients — Full beacon + Luck III
# OPT: Tag consolidation (was 14 item scans → 2)
# Skip harmonizable effects when 2+ sources are active
execute if items entity @s container.* *[custom_data~{artifact:"beacon_of_ancients"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"beacon_of_ancients"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] if score @s ec.h_speed matches ..1 run effect give @s speed 5 0 false
execute if entity @s[tag=ec._a] if score @s ec.h_haste matches ..1 run effect give @s haste 5 0 false
execute if entity @s[tag=ec._a] if score @s ec.h_resist matches ..1 run effect give @s resistance 5 0 false
execute if entity @s[tag=ec._a] if score @s ec.h_jump matches ..1 run effect give @s jump_boost 5 0 false
execute if entity @s[tag=ec._a] if score @s ec.h_str matches ..1 run effect give @s strength 5 0 false
execute if entity @s[tag=ec._a] if score @s ec.h_regen matches ..1 unless entity @s[tag=ec.regen_capped] run effect give @s regeneration 5 0 false
execute if entity @s[tag=ec._a] if score @s ec.h_regen matches ..1 if entity @s[tag=ec.regen_capped] run function evercraft:artifacts/accessories/regen_fallback
execute if entity @s[tag=ec._a] run attribute @s luck modifier add evercraft:beacon_of_ancients_luck 3.0 add_value
tag @s remove ec._a

# Wither Rose Crown — Undead Weakness aura + Strength I
# OPT: Tag consolidation (was 4 item scans → 2)
execute if items entity @s container.* *[custom_data~{artifact:"wither_rose_crown"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"wither_rose_crown"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] run effect give @e[type=#minecraft:undead,distance=..16] weakness 5 4 false
execute if entity @s[tag=ec._a] if score @s ec.h_str matches ..1 run effect give @s strength 5 0 false
tag @s remove ec._a

# Ender Dragon Scale — Strength III + Fire Resistance
# OPT: Tag consolidation (was 4 item scans → 2)
execute if items entity @s container.* *[custom_data~{artifact:"ender_dragon_scale"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"ender_dragon_scale"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] if score @s ec.h_str matches ..1 run effect give @s strength 5 2 false
execute if entity @s[tag=ec._a] run effect give @s fire_resistance 15 0 false
tag @s remove ec._a

# Sculk Singularity — Gravity pull + particles
# OPT: Tag consolidation (was 4 item scans → 2)
execute if items entity @s container.* *[custom_data~{artifact:"sculk_singularity"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"sculk_singularity"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] as @e[type=#evercraft:hostile_mobs,distance=2..8,limit=3] at @s facing entity @p feet run tp @s ^ ^ ^0.3
execute if entity @s[tag=ec._a] run particle sculk_soul ~ ~1 ~ 1 0.5 1 0.02 3
tag @s remove ec._a

# Redstone Heart — Haste III
execute if score @s ec.h_haste matches ..1 if items entity @s container.* *[custom_data~{artifact:"redstone_heart"}] unless score @s ec.t_redhrt matches 1 run effect give @s haste 5 2 false
execute if score @s ec.h_haste matches ..1 if items entity @s weapon.offhand *[custom_data~{artifact:"redstone_heart"}] unless score @s ec.t_redhrt matches 1 run effect give @s haste 5 2 false

# Prism of Light — Absorption IV + Night Vision
# OPT: Tag consolidation (was 4 item scans → 2)
execute if items entity @s container.* *[custom_data~{artifact:"prism_of_light"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"prism_of_light"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] run effect give @s absorption 5 3 false
execute if entity @s[tag=ec._a] run effect give @s night_vision 15 0 false
tag @s remove ec._a

# Netherite Nexus — Resistance III + Luck IV
# OPT: Tag consolidation (was 4 item scans → 2)
execute if items entity @s container.* *[custom_data~{artifact:"netherite_nexus"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"netherite_nexus"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] if score @s ec.h_resist matches ..1 run effect give @s resistance 5 2 false
execute if entity @s[tag=ec._a] run attribute @s luck modifier add evercraft:netherite_nexus_luck 4.0 add_value
tag @s remove ec._a

# Claude's Gift — Strength III + Haste III + Speed III + Luck V
# OPT: Tag consolidation (was 10 item scans → 2)
# Skip harmonizable effects when 2+ sources are active
execute if items entity @s container.* *[custom_data~{artifact:"claudes_gift"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"claudes_gift"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] if score @s ec.h_str matches ..1 run effect give @s strength 5 2 false
execute if entity @s[tag=ec._a] if score @s ec.h_haste matches ..1 run effect give @s haste 5 2 false
execute if entity @s[tag=ec._a] if score @s ec.h_speed matches ..1 run effect give @s speed 5 2 false
execute if entity @s[tag=ec._a] run attribute @s luck modifier add evercraft:claudes_gift_luck 5.0 add_value
execute if entity @s[tag=ec._a] run particle end_rod ~ ~1 ~ 0.3 0.5 0.3 0.02 2
tag @s remove ec._a

# ============================================================
# === BOSS EXCLUSIVE ACCESSORIES ===
# ============================================================

# Soul Reaver (Hollow King) — Wither aura + 1.5 Dream Rate
# OPT: Tag consolidation (was 4 item scans → 2)
execute if items entity @s container.* *[custom_data~{artifact:"soul_reaver"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"soul_reaver"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] run effect give @e[type=#evercraft:hostile_mobs,distance=..6,limit=5] wither 3 0 false
execute if entity @s[tag=ec._a] run attribute @s luck modifier add evercraft:soul_reaver_luck 1.5 add_value
tag @s remove ec._a

# Thornheart Bloom (Verdant Warden) — Regen on dirt + Poison aura + 1.5 Dream Rate
# OPT: Tag consolidation (was 6 item scans → 2)
execute if items entity @s container.* *[custom_data~{artifact:"thornheart_bloom"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"thornheart_bloom"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] if score @s ec.h_regen matches ..1 if block ~ ~-1 ~ #minecraft:dirt unless entity @s[tag=ec.regen_capped] run effect give @s regeneration 5 0 false
execute if entity @s[tag=ec._a] if score @s ec.h_regen matches ..1 if block ~ ~-1 ~ #minecraft:dirt if entity @s[tag=ec.regen_capped] run function evercraft:artifacts/accessories/regen_fallback
execute if entity @s[tag=ec._a] run effect give @e[type=#evercraft:hostile_mobs,distance=..5,limit=5] poison 3 0 false
execute if entity @s[tag=ec._a] run attribute @s luck modifier add evercraft:thornheart_bloom_luck 1.5 add_value
tag @s remove ec._a

# Thunderstrike Core (Stormforged) — Speed II + Resistance I + 1.5 Dream Rate
# OPT: Tag consolidation (was 6 item scans → 2)
execute if items entity @s container.* *[custom_data~{artifact:"thunderstrike_core"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"thunderstrike_core"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] if score @s ec.h_speed matches ..1 run effect give @s speed 5 1 false
execute if entity @s[tag=ec._a] if score @s ec.h_resist matches ..1 run effect give @s resistance 5 0 false
execute if entity @s[tag=ec._a] run attribute @s luck modifier add evercraft:thunderstrike_core_luck 1.5 add_value
tag @s remove ec._a

# Abyssal Pearl (Tidecaller) — Water Breathing + Dolphin's Grace + Conduit Power + 1.5 Dream Rate
# OPT: Tag consolidation (was 8 item scans → 2)
execute if items entity @s container.* *[custom_data~{artifact:"abyssal_pearl"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"abyssal_pearl"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] run effect give @s water_breathing 15 0 false
execute if entity @s[tag=ec._a] run effect give @s dolphins_grace 5 0 false
execute if entity @s[tag=ec._a] run effect give @s conduit_power 5 0 false
execute if entity @s[tag=ec._a] run attribute @s luck modifier add evercraft:abyssal_pearl_luck 1.5 add_value
tag @s remove ec._a

# Earthshaker Core (Earthshaker) — Resistance II + KB Resistance + 1.5 Dream Rate
# OPT: Tag consolidation (was 6 item scans → 2)
execute if items entity @s container.* *[custom_data~{artifact:"earthshaker_core"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"earthshaker_core"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] if score @s ec.h_resist matches ..1 run effect give @s resistance 5 1 false
execute if entity @s[tag=ec._a] run attribute @s knockback_resistance modifier add evercraft:earthshaker_core_kb 0.5 add_value
execute if entity @s[tag=ec._a] run attribute @s luck modifier add evercraft:earthshaker_core_luck 1.5 add_value
tag @s remove ec._a

# Nightmare Fragment (Nightmare) — Speed I + Invisibility while sneaking + 1.5 Dream Rate
# OPT: Tag consolidation (was 6 item scans → 2)
execute if items entity @s container.* *[custom_data~{artifact:"nightmare_fragment"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"nightmare_fragment"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] if score @s ec.h_speed matches ..1 run effect give @s speed 5 0 false
execute if entity @s[tag=ec._a] if predicate evercraft:sneaking run effect give @s invisibility 5 0 false
execute if entity @s[tag=ec._a] run attribute @s luck modifier add evercraft:nightmare_fragment_luck 1.5 add_value
tag @s remove ec._a

# Infernal Heart (Infernal Titan) — Fire Resistance + Strength I + fire aura + 1.5 Dream Rate
# OPT: Tag consolidation (was 8 item scans → 2)
execute if items entity @s container.* *[custom_data~{artifact:"infernal_heart"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"infernal_heart"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] run effect give @s fire_resistance 15 0 false
execute if entity @s[tag=ec._a] if score @s ec.h_str matches ..1 run effect give @s strength 5 0 false
execute if entity @s[tag=ec._a] as @e[type=#evercraft:hostile_mobs,distance=..4,limit=5] run damage @s 1 minecraft:in_fire
execute if entity @s[tag=ec._a] run attribute @s luck modifier add evercraft:infernal_heart_luck 1.5 add_value
tag @s remove ec._a

# Soulkeeper's Ember (Soul Warden) — Strength I + undead pacified + 1.5 Dream Rate
# OPT: Tag consolidation (was 6 item scans → 2)
execute if items entity @s container.* *[custom_data~{artifact:"soulkeepers_ember"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"soulkeepers_ember"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] if score @s ec.h_str matches ..1 run effect give @s strength 5 0 false
execute if entity @s[tag=ec._a] run effect give @e[type=#minecraft:undead,distance=..12] weakness 5 4 false
execute if entity @s[tag=ec._a] run attribute @s luck modifier add evercraft:soulkeepers_ember_luck 1.5 add_value
tag @s remove ec._a

# Behemoth's Heart (Crimson Behemoth) — Health Boost II + Absorption I + 1.5 Dream Rate
# OPT: Tag consolidation (was 6 item scans → 2)
execute if items entity @s container.* *[custom_data~{artifact:"behemoths_heart"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"behemoths_heart"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] run effect give @s health_boost 5 1 false
execute if entity @s[tag=ec._a] run effect give @s absorption 5 0 false
execute if entity @s[tag=ec._a] run attribute @s luck modifier add evercraft:behemoths_heart_luck 1.5 add_value
tag @s remove ec._a

# Void Sovereign's Eye (Void Sovereign) — Night Vision + Slow Falling + magic aura + 2.0 Dream Rate
# OPT: Tag consolidation (was 8 item scans → 2)
execute if items entity @s container.* *[custom_data~{artifact:"void_sovereigns_eye"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"void_sovereigns_eye"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] run effect give @s night_vision 15 0 false
execute if entity @s[tag=ec._a] run effect give @s slow_falling 5 0 false
execute if entity @s[tag=ec._a] as @e[type=#evercraft:hostile_mobs,distance=..5,limit=5] run damage @s 2 evercraft:bonus_strike
execute if entity @s[tag=ec._a] run attribute @s luck modifier add evercraft:void_sovereigns_eye_luck 2.0 add_value
tag @s remove ec._a

# Architect's Design (Ender Architect) — Night Vision + Speed I + Levitation aura + 2.0 Dream Rate
# OPT: Tag consolidation (was 8 item scans → 2)
execute if items entity @s container.* *[custom_data~{artifact:"architects_design"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"architects_design"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] run effect give @s night_vision 15 0 false
execute if entity @s[tag=ec._a] if score @s ec.h_speed matches ..1 run effect give @s speed 5 0 false
execute if entity @s[tag=ec._a] run effect give @e[type=#evercraft:hostile_mobs,distance=..6,limit=5] levitation 3 0 false
execute if entity @s[tag=ec._a] run attribute @s luck modifier add evercraft:architects_design_luck 2.0 add_value
tag @s remove ec._a

# ============================================================
# === RING ARTIFACTS ===
# ============================================================

# Amethyst Ring — Night Vision (Common)
execute if items entity @s container.* *[custom_data~{artifact:"ring_amethyst"}] run effect give @s night_vision 13 0 true
execute if items entity @s weapon.offhand *[custom_data~{artifact:"ring_amethyst"}] run effect give @s night_vision 13 0 true

# Lapis Ring — Water Breathing (Common)
execute if items entity @s container.* *[custom_data~{artifact:"ring_lapis"}] run effect give @s water_breathing 5 0 true
execute if items entity @s weapon.offhand *[custom_data~{artifact:"ring_lapis"}] run effect give @s water_breathing 5 0 true

# Redstone Ring — Haste (Uncommon)
execute if score @s ec.h_haste matches ..1 if items entity @s container.* *[custom_data~{artifact:"ring_redstone"}] run effect give @s haste 5 0 true
execute if score @s ec.h_haste matches ..1 if items entity @s weapon.offhand *[custom_data~{artifact:"ring_redstone"}] run effect give @s haste 5 0 true

# Diamond Ring — Speed (Uncommon)
execute if score @s ec.h_speed matches ..1 if items entity @s container.* *[custom_data~{artifact:"ring_diamond"}] run effect give @s speed 5 0 true
execute if score @s ec.h_speed matches ..1 if items entity @s weapon.offhand *[custom_data~{artifact:"ring_diamond"}] run effect give @s speed 5 0 true

# Slime Ring — Jump Boost (Uncommon)
execute if score @s ec.h_jump matches ..1 if items entity @s container.* *[custom_data~{artifact:"ring_slime"}] run effect give @s jump_boost 5 0 true
execute if score @s ec.h_jump matches ..1 if items entity @s weapon.offhand *[custom_data~{artifact:"ring_slime"}] run effect give @s jump_boost 5 0 true

# Emerald Ring — Hero of the Village (Rare)
execute if items entity @s container.* *[custom_data~{artifact:"ring_emerald"}] run effect give @s hero_of_the_village 5 0 true
execute if items entity @s weapon.offhand *[custom_data~{artifact:"ring_emerald"}] run effect give @s hero_of_the_village 5 0 true

# Bone Ring — Weakness Aura (Rare)
execute if items entity @s container.* *[custom_data~{artifact:"ring_bone"}] run effect give @e[type=#evercraft:hostile_mobs,distance=..5] weakness 2 0 true
execute if items entity @s weapon.offhand *[custom_data~{artifact:"ring_bone"}] run effect give @e[type=#evercraft:hostile_mobs,distance=..5] weakness 2 0 true

# Honey Ring — Slowness Aura (Rare)
execute if items entity @s container.* *[custom_data~{artifact:"ring_honey"}] run effect give @e[type=#evercraft:hostile_mobs,distance=..5] slowness 2 0 true
execute if items entity @s weapon.offhand *[custom_data~{artifact:"ring_honey"}] run effect give @e[type=#evercraft:hostile_mobs,distance=..5] slowness 2 0 true

# Nether Ring — Resistance II (Ornate)
execute if score @s ec.h_resist matches ..1 if items entity @s container.* *[custom_data~{artifact:"ring_nether"}] run effect give @s resistance 5 1 true
execute if score @s ec.h_resist matches ..1 if items entity @s weapon.offhand *[custom_data~{artifact:"ring_nether"}] run effect give @s resistance 5 1 true

# Trial Ring — +2 Dream Rate (Ornate)
execute if items entity @s container.* *[custom_data~{artifact:"ring_trial"}] run attribute @s luck modifier add evercraft:trial_ring_luck 2.0 add_value
execute if items entity @s weapon.offhand *[custom_data~{artifact:"ring_trial"}] run attribute @s luck modifier add evercraft:trial_ring_luck 2.0 add_value

# Ominous Ring — Health Boost II (Exquisite)
execute if items entity @s container.* *[custom_data~{artifact:"ring_ominous"}] run effect give @s health_boost 5 1 true
execute if items entity @s weapon.offhand *[custom_data~{artifact:"ring_ominous"}] run effect give @s health_boost 5 1 true

# Warden Ring — Strength II + Darkness Immunity (Exquisite)
# OPT: Tag consolidation (was 4 item scans → 2)
execute if items entity @s container.* *[custom_data~{artifact:"ring_warden"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"ring_warden"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] if score @s ec.h_str matches ..1 run effect give @s strength 5 1 true
execute if entity @s[tag=ec._a] run effect clear @s darkness
tag @s remove ec._a

# Void Ring — Resistance II + Fire Resistance + Slow Falling (Mythical)
# OPT: Tag consolidation (was 6 item scans → 2)
execute if items entity @s container.* *[custom_data~{artifact:"ring_void"}] run tag @s add ec._a
execute unless entity @s[tag=ec._a] if items entity @s weapon.offhand *[custom_data~{artifact:"ring_void"}] run tag @s add ec._a
execute if entity @s[tag=ec._a] if score @s ec.h_resist matches ..1 run effect give @s resistance 5 1 true
execute if entity @s[tag=ec._a] run effect give @s fire_resistance 5 0 true
execute if entity @s[tag=ec._a] run effect give @s slow_falling 5 0 true
tag @s remove ec._a

# ============================================================
# === MOB VISION ACTIVATION (Sneak + Mainhand) ===
# ============================================================

# Seer's Compass — sneak + mainhand to reveal hostile mobs (16 blocks, 10s, 30s cd)
execute if predicate evercraft:sneaking if items entity @s weapon.mainhand *[custom_data~{artifact:"seers_compass"}] run function evercraft:artifacts/accessories/activate_seers

# Warden's Echo — sneak + mainhand to sense all mobs (24 blocks, 10s, 30s cd)
execute if predicate evercraft:sneaking if items entity @s weapon.mainhand *[custom_data~{artifact:"wardens_echo"}] run function evercraft:artifacts/accessories/activate_warden_echo

# Claude's Eye — sneak + mainhand for omniscience (32 blocks, 15s, 45s cd)
execute if predicate evercraft:sneaking if items entity @s weapon.mainhand *[custom_data~{artifact:"claudes_eye"}] run function evercraft:artifacts/accessories/activate_claudes_eye

# Warden Totem — sneak + mainhand for sculk sense (48 blocks, 15s, 45s cd)
execute if predicate evercraft:sneaking if items entity @s weapon.mainhand *[custom_data~{artifact:"warden_totem"}] run function evercraft:artifacts/accessories/activate_warden_totem

# Codex of Everything — sneak + mainhand shows dimension teleport menu
execute if predicate evercraft:sneaking if items entity @s weapon.mainhand *[custom_data~{artifact:"codex_of_everything"}] run function evercraft:artifacts/accessories/activate_codex

# ============================================================
# === CLEANUP ===
# ============================================================
tag @s remove ec.regen_capped
function evercraft:artifacts/abilities/accessory_cleanup

# Update tracking flag based on current inventory state
tag @s remove ec.has_accessory
execute if items entity @s container.* *[custom_data~{accessory:true}] run tag @s add ec.has_accessory
execute unless entity @s[tag=ec.has_accessory] if items entity @s weapon.offhand *[custom_data~{accessory:true}] run tag @s add ec.has_accessory
execute unless entity @s[tag=ec.has_accessory] if items entity @s container.* *[custom_data~{ring:true}] run tag @s add ec.has_accessory
execute unless entity @s[tag=ec.has_accessory] if items entity @s weapon.offhand *[custom_data~{ring:true}] run tag @s add ec.has_accessory
execute unless entity @s[tag=ec.has_accessory] if items entity @s container.* *[custom_data~{boss_exclusive:true}] run tag @s add ec.has_accessory
execute unless entity @s[tag=ec.has_accessory] if items entity @s weapon.offhand *[custom_data~{boss_exclusive:true}] run tag @s add ec.has_accessory

# OPT: Worn abilities merged here (was separate @a scan in accessories/tick)
function evercraft:artifacts/accessories/worn_tick_player
