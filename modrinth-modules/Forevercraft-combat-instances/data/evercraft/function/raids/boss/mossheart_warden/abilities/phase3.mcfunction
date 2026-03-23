# The Mossheart Warden — Phase 3: The Last Stand (33%-0% HP)
# - All cores destroyed (forced)
# - Speed II, slam CD reduced to 40 ticks (2s)
# - Fissure line attacks every 160 ticks (8s)
# - Safe zones at former core positions
# - Armor reduced

# ── Slam Attack (every 2 seconds) ──
execute if score #rd_mw_slam_cd ec.var matches 0 run function evercraft:raids/boss/mossheart_warden/abilities/slam_attack
execute if score #rd_mw_slam_cd ec.var matches 0 run scoreboard players set #rd_mw_slam_cd ec.var 40

# ── Fissure Attack (every 8 seconds) ──
execute if score #rd_mw_fissure_cd ec.var matches 0 run function evercraft:raids/boss/mossheart_warden/abilities/fissure_attack
execute if score #rd_mw_fissure_cd ec.var matches 0 run scoreboard players set #rd_mw_fissure_cd ec.var 160

# ── Speed II ──
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] run effect give @s speed 2 1 true

# ── Safe zone particles at former core positions ──
execute as @e[tag=ec.rd_mw_safe_zone] at @s run particle minecraft:end_rod ~ ~0.3 ~ 1 0.1 1 0.01 2
