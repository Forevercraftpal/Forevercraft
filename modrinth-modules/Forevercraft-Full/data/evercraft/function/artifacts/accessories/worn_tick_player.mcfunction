# Worn Artifact Abilities — Per-player check
# Run as @s (player) at @s
# OPT: Extracted from worn_tick to avoid 17 @a selector evaluations

# OPT: Early exit if no armor slot has custom_data (no artifact armor worn)
# 4 quick checks vs 20+ specific artifact checks for players in vanilla gear
execute unless items entity @s armor.head *[custom_data~{}] unless items entity @s armor.chest *[custom_data~{}] unless items entity @s armor.legs *[custom_data~{}] unless items entity @s armor.feet *[custom_data~{}] run return 0

# Shadowstep Boots — Invisibility while sneaking
execute if predicate evercraft:is_sneaking if items entity @s armor.feet *[custom_data~{ability:"shadow_walk"}] run effect give @s invisibility 3 0 false
execute if predicate evercraft:is_sneaking if items entity @s armor.feet *[custom_data~{ability:"shadow_walk"}] run particle smoke ~ ~0.1 ~ 0.2 0 0.2 0.01 2

# Warden Helm — Night Vision when worn
execute if items entity @s armor.head *[custom_data~{ability:"warden_affinity"}] run effect give @s night_vision 15 0 false

# Dark Helmet (Helm of Shadows) — Night Vision passive + Invisibility while sneaking
execute if items entity @s armor.head *[custom_data~{ability:"shadow_veil"}] run effect give @s night_vision 15 0 false
execute if predicate evercraft:is_sneaking if items entity @s armor.head *[custom_data~{ability:"shadow_veil"}] run effect give @s invisibility 3 0 false
execute if predicate evercraft:is_sneaking if items entity @s armor.head *[custom_data~{ability:"shadow_veil"}] run particle smoke ~ ~1.5 ~ 0.3 0.3 0.3 0.01 2

# Phoenix Helm/Plate — Absorption I (rebirth buffer)
execute if items entity @s armor.head *[custom_data~{ability:"rebirth"}] run effect give @s absorption 5 0 false
execute if items entity @s armor.chest *[custom_data~{ability:"rebirth"}] run effect give @s absorption 5 1 false

# Cloudstep Boots — Jump Boost III (pseudo double jump)
execute if items entity @s armor.feet *[custom_data~{ability:"double_jump"}] run effect give @s jump_boost 5 2 false

