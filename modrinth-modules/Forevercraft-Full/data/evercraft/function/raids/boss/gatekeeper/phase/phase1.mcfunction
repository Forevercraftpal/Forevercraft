# Gatekeeper — Phase 1: The Twin Blades
# Combo melee attacks, dash, portal spawning on every 5th hit

# ── Combo melee attack (every 20 ticks) ──
scoreboard players add #rd_gk_combo ec.var 1
execute if score #rd_gk_combo ec.var matches 20.. run function evercraft:raids/boss/gatekeeper/abilities/combo_strike
execute if score #rd_gk_combo ec.var matches 20.. run scoreboard players set #rd_gk_combo ec.var 0

# ── Dash toward player (every 100 ticks / 5 seconds) ──
scoreboard players add #rd_gk_dash_cd ec.var 1
execute if score #rd_gk_dash_cd ec.var matches 100.. run function evercraft:raids/boss/gatekeeper/abilities/dash
execute if score #rd_gk_dash_cd ec.var matches 100.. run scoreboard players set #rd_gk_dash_cd ec.var 0

# ── Portal spawn (every 200 ticks / 10 seconds) ──
scoreboard players add #rd_gk_portal_cd ec.var 1
execute if score #rd_gk_portal_cd ec.var matches 200.. run function evercraft:raids/boss/gatekeeper/abilities/spawn_portal
execute if score #rd_gk_portal_cd ec.var matches 200.. run scoreboard players set #rd_gk_portal_cd ec.var 0

# ── Portal pull — active portals pull nearby players ──
execute as @e[tag=ec.rd_gk_portal] at @s run function evercraft:raids/boss/gatekeeper/abilities/portal_pull
