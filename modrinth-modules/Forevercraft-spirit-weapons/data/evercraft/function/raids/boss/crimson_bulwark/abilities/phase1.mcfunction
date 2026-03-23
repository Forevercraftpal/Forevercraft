# The Crimson Bulwark — Phase 1: The Immovable (100%-66% HP)
# - Frontal 75% damage reduction (high armor + resistance when facing attacker)
# - Shield slam shockwave every 200 ticks (10s)
# - Summons elite guards every 400 ticks (20s)

# ── Frontal Shield: Resistance when players are in front ──
# Boss has very high base armor — frontal attacks are further reduced
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] run effect give @s resistance 2 1 true

# ── Shield Slam (every 10 seconds) ──
execute if score #rd_cb_slam_cd ec.var matches 0 run function evercraft:raids/boss/crimson_bulwark/abilities/shield_slam
execute if score #rd_cb_slam_cd ec.var matches 0 run scoreboard players set #rd_cb_slam_cd ec.var 200

# ── Summon Elite Guards (every 20 seconds) ──
execute if score #rd_cb_guard_cd ec.var matches 0 run function evercraft:raids/boss/crimson_bulwark/abilities/summon_guards
execute if score #rd_cb_guard_cd ec.var matches 0 run scoreboard players set #rd_cb_guard_cd ec.var 400
