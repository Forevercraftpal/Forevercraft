# Artifact Set Bonuses - Tick
# Set detection (check_sets) moved to 1s schedule (OPT-3, Session 9)
# 4pc abilities now handled by item_use advancements (horn items) — legacy triggers removed (Session 70)
# This tick function handles: 2pc passives, cooldowns, damage tracking

# (Player existence guaranteed by main tick.mcfunction)

# ============================================
# 2-PIECE ON-HIT PASSIVES (need per-tick damage tracking)
# ============================================

# Dragonslayer 2pc: On Attack bonus damage
execute as @a[tag=dragonslayer_2pc,scores={ec.artifact_dmg=1..}] at @s run function evercraft:artifacts/sets/dragonslayer/on_attack

# Frost 2pc: Freeze Attackers on hurt
execute as @a[tag=frost_2pc,scores={ec.artifact_hurt=1..}] at @s run function evercraft:artifacts/sets/frost/on_hurt

# Wither 2pc: Lifesteal on attack
execute as @a[tag=wither_2pc,scores={ec.artifact_dmg=1..}] at @s run function evercraft:artifacts/sets/wither/on_attack

# ============================================
# DREAM AEGIS: Tick-precise iframes (tag set by 1s player_tick)
# ============================================
# Trigger: player took damage + has aegis + no active iframe window
execute as @a[tag=ec.has_aegis,scores={ec.artifact_hurt=1..}] unless score @s ec.aegis_cd matches 1.. at @s run function evercraft:artifacts/accessories/dream_aegis/on_hurt
# Maintain: refresh Resistance V every tick while iframe window is active (2+ remaining)
execute as @a[scores={ec.aegis_cd=2..}] run effect give @s resistance 1 4 true
# Expire: clear Resistance precisely on the last tick (prevents 1s overshoot)
execute as @a[scores={ec.aegis_cd=1}] run effect clear @s resistance
# Decrement iframe timer
scoreboard players remove @a[scores={ec.aegis_cd=1..}] ec.aegis_cd 1

# ============================================
# MYTHICAL SET COOLDOWN DECREMENTS
# ============================================
scoreboard players remove @a[scores={ec.dragon_cd=1..}] ec.dragon_cd 1
scoreboard players remove @a[scores={ec.tidal_cd=1..}] ec.tidal_cd 1
scoreboard players remove @a[scores={ec.harvest_cd=1..}] ec.harvest_cd 1
scoreboard players remove @a[scores={ec.infernal_cd=1..}] ec.infernal_cd 1
scoreboard players remove @a[scores={ec.dragon_blade_cd=1..}] ec.dragon_blade_cd 1
scoreboard players remove @a[scores={ec.hero_cd=1..}] ec.hero_cd 1

# ============================================
# PER-PIECE PASSIVES + CHECK_SETS moved to check_tick (1s schedule, OPT-3 Session 9)
# check_sets (533 lines/player) + per-piece passives (~130 lines) now run 1x/sec not 20x/sec
# ============================================

# ============================================
# RESET DAMAGE TRACKING
# ============================================
scoreboard players set @a[scores={ec.artifact_dmg=1..}] ec.artifact_dmg 0
scoreboard players set @a[scores={ec.artifact_hurt=1..}] ec.artifact_hurt 0