# Elderguard Legs — Thorns aura (damage nearby attackers) + Dolphin's Grace in water
execute if items entity @s armor.legs *[custom_data~{ability:"damage_reflect"}] as @e[type=#evercraft:hostile_mobs,distance=..2,nbt={HurtTime:0s}] run damage @s 1 minecraft:thorns
execute if predicate evercraft:in_water if items entity @s armor.legs *[custom_data~{ability:"damage_reflect"}] run effect give @s dolphins_grace 5 0 false

# ============================================
# JOURNEY SET — Per-piece Mining Abilities
# ============================================
execute if items entity @s armor.head *[custom_data~{artifact:"journey_helmet"}] run effect give @s night_vision 15 0 false
execute if items entity @s armor.chest *[custom_data~{artifact:"journey_chestplate"}] run effect give @s resistance 5 0 false
execute if items entity @s armor.legs *[custom_data~{artifact:"journey_leggings"}] run effect give @s haste 5 0 false
execute if items entity @s armor.feet *[custom_data~{artifact:"journey_boots"}] run effect give @s slow_falling 5 0 false

# ============================================
# SPELUNKER SET — Per-piece Explorer Abilities
# ============================================
execute if items entity @s armor.head *[custom_data~{artifact:"spelunker_helmet"}] run effect give @s night_vision 15 0 false
execute if items entity @s armor.chest *[custom_data~{artifact:"spelunker_chestplate"}] run effect give @s resistance 5 0 false
execute if items entity @s armor.legs *[custom_data~{artifact:"spelunker_leggings"}] run effect give @s speed 5 0 false
execute if items entity @s armor.feet *[custom_data~{artifact:"spelunker_boots"}] run effect give @s jump_boost 5 0 false

# ============================================
# COMMON — Per-piece Passives
# ============================================
# Fox Chestplate — Fox's Cunning: +10% speed while sneaking
execute if predicate evercraft:is_sneaking if items entity @s armor.chest *[custom_data~{artifact:"common_fox_chestplate"}] run effect give @s speed 3 0 false

# Thief Helmet — Keen Eye: Hostile mobs within 12b glow while sneaking
execute if predicate evercraft:is_sneaking if items entity @s armor.head *[custom_data~{artifact:"common_thief_helmet"}] as @e[type=#evercraft:hostile_mobs,distance=..12] run effect give @s glowing 3 0 false

# Wolf Boots — Pack Runner: Tamed wolves nearby get Speed I
execute if items entity @s armor.feet *[custom_data~{artifact:"common_wolf_boots"}] as @e[type=wolf,distance=..16,nbt={Sitting:0b}] run effect give @s speed 5 0 false

# ============================================
# ORNATE — Blood/Scarlet Set Per-piece Passives
# ============================================
# Helmet: Night Vision in dark areas (always on for simplicity)
execute if items entity @s armor.head *[custom_data~{artifact:"blood_helmet"}] run effect give @s night_vision 15 0 false
# Chestplate: +1 damage to withered targets
execute if items entity @s armor.chest *[custom_data~{artifact:"blood_chestplate"}] at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s,active_effects:[{id:"minecraft:wither"}]}] run damage @s 1 minecraft:mob_attack
# Leggings: red particle trail while sprinting
execute unless predicate evercraft:is_sneaking if items entity @s armor.legs *[custom_data~{artifact:"blood_leggings"}] run particle dust{color:[0.8,0.1,0.1],scale:0.6} ~ ~0.1 ~ 0.2 0 0.2 0 1
# Boots: (stat piece — no active passive needed)

# ============================================
# ORNATE — Celestial/Star Shield Set Per-piece Passives
# ============================================
execute if items entity @s armor.head *[custom_data~{artifact:"celestial_helmet"}] run effect give @s night_vision 15 0 false
# Chestplate: Absorption I at night (DayTime 13000-23000)
execute if items entity @s armor.chest *[custom_data~{artifact:"celestial_chestplate"}] if score #visual_time ec.var matches 13000..23000 run effect give @s absorption 5 0 false
# Leggings: +5% speed at night
execute if items entity @s armor.legs *[custom_data~{artifact:"celestial_leggings"}] if score #visual_time ec.var matches 13000..23000 run effect give @s speed 5 0 false
# Boots: Slow Falling from Y>100
execute positioned ~ 100 ~ if entity @s[dy=255] if items entity @s armor.feet *[custom_data~{artifact:"celestial_boots"}] run effect give @s slow_falling 3 0 false

# ============================================
# ORNATE — Crystal/Emerald Set Per-piece Passives
# ============================================
# Helmet: (projectile protection — attribute, skip active)
# Chestplate: (armor toughness in water — attribute, skip active)
# Leggings: KB resistance (attribute, skip active)
# Boots: Speed I on ice/snow
execute if items entity @s armor.feet *[custom_data~{artifact:"crystal_boots"}] if block ~ ~-1 ~ #minecraft:ice run effect give @s speed 3 0 false

# ============================================
# ORNATE — Dragonslayer Set Per-piece Passives
# ============================================
execute if items entity @s armor.head *[custom_data~{artifact:"dragonslayer_helmet"}] run effect give @s fire_resistance 15 0 false
# Leggings: KB resistance (attribute, skip active)
# Boots: No fall damage (handled via safe_fall attribute, skip active)

