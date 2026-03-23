# The Mossheart Warden — Phase 2: The Siege (66%-33% HP)
# - All remaining cores activate
# - Boss gains Speed I and protects cores
# - Slam attack AoE (every 80 ticks / 4s)
# - Core mob spawning continues

# ── Slam Attack (every 4 seconds) ──
execute if score #rd_mw_slam_cd ec.var matches 0 run function evercraft:raids/boss/mossheart_warden/abilities/slam_attack
execute if score #rd_mw_slam_cd ec.var matches 0 run scoreboard players set #rd_mw_slam_cd ec.var 80

# ── Core Mob Spawning (every 200 ticks) ──
execute if score #rd_timer ec.var matches 1 store result score #rd_temp ec.var run time query gametime
scoreboard players operation #rd_temp ec.var %= #200 adv.temp
execute if score #rd_temp ec.var matches 0 run function evercraft:raids/boss/mossheart_warden/abilities/core_spawn_mobs

# ── Core Proximity Shield (same as phase 1) ──
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] run attribute @s armor modifier remove evercraft:rd_boss/core_shield
execute store result score #rd_temp ec.var as @e[type=iron_golem,tag=ec.rd_boss,limit=1] at @s if entity @e[tag=ec.rd_mw_core,tag=ec.rd_mw_core_active,distance=..8]
execute if score #rd_temp ec.var matches 1.. as @e[type=iron_golem,tag=ec.rd_boss,limit=1] run attribute @s armor modifier add evercraft:rd_boss/core_shield 4.0 add_value

# ── Active core particles ──
execute as @e[tag=ec.rd_mw_core,tag=ec.rd_mw_core_active] at @s run particle minecraft:flame ~ ~1 ~ 0.3 0.5 0.3 0.02 3

# ── Speed boost ──
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] run effect give @s speed 2 0 true
