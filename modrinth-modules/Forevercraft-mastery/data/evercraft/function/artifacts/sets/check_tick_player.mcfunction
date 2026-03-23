# Artifact Set Detection + Per-Piece Passives — Per-player
# OPT: Consolidates ~32 @a scans into 1 function call
# Runs as @s = player, at @s

# ============================================
# CHECK ARTIFACT SETS
# ============================================
function evercraft:artifacts/sets/check_sets

# ============================================
# DRAGONMASTER PER-PIECE ABILITIES
# ============================================
# Helmet — Dragon's Sight: Night Vision while worn
execute if items entity @s armor.head *[custom_data~{artifact:"dragonmaster_helmet"}] run effect give @s night_vision 13 0 false

# ============================================
# TITAN PER-PIECE ABILITIES
# ============================================
# Leggings — Tidal Current: Dolphin's Grace while worn
execute if items entity @s armor.legs *[custom_data~{artifact:"titan_leggings"}] run effect give @s dolphins_grace 5 0 false

# ============================================
# VERDANT PER-PIECE ABILITIES
# ============================================
# Helmet — Harvest Sight: Haste I to harvest crops faster
execute if items entity @s armor.head *[custom_data~{artifact:"verdant_helmet"}] unless score @s ec.h_haste matches 2.. run effect give @s haste 3 0 false

# Chestplate — Verdant Heart: Regeneration I while on grass/dirt/farmland
execute if items entity @s armor.chest *[custom_data~{artifact:"verdant_chestplate"}] if block ~ ~-1 ~ #minecraft:dirt unless score @s ec.h_regen matches 2.. run effect give @s regeneration 3 0 false
# Armored Elytra — Verdant Heart still applies (effect, not attribute)
execute if items entity @s armor.chest *[custom_data~{artifact_set:"verdant",armored_elytra:{armored:true}}] if block ~ ~-1 ~ #minecraft:dirt unless score @s ec.h_regen matches 2.. run effect give @s regeneration 3 0 false

# Leggings — Verdant Stride: Speed I while on grass/dirt/farmland
execute if items entity @s armor.legs *[custom_data~{artifact:"verdant_leggings"}] if block ~ ~-1 ~ #minecraft:dirt unless score @s ec.h_speed matches 2.. run effect give @s speed 3 0 false

# ANY Verdant Piece — Crop Trample Immunity
execute if score @s ec.verdant matches 1.. run function evercraft:artifacts/sets/verdant/crop_protect

# Full Set (4pc) — Verdant Aura: Double crop growth
execute if entity @s[tag=verdant_4pc] run function evercraft:artifacts/sets/verdant/crop_growth_aura

# ============================================
# INFERNAL PER-PIECE ABILITIES
# ============================================
# Helmet — Hellsight: Fire Resistance while worn
execute if items entity @s armor.head *[custom_data~{artifact:"infernal_helmet"}] run effect give @s fire_resistance 13 0 false

# Leggings — Nether Fury: +2 Attack Damage in Nether (state-gated)
execute if items entity @s armor.legs *[custom_data~{artifact:"infernal_leggings"}] if dimension minecraft:the_nether unless entity @s[tag=ec.infernal_dmg] run attribute @s attack_damage modifier add evercraft:infernal_nether_dmg 2 add_value
execute if items entity @s armor.legs *[custom_data~{artifact:"infernal_leggings"}] if dimension minecraft:the_nether unless entity @s[tag=ec.infernal_dmg] run tag @s add ec.infernal_dmg
execute unless items entity @s armor.legs *[custom_data~{artifact:"infernal_leggings"}] if entity @s[tag=ec.infernal_dmg] run attribute @s attack_damage modifier remove evercraft:infernal_nether_dmg
execute unless items entity @s armor.legs *[custom_data~{artifact:"infernal_leggings"}] if entity @s[tag=ec.infernal_dmg] run tag @s remove ec.infernal_dmg
execute if items entity @s armor.legs *[custom_data~{artifact:"infernal_leggings"}] unless dimension minecraft:the_nether if entity @s[tag=ec.infernal_dmg] run attribute @s attack_damage modifier remove evercraft:infernal_nether_dmg
execute if items entity @s armor.legs *[custom_data~{artifact:"infernal_leggings"}] unless dimension minecraft:the_nether if entity @s[tag=ec.infernal_dmg] run tag @s remove ec.infernal_dmg