# ============================================
# ORNATE — Ender Set Per-piece Passives
# ============================================
# Helmet: Endermen don't aggro (already set bonus, skip)
# Chestplate: Resistance I in End
execute if items entity @s armor.chest *[custom_data~{artifact:"ender_chestplate"}] if dimension the_end run effect give @s resistance 5 0 false
# Leggings: Speed I in End
execute if items entity @s armor.legs *[custom_data~{artifact:"ender_leggings"}] if dimension the_end run effect give @s speed 5 0 false
# Boots: Safe fall (attribute, skip active)

# ============================================
# ORNATE — Frost Set Per-piece Passives
# ============================================
execute if items entity @s armor.head *[custom_data~{artifact:"frost_helmet"}] run effect give @s water_breathing 15 0 false
# Chestplate: Mobs within 2b get Slowness I
execute if items entity @s armor.chest *[custom_data~{artifact:"frost_chestplate"}] as @e[type=#evercraft:hostile_mobs,distance=..2] run effect give @s slowness 3 0 false
# Leggings: Speed I on snow/ice
execute if items entity @s armor.legs *[custom_data~{artifact:"frost_leggings"}] if block ~ ~-1 ~ #minecraft:ice run effect give @s speed 3 0 false
execute if items entity @s armor.legs *[custom_data~{artifact:"frost_leggings"}] if block ~ ~-1 ~ snow_block run effect give @s speed 3 0 false
# Boots: Jump Boost I on snow
execute if items entity @s armor.feet *[custom_data~{artifact:"frost_boots"}] if block ~ ~-1 ~ snow_block run effect give @s jump_boost 3 0 false

# ============================================
# ORNATE — Golem/Stalwart Set Per-piece Passives
# ============================================
# Helmet: Mining Fatigue immunity
execute if items entity @s armor.head *[custom_data~{artifact:"golem_helmet"}] run effect clear @s mining_fatigue
# Chestplate: KB resistance (attribute, skip active)
# Leggings: Haste I while on stone
execute if items entity @s armor.legs *[custom_data~{artifact:"golem_leggings"}] if block ~ ~-1 ~ #minecraft:base_stone_overworld run effect give @s haste 3 0 false
# Boots: No fall damage (attribute, skip active)

# ============================================
# ORNATE — Nature/Sakura Set Per-piece Passives
# ============================================
# Helmet: Regen I on grass/dirt
execute if items entity @s armor.head *[custom_data~{artifact:"nature_helmet"}] if block ~ ~-1 ~ #minecraft:dirt run effect give @s regeneration 3 0 false
# Chestplate: Poison immunity
execute if items entity @s armor.chest *[custom_data~{artifact:"nature_chestplate"}] run effect clear @s poison
# Leggings: Speed I in forests (simplified — on grass)
execute if items entity @s armor.legs *[custom_data~{artifact:"nature_leggings"}] if block ~ ~-1 ~ grass_block run effect give @s speed 3 0 false
# Boots: No crop trampling (can't prevent in datapack — skip)

# ============================================
# ORNATE — Netherwalker Set Per-piece Passives
# ============================================
execute if items entity @s armor.head *[custom_data~{artifact:"netherwalker_helmet"}] run effect give @s fire_resistance 15 0 false
# Leggings: Speed I in Nether
execute if items entity @s armor.legs *[custom_data~{artifact:"netherwalker_leggings"}] if dimension the_nether run effect give @s speed 5 0 false
# Boots: Fire Resistance (covered by helmet, skip)

# ============================================
# ORNATE — Ocean/Prismarine Set Per-piece Passives
# ============================================
execute if items entity @s armor.head *[custom_data~{artifact:"ocean_helmet"}] run effect give @s water_breathing 15 0 false
# Chestplate: Conduit Power in rain
execute if predicate evercraft:is_raining if items entity @s armor.chest *[custom_data~{artifact:"ocean_chestplate"}] run effect give @s conduit_power 5 0 false
# Leggings: Dolphin's Grace
execute if predicate evercraft:in_water if items entity @s armor.legs *[custom_data~{artifact:"ocean_leggings"}] run effect give @s dolphins_grace 5 0 false
# Boots: Depth Strider (attribute, skip active)

# ============================================
# ORNATE — Sculk/Romeo's Set Per-piece Passives
# ============================================
# Helmet: Darkness immunity
execute if items entity @s armor.head *[custom_data~{artifact:"sculk_helmet"}] run effect clear @s darkness
# Chestplate: Vibration sense (mobs glow when they attack nearby)
execute if items entity @s armor.chest *[custom_data~{artifact:"sculk_chestplate"}] as @e[type=#evercraft:hostile_mobs,distance=..16,nbt={HurtTime:10s}] run effect give @s glowing 3 0 false
# Leggings: Speed I underground (below Y=50)
execute positioned ~ 50 ~ unless entity @s[dy=255] if items entity @s armor.legs *[custom_data~{artifact:"sculk_leggings"}] run effect give @s speed 3 0 false
# Boots: (sculk sensor suppression not possible — skip)

# ============================================
# ORNATE — Storm/Petra's Set Per-piece Passives
# ============================================
# Helmet: Lightning immunity (via Fire Resistance during storms)
execute if predicate evercraft:is_raining if items entity @s armor.head *[custom_data~{artifact:"storm_helmet"}] run effect give @s fire_resistance 5 0 false
# Chestplate: Mobs within 3b get Weakness I during thunderstorms
execute if predicate evercraft:is_raining if items entity @s armor.chest *[custom_data~{artifact:"storm_chestplate"}] as @e[type=#evercraft:hostile_mobs,distance=..3] run effect give @s weakness 3 0 false
# Leggings: Speed II during rain
execute if predicate evercraft:is_raining if items entity @s armor.legs *[custom_data~{artifact:"storm_leggings"}] run effect give @s speed 3 1 false
# Boots: Jump Boost I during storms
execute if predicate evercraft:is_raining if items entity @s armor.feet *[custom_data~{artifact:"storm_boots"}] run effect give @s jump_boost 3 0 false

# ============================================
# ORNATE — Phantom Set Per-piece Passives
# ============================================
execute if items entity @s armor.head *[custom_data~{artifact:"phantom_helmet"}] run effect give @s night_vision 15 0 false
execute if items entity @s armor.chest *[custom_data~{artifact:"phantom_chestplate"}] run effect give @s slow_falling 5 0 false
# Leggings: Invisibility while sneaking at night
execute if predicate evercraft:is_sneaking if items entity @s armor.legs *[custom_data~{artifact:"phantom_leggings"}] if score #visual_time ec.var matches 13000..23000 run effect give @s invisibility 3 0 false
# Boots: No fall damage (attribute, skip active)

# ============================================
# ORNATE — Shadow Walker Set Per-piece Passives
# ============================================
execute if items entity @s armor.head *[custom_data~{artifact:"shadow_helmet"}] run effect give @s night_vision 15 0 false
# Chestplate: Invisibility while sneaking (2pc bonus handles this, skip)
# Leggings: +15% speed at night
execute if items entity @s armor.legs *[custom_data~{artifact:"shadow_leggings"}] if score #visual_time ec.var matches 13000..23000 run effect give @s speed 3 0 false
# Boots: (no step particles not possible — skip)

# ============================================
# ORNATE — Wither Set Per-piece Passives
# ============================================
# Helmet: Wither immunity
execute if items entity @s armor.head *[custom_data~{artifact:"wither_helmet"}] run effect clear @s wither
# Boots: Wither rose immunity (clear wither effect — same as helmet)
# Leggings/Chestplate: Wither reduction (covered by helmet immunity)

# ============================================
# EXQUISITE — Cloaked Skull Set Per-piece Passives
# ============================================
# Helmet: Undead mobs within 8b don't aggro (simplified: give them Weakness)
execute if items entity @s armor.head *[custom_data~{artifact:"cloaked_skull_helmet"}] as @e[type=#minecraft:undead,distance=..8] run effect give @s weakness 3 0 false
# Chestplate: Wither immunity
execute if items entity @s armor.chest *[custom_data~{artifact:"cloaked_skull_chestplate"}] run effect clear @s wither
# Leggings: Invisibility while sneaking
execute if predicate evercraft:is_sneaking if items entity @s armor.legs *[custom_data~{artifact:"cloaked_skull_leggings"}] run effect give @s invisibility 3 0 false
# Boots: Speed I at night
execute if items entity @s armor.feet *[custom_data~{artifact:"cloaked_skull_boots"}] if score #visual_time ec.var matches 13000..23000 run effect give @s speed 3 0 false

# ============================================
# EXQUISITE — Ember Set Per-piece Passives
# ============================================
execute if items entity @s armor.head *[custom_data~{artifact:"ember_helmet"}] run effect give @s fire_resistance 15 0 false
# Chestplate: Fire aura — hostile mobs within 2b catch fire
execute if items entity @s armor.chest *[custom_data~{artifact:"ember_chestplate"}] as @e[type=#evercraft:hostile_mobs,distance=..2] run data merge entity @s {Fire:40s}
# Leggings: Speed I in Nether
execute if items entity @s armor.legs *[custom_data~{artifact:"ember_leggings"}] if dimension the_nether run effect give @s speed 5 0 false
# Boots: Walk on magma safely (Fire Resistance covers this)

# ============================================
# EXQUISITE — Fireforged/Phoenix Set Per-piece Passives
# ============================================
# Helmet + Chestplate: Already have rebirth ability (handled above)
# Leggings: Speed I + fire particles while sprinting
execute unless predicate evercraft:is_sneaking if items entity @s armor.legs *[custom_data~{artifact:"phoenix_leggings"}] run effect give @s speed 5 0 false
execute unless predicate evercraft:is_sneaking if items entity @s armor.legs *[custom_data~{artifact:"phoenix_leggings"}] run particle flame ~ ~0.1 ~ 0.1 0 0.1 0.01 1
# Boots: No fall damage (attribute, skip active)

# ============================================
# EXQUISITE — Ninja Set Per-piece Passives
# ============================================
# Helmet: Night Vision in dark areas
execute if items entity @s armor.head *[custom_data~{artifact:"ninja_helmet"}] run effect give @s night_vision 15 0 false
# Chestplate: Invisibility while sneaking (2pc handles this)
# Leggings: +20% speed at night
execute if items entity @s armor.legs *[custom_data~{artifact:"ninja_leggings"}] if score #visual_time ec.var matches 13000..23000 run effect give @s speed 3 1 false
# Boots: No fall damage + silent (attribute, skip active)

# ============================================
# EXQUISITE — Space Set Per-piece Passives
# ============================================
execute if items entity @s armor.head *[custom_data~{artifact:"space_helmet"}] run effect give @s water_breathing 15 0 false
execute if items entity @s armor.chest *[custom_data~{artifact:"space_chestplate"}] run effect give @s slow_falling 5 0 false
execute if items entity @s armor.legs *[custom_data~{artifact:"space_leggings"}] run effect give @s jump_boost 5 2 false
# Boots: No fall damage (attribute, skip active)

# ============================================
# MYTHICAL — Dragonmaster/Wyrmrider Set Per-piece Passives
# ============================================
execute if items entity @s armor.head *[custom_data~{artifact:"dragonmaster_helmet"}] run effect give @s fire_resistance 15 0 false
# Chestplate: +10% damage to mobs on fire (check target has Fire)
execute if items entity @s armor.chest *[custom_data~{artifact:"dragonmaster_chestplate"}] at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] if data entity @s {Fire:1s} run damage @s 1 minecraft:on_fire
# Leggings: KB Resistance (attribute, skip active)
# Boots: No fall damage + flame trail particles
execute unless predicate evercraft:is_sneaking if items entity @s armor.feet *[custom_data~{artifact:"dragonmaster_boots"}] run particle flame ~ ~0.1 ~ 0.1 0 0.1 0.01 1

# ============================================
# MYTHICAL — Ender Dragon/Voidscale Set Per-piece Passives
# ============================================
execute if items entity @s armor.head *[custom_data~{artifact:"ender_dragon_helmet"}] run effect give @s night_vision 15 0 false
execute if items entity @s armor.head *[custom_data~{artifact:"ender_dragon_helmet"}] run effect clear @s darkness
# Chestplate: Endermen don't aggro (can't suppress — give player Invis aura? Skip)
# Leggings: Speed I in End
execute if items entity @s armor.legs *[custom_data~{artifact:"ender_dragon_leggings"}] if dimension the_end run effect give @s speed 5 0 false
# Boots: Slow Falling + No fall damage
execute if items entity @s armor.feet *[custom_data~{artifact:"ender_dragon_boots"}] run effect give @s slow_falling 5 0 false

# ============================================
# MYTHICAL — Infernal/Lava Warrior Set Per-piece Passives
# ============================================
execute if items entity @s armor.head *[custom_data~{artifact:"infernal_helmet"}] run effect give @s fire_resistance 15 0 false
# Chestplate: Mobs within 3b take 1 fire damage/sec
execute if items entity @s armor.chest *[custom_data~{artifact:"infernal_chestplate"}] as @e[type=#evercraft:hostile_mobs,distance=..3] run damage @s 1 minecraft:on_fire
# Leggings: Speed I in Nether
execute if items entity @s armor.legs *[custom_data~{artifact:"infernal_leggings"}] if dimension the_nether run effect give @s speed 5 0 false
# Boots: Fire Resistance (covered by helmet)

# ============================================
# MYTHICAL — Titan/Tempest Set Per-piece Passives
# ============================================
execute if items entity @s armor.head *[custom_data~{artifact:"titan_helmet"}] run effect give @s water_breathing 15 0 false
execute if items entity @s armor.head *[custom_data~{artifact:"titan_helmet"}] run effect give @s conduit_power 5 0 false
# Chestplate: Resistance I in water/rain
execute if predicate evercraft:in_water if items entity @s armor.chest *[custom_data~{artifact:"titan_chestplate"}] run effect give @s resistance 5 0 false
execute if predicate evercraft:is_raining if items entity @s armor.chest *[custom_data~{artifact:"titan_chestplate"}] run effect give @s resistance 5 0 false
# Leggings: Dolphin's Grace
execute if predicate evercraft:in_water if items entity @s armor.legs *[custom_data~{artifact:"titan_leggings"}] run effect give @s dolphins_grace 5 0 false
# Boots: Depth Strider (attribute, skip active)

# ============================================
# MYTHICAL — Verdant/Grove Set Per-piece Passives
# ============================================
execute if items entity @s armor.head *[custom_data~{artifact:"verdant_helmet"}] if block ~ ~-1 ~ #minecraft:dirt run effect give @s regeneration 3 0 false
execute if items entity @s armor.chest *[custom_data~{artifact:"verdant_chestplate"}] run effect clear @s poison
# Leggings: Speed I in forests (on grass)
execute if items entity @s armor.legs *[custom_data~{artifact:"verdant_leggings"}] if block ~ ~-1 ~ grass_block run effect give @s speed 3 0 false
# Boots: No crop trampling (can't prevent — skip)

# ============================================
# MYTHICAL — Hero/Eternal Set Per-piece Passives
# ============================================
execute if items entity @s armor.head *[custom_data~{artifact:"hero_helmet"}] run effect give @s night_vision 15 0 false
execute if items entity @s armor.chest *[custom_data~{artifact:"hero_chestplate"}] run effect give @s absorption 5 0 false
execute if items entity @s armor.legs *[custom_data~{artifact:"hero_leggings"}] run effect give @s speed 5 0 false
execute if items entity @s armor.feet *[custom_data~{artifact:"hero_boots"}] run effect give @s jump_boost 5 0 false
