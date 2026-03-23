# The Mossheart Warden — Phase 1: The Guardian (100%-66% HP)
# - Slow devastating hits (15 damage, already from iron golem base + modifier)
# - 40% damage reduction (high armor attribute)
# - Activates 1 spawner core every 300 ticks (15s)
# - Shield effect when near active cores

# ── Activate Spawner Core (every 15 seconds, max 4) ──
execute if score #rd_mw_core_cd ec.var matches 0 if score #rd_mw_cores_active ec.var matches ..3 run function evercraft:raids/boss/mossheart_warden/abilities/activate_core
execute if score #rd_mw_core_cd ec.var matches 0 run scoreboard players set #rd_mw_core_cd ec.var 300

# ── Core Mob Spawning (active cores spawn mobs every 200 ticks) ──
execute if score #rd_timer ec.var matches 1 store result score #rd_temp ec.var run time query gametime
scoreboard players operation #rd_temp ec.var %= #200 adv.temp
execute if score #rd_temp ec.var matches 0 run function evercraft:raids/boss/mossheart_warden/abilities/core_spawn_mobs

# ── Core Proximity Shield ──
# +20% damage reduction per nearby active core (within 8 blocks)
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] run attribute @s armor modifier remove evercraft:rd_boss/core_shield
execute store result score #rd_temp ec.var as @e[type=iron_golem,tag=ec.rd_boss,limit=1] at @s if entity @e[tag=ec.rd_mw_core,tag=ec.rd_mw_core_active,distance=..8]
execute if score #rd_temp ec.var matches 1.. as @e[type=iron_golem,tag=ec.rd_boss,limit=1] run attribute @s armor modifier add evercraft:rd_boss/core_shield 4.0 add_value

# ── Core particles (active cores) ──
execute as @e[tag=ec.rd_mw_core,tag=ec.rd_mw_core_active] at @s run particle minecraft:flame ~ ~1 ~ 0.3 0.5 0.3 0.02 3