# ============================================
# ENDER DRAGON PER-PIECE ABILITIES
# ============================================
# Helmet — Dragon's Sight: Night Vision while worn
execute if items entity @s armor.head *[custom_data~{artifact:"ender_dragon_helmet"}] run effect give @s night_vision 13 0 false

# Leggings — Void Step: Speed I in The End
execute if items entity @s armor.legs *[custom_data~{artifact:"ender_dragon_leggings"}] if dimension minecraft:the_end unless score @s ec.h_speed matches 2.. run effect give @s speed 3 0 false

# ============================================
# SPEEDY'S KNEE-PADS (SECRET — not in codex/counts)
# ============================================
# Fire Resistance + Resistance I while worn
execute if items entity @s armor.legs *[custom_data~{artifact:"speedys_kneepads"}] run effect give @s fire_resistance 3 0 false
execute if items entity @s armor.legs *[custom_data~{artifact:"speedys_kneepads"}] run effect give @s resistance 3 0 false

# ============================================
# MYTHICAL ARMOR LUCK (+0.5 Dreams per piece)
# ============================================
# Head
execute if items entity @s armor.head *[custom_data~{tier:"mythical"}] unless entity @s[tag=ec.myth_head_luck] run attribute @s luck modifier add evercraft:mythical_head_luck 0.5 add_value
execute if items entity @s armor.head *[custom_data~{tier:"mythical"}] run tag @s add ec.myth_head_luck
execute unless items entity @s armor.head *[custom_data~{tier:"mythical"}] if entity @s[tag=ec.myth_head_luck] run attribute @s luck modifier remove evercraft:mythical_head_luck
execute unless items entity @s armor.head *[custom_data~{tier:"mythical"}] if entity @s[tag=ec.myth_head_luck] run tag @s remove ec.myth_head_luck

# Chest (chestplate + armored elytra)
execute if items entity @s armor.chest *[custom_data~{tier:"mythical"}] unless entity @s[tag=ec.myth_chest_luck] run attribute @s luck modifier add evercraft:mythical_chest_luck 0.5 add_value
execute if items entity @s armor.chest *[custom_data~{tier:"mythical"}] run tag @s add ec.myth_chest_luck
execute unless items entity @s armor.chest *[custom_data~{tier:"mythical"}] if entity @s[tag=ec.myth_chest_luck] run attribute @s luck modifier remove evercraft:mythical_chest_luck
execute unless items entity @s armor.chest *[custom_data~{tier:"mythical"}] if entity @s[tag=ec.myth_chest_luck] run tag @s remove ec.myth_chest_luck

# Legs
execute if items entity @s armor.legs *[custom_data~{tier:"mythical"}] unless entity @s[tag=ec.myth_legs_luck] run attribute @s luck modifier add evercraft:mythical_legs_luck 0.5 add_value
execute if items entity @s armor.legs *[custom_data~{tier:"mythical"}] run tag @s add ec.myth_legs_luck
execute unless items entity @s armor.legs *[custom_data~{tier:"mythical"}] if entity @s[tag=ec.myth_legs_luck] run attribute @s luck modifier remove evercraft:mythical_legs_luck
execute unless items entity @s armor.legs *[custom_data~{tier:"mythical"}] if entity @s[tag=ec.myth_legs_luck] run tag @s remove ec.myth_legs_luck

