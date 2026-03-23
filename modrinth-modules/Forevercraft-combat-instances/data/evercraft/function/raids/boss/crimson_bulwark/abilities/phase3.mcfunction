# The Crimson Bulwark — Phase 3: The Dual Shield Storm (33%-0% HP)
# - Shield throw: ranged attack every 120 ticks (12 damage + knockback)
# - Shield spin: 360 AoE every 200 ticks (6-block radius, 10 damage)
# - After spin: 40-tick vulnerability window (Slowness V + Glowing)
# - Pillars as cover from shield throws (3 hits each before breaking)

# ── Shield Throw (every 6 seconds) ──
execute if score #rd_cb_throw_cd ec.var matches 0 run function evercraft:raids/boss/crimson_bulwark/abilities/shield_throw
execute if score #rd_cb_throw_cd ec.var matches 0 run scoreboard players set #rd_cb_throw_cd ec.var 120

# ── Shield Spin (every 10 seconds) ──
execute if score #rd_cb_spin_cd ec.var matches 0 run function evercraft:raids/boss/crimson_bulwark/abilities/shield_spin
execute if score #rd_cb_spin_cd ec.var matches 0 run scoreboard players set #rd_cb_spin_cd ec.var 200

# ── No more resistance effect — boss is vulnerable ──
# (Resistance removed on phase 3 entry)

# ── Pillar particles ──
execute as @e[tag=ec.rd_cb_pillar] at @s run particle minecraft:dust{color:[0.5,0.5,0.5],scale:0.8} ~ ~1.5 ~ 0.3 0.8 0.3 0 1
