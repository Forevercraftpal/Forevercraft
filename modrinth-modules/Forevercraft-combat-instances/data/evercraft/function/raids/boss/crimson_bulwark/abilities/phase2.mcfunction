# The Crimson Bulwark — Phase 2: The Reflector (66%-33% HP)
# - Reflection zone: 50% damage reflected back to attacker within 5 blocks
# - Shield slam continues (every 160 ticks)
# - Guard summons continue (every 300 ticks)

# ── Reflection Zone Active ──
# Players within 5 blocks who hit boss take 50% of their damage back
# Tracked via #rd_cb_reflect flag (set to 1 in this phase)
execute if score #rd_cb_reflect ec.var matches 1 as @e[type=vindicator,tag=ec.rd_boss,limit=1] at @s run particle minecraft:enchant ~ ~1 ~ 5 1 5 0.02 5

# ── Frontal Shield (reduced: Resistance I instead of II) ──
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] run effect give @s resistance 2 0 true

# ── Shield Slam (every 8 seconds) ──
execute if score #rd_cb_slam_cd ec.var matches 0 run function evercraft:raids/boss/crimson_bulwark/abilities/shield_slam
execute if score #rd_cb_slam_cd ec.var matches 0 run scoreboard players set #rd_cb_slam_cd ec.var 160

# ── Summon Guards (every 15 seconds) ──
execute if score #rd_cb_guard_cd ec.var matches 0 run function evercraft:raids/boss/crimson_bulwark/abilities/summon_guards
execute if score #rd_cb_guard_cd ec.var matches 0 run scoreboard players set #rd_cb_guard_cd ec.var 300

# ── Reflection Damage (per-tick check for recent attackers within 5 blocks) ──
# Simple implementation: Thorns-like effect — apply damage to nearby participants periodically
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] at @s if entity @s[nbt={HurtTime:10s}] run execute as @a[tag=ec.rd_participant,distance=..5] run damage @s 3 minecraft:thorns