# Feet
execute if items entity @s armor.feet *[custom_data~{tier:"mythical"}] unless entity @s[tag=ec.myth_feet_luck] run attribute @s luck modifier add evercraft:mythical_feet_luck 0.5 add_value
execute if items entity @s armor.feet *[custom_data~{tier:"mythical"}] run tag @s add ec.myth_feet_luck
execute unless items entity @s armor.feet *[custom_data~{tier:"mythical"}] if entity @s[tag=ec.myth_feet_luck] run attribute @s luck modifier remove evercraft:mythical_feet_luck
execute unless items entity @s armor.feet *[custom_data~{tier:"mythical"}] if entity @s[tag=ec.myth_feet_luck] run tag @s remove ec.myth_feet_luck

# ============================================
# WEAPON PASSIVE ABILITIES (HELD IN MAINHAND)
# ============================================
# Golden Gauntlet — Haste I while held
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"golden_gauntlet"}] unless score @s ec.h_haste matches 2.. run effect give @s haste 3 0 false

# Whirlwind — Speed I while held
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"whirlwind"}] unless score @s ec.h_speed matches 2.. run effect give @s speed 3 0 false

# Leviathan Axe — Slows nearby enemies
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"leviathan_axe"}] run effect give @e[type=#evercraft:hostile,distance=..5] slowness 3 0 false

# Romeo Sword — Speed II + Strength I while held
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"romeo_sword"}] unless score @s ec.h_speed matches 2.. run effect give @s speed 3 1 false
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"romeo_sword"}] unless score @s ec.h_str matches 2.. run effect give @s strength 3 0 false

# Romeo Hammer — Resistance II while held
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"romeo_hammer"}] unless score @s ec.h_resist matches 2.. run effect give @s resistance 3 1 false

# Journey Pickaxe — Luck +2 while held (state-gated)
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"journey_pickaxe"}] unless entity @s[tag=ec.journey_pick_luck] run attribute @s luck modifier add evercraft:journey_pick_luck 2 add_value
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"journey_pickaxe"}] unless entity @s[tag=ec.journey_pick_luck] run tag @s add ec.journey_pick_luck
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"journey_pickaxe"}] if entity @s[tag=ec.journey_pick_luck] run attribute @s luck modifier remove evercraft:journey_pick_luck
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"journey_pickaxe"}] if entity @s[tag=ec.journey_pick_luck] run tag @s remove ec.journey_pick_luck

# Journey Shovel — Luck +2 while held (state-gated)
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"journey_shovel"}] unless entity @s[tag=ec.journey_shov_luck] run attribute @s luck modifier add evercraft:journey_shov_luck 2 add_value
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"journey_shovel"}] unless entity @s[tag=ec.journey_shov_luck] run tag @s add ec.journey_shov_luck
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"journey_shovel"}] if entity @s[tag=ec.journey_shov_luck] run attribute @s luck modifier remove evercraft:journey_shov_luck
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"journey_shovel"}] if entity @s[tag=ec.journey_shov_luck] run tag @s remove ec.journey_shov_luck

# Spelunker Sword — Luck +2 while held (state-gated)
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"spelunker_sword"}] unless entity @s[tag=ec.spelunker_luck] run attribute @s luck modifier add evercraft:spelunker_luck 2 add_value
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"spelunker_sword"}] unless entity @s[tag=ec.spelunker_luck] run tag @s add ec.spelunker_luck
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"spelunker_sword"}] if entity @s[tag=ec.spelunker_luck] run attribute @s luck modifier remove evercraft:spelunker_luck
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"spelunker_sword"}] if entity @s[tag=ec.spelunker_luck] run tag @s remove ec.spelunker_luck

# Angler's Lip Ripper — Luck +6 while held (state-gated)
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"mythical_anglers_lip_ripper"}] unless entity @s[tag=ec.lip_ripper_luck] run attribute @s luck modifier add evercraft:lip_ripper_luck 6 add_value
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"mythical_anglers_lip_ripper"}] unless entity @s[tag=ec.lip_ripper_luck] run tag @s add ec.lip_ripper_luck
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"mythical_anglers_lip_ripper"}] if entity @s[tag=ec.lip_ripper_luck] run attribute @s luck modifier remove evercraft:lip_ripper_luck
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"mythical_anglers_lip_ripper"}] if entity @s[tag=ec.lip_ripper_luck] run tag @s remove ec.lip_ripper_luck

