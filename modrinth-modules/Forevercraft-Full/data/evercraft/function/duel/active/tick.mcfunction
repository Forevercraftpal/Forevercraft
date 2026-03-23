# Duel Active Tick — runs every tick when #duel_active = 1

# === TEAM DUEL TICK (mode=4) ===
execute if entity @a[tag=ec.duel_active_tag,scores={ec.duel_mode=4},limit=1] run function evercraft:duel/team/tick
execute if entity @a[tag=ec.duel_active_tag,scores={ec.duel_mode=4},limit=1] run return 0

# === FIRST-TO-X DUEL TICK (mode=6) ===
execute if entity @a[tag=ec.duel_active_tag,scores={ec.duel_mode=6},limit=1] run function evercraft:duel/ftx/tick
execute if entity @a[tag=ec.duel_active_tag,scores={ec.duel_mode=6},limit=1] run return 0

# === STANDARD DUEL (modes 1, 2, 5) ===
# HEALTH MONITORING (totem save — prevent actual death)
# Check each duelist's health every tick. If <= 2 HP (1 heart), trigger life save.
# Absorption buffer given at duel start absorbs big hits so this check catches them.
execute as @a[tag=ec.duel_active_tag] run function evercraft:duel/active/check_health

# Bail if duel was resolved by health check (totem save → resolve → cleanup)
execute unless score #duel_active ec.var matches 1 run return 0

# === CLASS DUEL WEAPON CHECK (mode=5) ===
execute as @a[tag=ec.duel_active_tag,scores={ec.duel_mode=5}] run function evercraft:duel/class/verify_weapon

# === OPEN WORLD BOUNDARY CHECK ===
# For duelists in open world mode (mode=1), check distance from engage marker
execute as @a[tag=ec.duel_active_tag,scores={ec.duel_mode=1}] at @s run function evercraft:duel/active/check_boundary

# Bail if duel was resolved by boundary forfeit
execute unless score #duel_active ec.var matches 1 run return 0

# === DISCONNECT DETECTION ===
# If only 1 or 0 duelists remain, auto-resolve
execute store result score #duelist_count ec.temp if entity @a[tag=ec.duel_active_tag]
execute if score #duelist_count ec.temp matches ..1 run function evercraft:duel/active/disconnect
