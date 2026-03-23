# The Venomweaver — Phase 1: The Hunt (100%-66% HP)
# - Boss perches on vine pillars, jumps between them every 100 ticks (5s)
# - Poison spit at random player (every 80 ticks / 4s)
# - Web traps at player positions (every 160 ticks / 8s)
# - Occasional descent for melee swipe

# ── Perch Jump (every 5 seconds) ──
execute if score #rd_vw_perch_cd ec.var matches 0 run function evercraft:raids/boss/venomweaver/abilities/perch_jump
execute if score #rd_vw_perch_cd ec.var matches 0 run scoreboard players set #rd_vw_perch_cd ec.var 100

# ── Poison Spit (every 4 seconds) ──
execute if score #rd_vw_spit_cd ec.var matches 0 run function evercraft:raids/boss/venomweaver/abilities/poison_spit
execute if score #rd_vw_spit_cd ec.var matches 0 run scoreboard players set #rd_vw_spit_cd ec.var 80

# ── Web Trap (every 8 seconds) ──
execute if score #rd_vw_web_cd ec.var matches 0 run function evercraft:raids/boss/venomweaver/abilities/web_trap
execute if score #rd_vw_web_cd ec.var matches 0 run scoreboard players set #rd_vw_web_cd ec.var 160