# Wooden Fishing Rod — Luck +1 while held (state-gated)
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"common_wooden_fishing_rod"}] unless entity @s[tag=ec.wooden_rod_luck] run attribute @s luck modifier add evercraft:wooden_rod_luck 1 add_value
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"common_wooden_fishing_rod"}] unless entity @s[tag=ec.wooden_rod_luck] run tag @s add ec.wooden_rod_luck
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"common_wooden_fishing_rod"}] if entity @s[tag=ec.wooden_rod_luck] run attribute @s luck modifier remove evercraft:wooden_rod_luck
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"common_wooden_fishing_rod"}] if entity @s[tag=ec.wooden_rod_luck] run tag @s remove ec.wooden_rod_luck

# Bone Fishing Rod (Uncommon) — Luck +2 while held (state-gated)
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"uncommon_bone_fishing_rod"}] unless entity @s[tag=ec.uc_bone_rod_luck] run attribute @s luck modifier add evercraft:uc_bone_rod_luck 2 add_value
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"uncommon_bone_fishing_rod"}] unless entity @s[tag=ec.uc_bone_rod_luck] run tag @s add ec.uc_bone_rod_luck
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"uncommon_bone_fishing_rod"}] if entity @s[tag=ec.uc_bone_rod_luck] run attribute @s luck modifier remove evercraft:uc_bone_rod_luck
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"uncommon_bone_fishing_rod"}] if entity @s[tag=ec.uc_bone_rod_luck] run tag @s remove ec.uc_bone_rod_luck

# Bone Fishing Rod (Rare) — Luck +3 while held (state-gated)
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"rare_bone_fishing_rod"}] unless entity @s[tag=ec.r_bone_rod_luck] run attribute @s luck modifier add evercraft:r_bone_rod_luck 3 add_value
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"rare_bone_fishing_rod"}] unless entity @s[tag=ec.r_bone_rod_luck] run tag @s add ec.r_bone_rod_luck
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"rare_bone_fishing_rod"}] if entity @s[tag=ec.r_bone_rod_luck] run attribute @s luck modifier remove evercraft:r_bone_rod_luck
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"rare_bone_fishing_rod"}] if entity @s[tag=ec.r_bone_rod_luck] run tag @s remove ec.r_bone_rod_luck

# Blossom Fishing Rod (Rare) — Luck +3 while held (state-gated)
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"blossom_fishing_rod"}] unless entity @s[tag=ec.blossom_rod_luck] run attribute @s luck modifier add evercraft:blossom_rod_luck 3 add_value
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"blossom_fishing_rod"}] unless entity @s[tag=ec.blossom_rod_luck] run tag @s add ec.blossom_rod_luck
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"blossom_fishing_rod"}] if entity @s[tag=ec.blossom_rod_luck] run attribute @s luck modifier remove evercraft:blossom_rod_luck
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"blossom_fishing_rod"}] if entity @s[tag=ec.blossom_rod_luck] run tag @s remove ec.blossom_rod_luck

# Blossom Fishing Rod (Ornate) — Luck +4 while held (state-gated)
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"ornate_blossom_fishing_rod"}] unless entity @s[tag=ec.o_blossom_rod_luck] run attribute @s luck modifier add evercraft:o_blossom_rod_luck 4 add_value
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"ornate_blossom_fishing_rod"}] unless entity @s[tag=ec.o_blossom_rod_luck] run tag @s add ec.o_blossom_rod_luck
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"ornate_blossom_fishing_rod"}] if entity @s[tag=ec.o_blossom_rod_luck] run attribute @s luck modifier remove evercraft:o_blossom_rod_luck
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"ornate_blossom_fishing_rod"}] if entity @s[tag=ec.o_blossom_rod_luck] run tag @s remove ec.o_blossom_rod_luck

