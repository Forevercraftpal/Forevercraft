# Infinite Castle — Apply Scaling
# 3 layers: Castle Base (+25% HP, +15% DMG) + Floor Scaling + DR Scaling
# Run after spawn_wave. Scales unscaled mobs (ic.mob without ic.scaled)

# ========================================
# LAYER 1: Castle Base Difficulty (+25% HP, +15% DMG on all floors)
# ========================================
execute as @e[tag=ic.mob,tag=!ic.scaled] run attribute @s minecraft:max_health modifier add ic_base_hp 0.25 add_multiplied_base
execute as @e[tag=ic.mob,tag=!ic.scaled] run attribute @s minecraft:attack_damage modifier add ic_base_dmg 0.15 add_multiplied_base

# ========================================
# LAYER 2: Floor Scaling (+5% HP, +3% DMG per floor)
# ========================================
# Calculate floor multipliers: floor × 5 / 100 for HP, floor × 3 / 100 for DMG
# Store as double for attribute modifier
scoreboard players operation #ic_hp_pct ec.var = #ic_floor ec.var
scoreboard players operation #ic_hp_pct ec.var *= #5 ec.const
execute store result storage evercraft:castle scale.floor_hp double 0.01 run scoreboard players get #ic_hp_pct ec.var

scoreboard players operation #ic_dmg_pct ec.var = #ic_floor ec.var
scoreboard players operation #ic_dmg_pct ec.var *= #3 ec.const
execute store result storage evercraft:castle scale.floor_dmg double 0.01 run scoreboard players get #ic_dmg_pct ec.var

# Apply via macro (attribute modifiers need exact float values)
function evercraft:castle/apply_floor_scale with storage evercraft:castle scale

# ========================================
# LAYER 3: DR Scaling (same as dungeon system)
# ========================================

# DR 0-4: no DR modifiers

# DR 5-9: +40% HP, +20% DMG, +5% Speed, +2 Armor
execute if score #ic_dr ec.var matches 5..9 as @e[tag=ic.mob,tag=!ic.scaled] run attribute @s minecraft:max_health modifier add ic_dr_hp 0.40 add_multiplied_base
execute if score #ic_dr ec.var matches 5..9 as @e[tag=ic.mob,tag=!ic.scaled] run attribute @s minecraft:attack_damage modifier add ic_dr_dmg 0.20 add_multiplied_base
execute if score #ic_dr ec.var matches 5..9 as @e[tag=ic.mob,tag=!ic.scaled] run attribute @s minecraft:movement_speed modifier add ic_dr_spd 0.05 add_multiplied_base
execute if score #ic_dr ec.var matches 5..9 as @e[tag=ic.mob,tag=!ic.scaled] run attribute @s minecraft:armor modifier add ic_dr_arm 2.0 add_value

# DR 10-14: +100% HP, +50% DMG, +10% Speed, +4 Armor
execute if score #ic_dr ec.var matches 10..14 as @e[tag=ic.mob,tag=!ic.scaled] run attribute @s minecraft:max_health modifier add ic_dr_hp 1.00 add_multiplied_base
execute if score #ic_dr ec.var matches 10..14 as @e[tag=ic.mob,tag=!ic.scaled] run attribute @s minecraft:attack_damage modifier add ic_dr_dmg 0.50 add_multiplied_base
execute if score #ic_dr ec.var matches 10..14 as @e[tag=ic.mob,tag=!ic.scaled] run attribute @s minecraft:movement_speed modifier add ic_dr_spd 0.10 add_multiplied_base
execute if score #ic_dr ec.var matches 10..14 as @e[tag=ic.mob,tag=!ic.scaled] run attribute @s minecraft:armor modifier add ic_dr_arm 4.0 add_value

# DR 15-19: +200% HP, +100% DMG, +15% Speed, +8 Armor
execute if score #ic_dr ec.var matches 15..19 as @e[tag=ic.mob,tag=!ic.scaled] run attribute @s minecraft:max_health modifier add ic_dr_hp 2.00 add_multiplied_base
execute if score #ic_dr ec.var matches 15..19 as @e[tag=ic.mob,tag=!ic.scaled] run attribute @s minecraft:attack_damage modifier add ic_dr_dmg 1.00 add_multiplied_base
execute if score #ic_dr ec.var matches 15..19 as @e[tag=ic.mob,tag=!ic.scaled] run attribute @s minecraft:movement_speed modifier add ic_dr_spd 0.15 add_multiplied_base
execute if score #ic_dr ec.var matches 15..19 as @e[tag=ic.mob,tag=!ic.scaled] run attribute @s minecraft:armor modifier add ic_dr_arm 8.0 add_value

