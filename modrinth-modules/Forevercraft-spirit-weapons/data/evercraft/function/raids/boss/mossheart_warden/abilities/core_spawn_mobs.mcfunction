# The Mossheart Warden — Core Mob Spawning
# Each active core spawns 1 zombie or skeleton

execute as @e[tag=ec.rd_mw_core,tag=ec.rd_mw_core_active] at @s run summon zombie ~ ~ ~ {Tags:["ec.rd_minion","ec.rd_mw_mob"],PersistenceRequired:1b}
execute as @e[tag=ec.rd_mw_core,tag=ec.rd_mw_core_active] at @s run particle minecraft:flame ~ ~0.5 ~ 0.3 0.3 0.3 0.05 5