# Ember Fishing Rod (Exquisite) — Luck +5 while held (state-gated)
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"exquisite_ember_fishing_rod"}] unless entity @s[tag=ec.ember_rod_luck] run attribute @s luck modifier add evercraft:ember_rod_luck 5 add_value
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"exquisite_ember_fishing_rod"}] unless entity @s[tag=ec.ember_rod_luck] run tag @s add ec.ember_rod_luck
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"exquisite_ember_fishing_rod"}] if entity @s[tag=ec.ember_rod_luck] run attribute @s luck modifier remove evercraft:ember_rod_luck
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"exquisite_ember_fishing_rod"}] if entity @s[tag=ec.ember_rod_luck] run tag @s remove ec.ember_rod_luck

# ============================================
# ORNATE ARTIFACT PASSIVE ABILITIES
# ============================================
# Windwalker Boots — Speed I while worn (gated by harmonization)
execute if items entity @s armor.feet *[custom_data~{artifact:"windwalker_boots"}] unless score @s ec.h_speed matches 2.. run effect give @s speed 5 0 false

# Titan's Plate — +4 Max Health while worn (state-gated)
execute if items entity @s armor.chest *[custom_data~{artifact:"titans_plate"}] unless entity @s[tag=ec.titans_plate] run attribute @s max_health modifier add evercraft:titans_plate_health 4 add_value
execute if items entity @s armor.chest *[custom_data~{artifact:"titans_plate"}] unless entity @s[tag=ec.titans_plate] run tag @s add ec.titans_plate
execute unless items entity @s armor.chest *[custom_data~{artifact:"titans_plate"}] if entity @s[tag=ec.titans_plate] run attribute @s max_health modifier remove evercraft:titans_plate_health
execute unless items entity @s armor.chest *[custom_data~{artifact:"titans_plate"}] if entity @s[tag=ec.titans_plate] run tag @s remove ec.titans_plate

# Warrior's Crown — +2 Attack Damage while worn (state-gated)
execute if items entity @s armor.head *[custom_data~{artifact:"warriors_crown"}] unless entity @s[tag=ec.warriors_crown] run attribute @s attack_damage modifier add evercraft:warriors_crown_damage 2 add_value
execute if items entity @s armor.head *[custom_data~{artifact:"warriors_crown"}] unless entity @s[tag=ec.warriors_crown] run tag @s add ec.warriors_crown
execute unless items entity @s armor.head *[custom_data~{artifact:"warriors_crown"}] if entity @s[tag=ec.warriors_crown] run attribute @s attack_damage modifier remove evercraft:warriors_crown_damage
execute unless items entity @s armor.head *[custom_data~{artifact:"warriors_crown"}] if entity @s[tag=ec.warriors_crown] run tag @s remove ec.warriors_crown

# Leggings of Fortitude — 50% Knockback Resistance while worn (state-gated)
execute if items entity @s armor.legs *[custom_data~{artifact:"leggings_of_fortitude"}] unless entity @s[tag=ec.fortitude] run attribute @s knockback_resistance modifier add evercraft:fortitude_kb_resist 0.5 add_value
execute if items entity @s armor.legs *[custom_data~{artifact:"leggings_of_fortitude"}] unless entity @s[tag=ec.fortitude] run tag @s add ec.fortitude
execute unless items entity @s armor.legs *[custom_data~{artifact:"leggings_of_fortitude"}] if entity @s[tag=ec.fortitude] run attribute @s knockback_resistance modifier remove evercraft:fortitude_kb_resist
execute unless items entity @s armor.legs *[custom_data~{artifact:"leggings_of_fortitude"}] if entity @s[tag=ec.fortitude] run tag @s remove ec.fortitude

