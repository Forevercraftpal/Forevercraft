# The Ashen Lord — Phase 2: The Soul Fire Floor (66%-33% HP)
# - Soul fire damage to players NOT on safe spots (2 damage/second)
# - Safe spots shift every 200 ticks (10 seconds)
# - Fire aura: 2 damage/second within 3 blocks of boss
# - Faster wither skulls (every 60 ticks instead of 80)

# ── Soul Fire Floor Damage (every 20 ticks = 1 second) ──
# Players NOT within 3 blocks of any safe spot marker take Wither II
execute if score #rd_timer ec.var matches 1 store result score #rd_temp ec.var run time query gametime
scoreboard players operation #rd_temp ec.var %= #20 adv.temp
execute if score #rd_temp ec.var matches 0 as @a[tag=ec.rd_participant] at @s unless entity @e[tag=ec.rd_al_safe,distance=..3] run damage @s 2 minecraft:on_fire by @e[type=wither_skeleton,tag=ec.rd_boss,limit=1]
execute if score #rd_temp ec.var matches 0 as @a[tag=ec.rd_participant] at @s unless entity @e[tag=ec.rd_al_safe,distance=..3] run effect give @s wither 2 1

# ── Safe Spot Visual (particles at safe markers) ──
execute as @e[tag=ec.rd_al_safe] at @s run particle minecraft:end_rod ~ ~0.5 ~ 0.5 0.3 0.5 0.02 3

# ── Safe Spot Shift (every 200 ticks) ──
execute if score #rd_al_safe_timer ec.var matches 0 run function evercraft:raids/boss/ashen_lord/abilities/shift_safe_spots
execute if score #rd_al_safe_timer ec.var matches 0 run scoreboard players set #rd_al_safe_timer ec.var 200

# ── Fire Aura (3 blocks, 2 damage every 20 ticks) ──
execute if score #rd_temp ec.var matches 0 as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] at @s run execute as @a[tag=ec.rd_participant,distance=..3] run damage @s 2 minecraft:on_fire by @p[sort=nearest,limit=1]
execute as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] at @s run particle minecraft:flame ~ ~0.5 ~ 3 0.5 3 0.02 5

# ── Wither Skulls (faster: every 60 ticks) ──
execute if score #rd_al_skull_cd ec.var matches 0 as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] at @s run function evercraft:raids/boss/ashen_lord/abilities/wither_skull
execute if score #rd_al_skull_cd ec.var matches 0 run scoreboard players set #rd_al_skull_cd ec.var 60

# ── Continue spawner activation (slower: every 300 ticks) ──
execute if score #rd_al_spawner_cd ec.var matches 0 run function evercraft:raids/boss/ashen_lord/abilities/activate_spawner
execute if score #rd_al_spawner_cd ec.var matches 0 run scoreboard players set #rd_al_spawner_cd ec.var 300
