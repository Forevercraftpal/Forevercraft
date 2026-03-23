# The Ashen Lord — Phase 1: The Infernal Commander (100%-66% HP)
# - Fire breath cone attack (every 120 ticks / 6 seconds)
# - Wither skull projectiles at random players (every 80 ticks / 4 seconds)
# - Activates blaze spawner pillars (every 400 ticks / 20 seconds)
# - Boss has Fire Resistance (set at spawn)

# ── Fire Breath (every 6 seconds) ──
execute if score #rd_al_fire_cd ec.var matches 0 as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] at @s run function evercraft:raids/boss/ashen_lord/abilities/fire_breath
execute if score #rd_al_fire_cd ec.var matches 0 run scoreboard players set #rd_al_fire_cd ec.var 120

# ── Wither Skull (every 4 seconds) ──
execute if score #rd_al_skull_cd ec.var matches 0 as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] at @s run function evercraft:raids/boss/ashen_lord/abilities/wither_skull
execute if score #rd_al_skull_cd ec.var matches 0 run scoreboard players set #rd_al_skull_cd ec.var 80

# ── Blaze Spawner Activation (every 20 seconds) ──
execute if score #rd_al_spawner_cd ec.var matches 0 run function evercraft:raids/boss/ashen_lord/abilities/activate_spawner
execute if score #rd_al_spawner_cd ec.var matches 0 run scoreboard players set #rd_al_spawner_cd ec.var 400
