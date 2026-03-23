# Gatekeeper — Phase 3: The Whirlwind
# Portal walls section arena, boss uses whirlwind AoE attack

# ── Whirlwind Attack (every 200 ticks / 10 seconds) ──
scoreboard players add #rd_gk_whirl_cd ec.var 1
execute if score #rd_gk_whirl_cd ec.var matches 200.. run function evercraft:raids/boss/gatekeeper/abilities/whirlwind
execute if score #rd_gk_whirl_cd ec.var matches 200.. run scoreboard players set #rd_gk_whirl_cd ec.var 0

# ── Combo melee (every 16 ticks — fastest in P3) ──
scoreboard players add #rd_gk_combo ec.var 1
execute if score #rd_gk_combo ec.var matches 16.. run function evercraft:raids/boss/gatekeeper/abilities/combo_strike
execute if score #rd_gk_combo ec.var matches 16.. run scoreboard players set #rd_gk_combo ec.var 0

# ── Dash (every 60 ticks — very aggressive) ──
scoreboard players add #rd_gk_dash_cd ec.var 1
execute if score #rd_gk_dash_cd ec.var matches 60.. run function evercraft:raids/boss/gatekeeper/abilities/dash
execute if score #rd_gk_dash_cd ec.var matches 60.. run scoreboard players set #rd_gk_dash_cd ec.var 0

# ── Portal wall damage — damage players near wall entities ──
execute as @e[tag=ec.rd_gk_wall] at @s run execute as @a[tag=ec.rd_participant,distance=..1.5] run damage @s 8 minecraft:out_of_world
execute as @e[tag=ec.rd_gk_wall] at @s run particle minecraft:portal ~ ~0.5 ~ 0.2 0.5 0.2 0.5 2