# Renegade Chestplate — Luck +1 while worn (state-gated)
execute if items entity @s armor.chest *[custom_data~{artifact:"common_renegade_chestplate"}] unless entity @s[tag=ec.renegade_luck] run attribute @s luck modifier add evercraft:renegade_luck 1 add_value
execute if items entity @s armor.chest *[custom_data~{artifact:"common_renegade_chestplate"}] unless entity @s[tag=ec.renegade_luck] run tag @s add ec.renegade_luck
execute unless items entity @s armor.chest *[custom_data~{artifact:"common_renegade_chestplate"}] if entity @s[tag=ec.renegade_luck] run attribute @s luck modifier remove evercraft:renegade_luck
execute unless items entity @s armor.chest *[custom_data~{artifact:"common_renegade_chestplate"}] if entity @s[tag=ec.renegade_luck] run tag @s remove ec.renegade_luck

# Berserker's Fang — Strength I + Speed I while held, nearby hostiles weakened (gated by harmonization)
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"berserkers_fang"}] unless score @s ec.h_str matches 2.. run effect give @s strength 3 0 false
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"berserkers_fang"}] unless score @s ec.h_speed matches 2.. run effect give @s speed 3 0 false
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"berserkers_fang"}] run effect give @e[type=#evercraft:hostile,distance=..3] weakness 3 0 false

# Splendid locate trigger enable (moved from per-tick, OPT Session 76)
execute if entity @s[tag=splendid_4pc] run scoreboard players enable @s ec.locate

# Splendid compass cooldown decrement (runs every 2s, so subtract 40 ticks per call)
execute if score @s ec.compass_cooldown matches 1.. run scoreboard players remove @s ec.compass_cooldown 40

# NOTE: effect_cleanup removed — already runs every 1s from player_tick → accessory_cleanup.
# Running it here (2s schedule) caused NV flashing: cleanup cleared NV from satchel/armor
# sources without re-applying, leaving a ~1s gap until the next 1s tick restored it.

# ============================================
# HERO'S ETERNAL PER-PIECE ABILITIES (Gacha Exclusive)
# ============================================
# Helmet — Night Vision while worn
execute if items entity @s armor.head *[custom_data~{artifact:"hero_helmet"}] run effect give @s night_vision 13 0 false

# Chestplate — +1 DR at night (luck modifier, state-gated)
execute if items entity @s armor.chest *[custom_data~{artifact:"hero_chestplate"}] if score #visual_time ec.var matches 13000..23000 unless entity @s[tag=ec.hero_night_dr] run attribute @s luck modifier add evercraft:hero_night_dr 1 add_value
execute if items entity @s armor.chest *[custom_data~{artifact:"hero_chestplate"}] if score #visual_time ec.var matches 13000..23000 run tag @s add ec.hero_night_dr
execute if items entity @s armor.chest *[custom_data~{artifact:"hero_chestplate"}] unless score #visual_time ec.var matches 13000..23000 if entity @s[tag=ec.hero_night_dr] run attribute @s luck modifier remove evercraft:hero_night_dr
execute if items entity @s armor.chest *[custom_data~{artifact:"hero_chestplate"}] unless score #visual_time ec.var matches 13000..23000 if entity @s[tag=ec.hero_night_dr] run tag @s remove ec.hero_night_dr
execute unless items entity @s armor.chest *[custom_data~{artifact:"hero_chestplate"}] if entity @s[tag=ec.hero_night_dr] run attribute @s luck modifier remove evercraft:hero_night_dr
execute unless items entity @s armor.chest *[custom_data~{artifact:"hero_chestplate"}] if entity @s[tag=ec.hero_night_dr] run tag @s remove ec.hero_night_dr

# Leggings — Speed I while worn (harmonization-gated)
execute if items entity @s armor.legs *[custom_data~{artifact:"hero_leggings"}] unless score @s ec.h_speed matches 2.. run effect give @s speed 3 0 false

# Boots — Slow Falling while worn
execute if items entity @s armor.feet *[custom_data~{artifact:"hero_boots"}] run effect give @s slow_falling 5 0 false
