# Gatekeeper — Phase 2: Dimensional Shift
# Room flickers between 3 dimension themes every 400 ticks (20 seconds)
# 0=Overworld (normal), 1=Nether (fire + wither), 2=End (teleport + low gravity)

# ── Dimension cycle ──
scoreboard players add #rd_gk_dim_timer ec.var 1
execute if score #rd_gk_dim_timer ec.var matches 400.. run function evercraft:raids/boss/gatekeeper/abilities/shift_dimension
execute if score #rd_gk_dim_timer ec.var matches 400.. run scoreboard players set #rd_gk_dim_timer ec.var 0

# ── Combo melee (every 20 ticks) ──
scoreboard players add #rd_gk_combo ec.var 1
execute if score #rd_gk_combo ec.var matches 20.. run function evercraft:raids/boss/gatekeeper/abilities/combo_strike
execute if score #rd_gk_combo ec.var matches 20.. run scoreboard players set #rd_gk_combo ec.var 0

# ── Dash (every 80 ticks — faster in P2) ──
scoreboard players add #rd_gk_dash_cd ec.var 1
execute if score #rd_gk_dash_cd ec.var matches 80.. run function evercraft:raids/boss/gatekeeper/abilities/dash
execute if score #rd_gk_dash_cd ec.var matches 80.. run scoreboard players set #rd_gk_dash_cd ec.var 0

# ── Nether dimension: fire rain damage every 40 ticks ──
execute if score #rd_gk_dim ec.var matches 1 run function evercraft:raids/boss/gatekeeper/abilities/fire_rain

# ── End dimension: boss teleports every 60 ticks ──
scoreboard players add #rd_gk_portal_cd ec.var 1
execute if score #rd_gk_dim ec.var matches 2 if score #rd_gk_portal_cd ec.var matches 60.. run function evercraft:raids/boss/gatekeeper/abilities/end_teleport
execute if score #rd_gk_dim ec.var matches 2 if score #rd_gk_portal_cd ec.var matches 60.. run scoreboard players set #rd_gk_portal_cd ec.var 0

# ── Dimension-specific particles ──
execute if score #rd_gk_dim ec.var matches 0 at @e[type=marker,tag=rd.center,limit=1] run particle minecraft:happy_villager ~ ~1 ~ 5 1 5 0.01 2
execute if score #rd_gk_dim ec.var matches 1 at @e[type=marker,tag=rd.center,limit=1] run particle minecraft:flame ~ ~1 ~ 5 1 5 0.01 3
execute if score #rd_gk_dim ec.var matches 2 at @e[type=marker,tag=rd.center,limit=1] run particle minecraft:portal ~ ~1 ~ 5 1 5 0.5 5