# DR 20-24: +325% HP, +150% DMG, +20% Speed, +12 Armor
execute if score #ic_dr ec.var matches 20..24 as @e[tag=ic.mob,tag=!ic.scaled] run attribute @s minecraft:max_health modifier add ic_dr_hp 3.25 add_multiplied_base
execute if score #ic_dr ec.var matches 20..24 as @e[tag=ic.mob,tag=!ic.scaled] run attribute @s minecraft:attack_damage modifier add ic_dr_dmg 1.50 add_multiplied_base
execute if score #ic_dr ec.var matches 20..24 as @e[tag=ic.mob,tag=!ic.scaled] run attribute @s minecraft:movement_speed modifier add ic_dr_spd 0.20 add_multiplied_base
execute if score #ic_dr ec.var matches 20..24 as @e[tag=ic.mob,tag=!ic.scaled] run attribute @s minecraft:armor modifier add ic_dr_arm 12.0 add_value

# DR 25-29: +500% HP, +225% DMG, +25% Speed, +16 Armor
execute if score #ic_dr ec.var matches 25..29 as @e[tag=ic.mob,tag=!ic.scaled] run attribute @s minecraft:max_health modifier add ic_dr_hp 5.00 add_multiplied_base
execute if score #ic_dr ec.var matches 25..29 as @e[tag=ic.mob,tag=!ic.scaled] run attribute @s minecraft:attack_damage modifier add ic_dr_dmg 2.25 add_multiplied_base
execute if score #ic_dr ec.var matches 25..29 as @e[tag=ic.mob,tag=!ic.scaled] run attribute @s minecraft:movement_speed modifier add ic_dr_spd 0.25 add_multiplied_base
execute if score #ic_dr ec.var matches 25..29 as @e[tag=ic.mob,tag=!ic.scaled] run attribute @s minecraft:armor modifier add ic_dr_arm 16.0 add_value

# DR 30+: +750% HP, +300% DMG, +30% Speed, +20 Armor
execute if score #ic_dr ec.var matches 30.. as @e[tag=ic.mob,tag=!ic.scaled] run attribute @s minecraft:max_health modifier add ic_dr_hp 7.50 add_multiplied_base
execute if score #ic_dr ec.var matches 30.. as @e[tag=ic.mob,tag=!ic.scaled] run attribute @s minecraft:attack_damage modifier add ic_dr_dmg 3.00 add_multiplied_base
execute if score #ic_dr ec.var matches 30.. as @e[tag=ic.mob,tag=!ic.scaled] run attribute @s minecraft:movement_speed modifier add ic_dr_spd 0.30 add_multiplied_base
execute if score #ic_dr ec.var matches 30.. as @e[tag=ic.mob,tag=!ic.scaled] run attribute @s minecraft:armor modifier add ic_dr_arm 20.0 add_value

# ========================================
# LAYER 4: Multiplayer Scaling (+50% HP per extra player)
# ========================================
execute if score #ic_players ec.var matches 2 as @e[tag=ic.mob,tag=!ic.scaled] run attribute @s minecraft:max_health modifier add ic_party_hp 0.50 add_multiplied_base
execute if score #ic_players ec.var matches 3 as @e[tag=ic.mob,tag=!ic.scaled] run attribute @s minecraft:max_health modifier add ic_party_hp 1.00 add_multiplied_base
execute if score #ic_players ec.var matches 4.. as @e[tag=ic.mob,tag=!ic.scaled] run attribute @s minecraft:max_health modifier add ic_party_hp 1.50 add_multiplied_base

# ========================================
# FINALIZE: Health reset + tag
# ========================================

# Heal each mob to full individually (shared storage path bug — must run per-entity)
execute as @e[tag=ic.mob,tag=!ic.scaled] run function evercraft:castle/heal_to_max

# Make mobs glow
execute as @e[tag=ic.mob,tag=!ic.scaled] run data merge entity @s {Glowing:1b}

# Ensure mobs can detect players across the full arena (default follow_range is 16 for some mobs)
execute as @e[tag=ic.mob,tag=!ic.scaled] run attribute @s minecraft:follow_range base set 64

# No drops
execute as @e[tag=ic.mob,tag=!ic.scaled] run data merge entity @s {DeathLootTable:"minecraft:empty"}

# Force neutral mobs to auto-attack players (zombified piglins, spiders, endermen)
# Deal 1 damage from nearest player to trigger aggro, then reheal
execute as @a[tag=ic.player,limit=1] at @s run damage @e[tag=ic.mob,tag=!ic.scaled,type=zombified_piglin,distance=..64] 1 minecraft:player_attack by @s
execute as @a[tag=ic.player,limit=1] at @s run damage @e[tag=ic.mob,tag=!ic.scaled,type=spider,distance=..64] 1 minecraft:player_attack by @s
execute as @a[tag=ic.player,limit=1] at @s run damage @e[tag=ic.mob,tag=!ic.scaled,type=cave_spider,distance=..64] 1 minecraft:player_attack by @s
execute as @a[tag=ic.player,limit=1] at @s run damage @e[tag=ic.mob,tag=!ic.scaled,type=enderman,distance=..64] 1 minecraft:player_attack by @s
# Reheal the 1 damage dealt to trigger aggro
execute as @e[tag=ic.mob,tag=!ic.scaled] run function evercraft:castle/heal_to_max

# Tag as scaled
tag @e[tag=ic.mob,tag=!ic.scaled] add ic.scaled
