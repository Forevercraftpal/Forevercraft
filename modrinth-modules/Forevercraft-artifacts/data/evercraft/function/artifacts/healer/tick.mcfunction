# Healer Artifacts — Tick Function (1s self-schedule)
# Decrements cooldowns, manages weapon lockout
# OPT: Batched 24 @a scans into 1 per-player function call

# OPT: Skip everything when nobody has an active healer cooldown
# ec.hl_locked is set to 1 immediately on use, so this catches all active cooldowns
execute unless entity @a[scores={ec.hl_locked=1..},limit=1] unless entity @e[type=#evercraft:arrows,tag=healer_arrow,limit=1] run return run schedule function evercraft:artifacts/healer/tick 1s

# === PER-PLAYER COOLDOWN + LOCKOUT (was 24 separate @a scans) ===
execute as @a[scores={ec.hl_locked=1..}] run function evercraft:artifacts/healer/tick_player

# === LOCKOUT EFFECTS ===
# Weakness V (amplifier 4) — blocks melee damage
execute as @a[scores={ec.hl_locked=1..}] run effect give @s weakness 2 4 false

# OPT: Consolidated 4 arrow entity scans (2 types × 2 operations) into 1 pass via type tag + sub-function
execute as @e[type=#evercraft:arrows,tag=healer_arrow] run function evercraft:artifacts/healer/tick_arrow

# === RESCHEDULE ===
schedule function evercraft:artifacts/healer/tick 1s
