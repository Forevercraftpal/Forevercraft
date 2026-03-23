# ============================================================
# Guild Diplomacy — 5s Self-Scheduling Tick
# Triggers, vote timers, enemy/cooldown cleanup
# ============================================================

# Self-schedule
schedule function evercraft:guild/diplomacy/tick 5s

# === TRIGGER PROCESSING ===
# 1=propose alliance, 2=propose competition, 3=propose pillage, 6=remove alliance, 7=remove enemy
execute as @a[scores={ec.gd_diplo=1..3}] at @s run function evercraft:guild/diplomacy/propose/start
execute as @a[scores={ec.gd_diplo=6..7}] at @s run function evercraft:guild/diplomacy/propose/start
# 4=vote yes, 5=vote no
execute as @a[scores={ec.gd_diplo=4}] run function evercraft:guild/diplomacy/propose/vote_yes
execute as @a[scores={ec.gd_diplo=5}] run function evercraft:guild/diplomacy/propose/vote_no
# Reset trigger
scoreboard players enable @a[scores={ec.gd_diplo=1..}] ec.gd_diplo
scoreboard players set @a[scores={ec.gd_diplo=1..}] ec.gd_diplo 0

# === VOTE TIMEOUT (non-queued votes only) ===
# Decrement cooldown (5s = 100 ticks per cycle)
scoreboard players remove @a[scores={ec.gd_vote_cd=1..}] ec.gd_vote_cd 100
# Expire votes that hit 0 and are NOT queued
execute as @a[scores={ec.gd_vote_cd=..-1,ec.gd_vote_queued=0}] run function evercraft:guild/diplomacy/propose/expire

# === ENEMY EXPIRY CLEANUP ===
function evercraft:guild/diplomacy/cleanup_enemies

# === COOLDOWN EXPIRY CLEANUP ===
function evercraft:guild/diplomacy/cleanup_cooldowns

# === EVENT CHECK ===
# If event active, the 1s event tick handles itself — nothing needed here
