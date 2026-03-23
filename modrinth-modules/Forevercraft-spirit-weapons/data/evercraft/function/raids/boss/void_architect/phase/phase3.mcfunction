# Void Architect — Phase 3: The Mirror (33%-0% HP)
# Boss summons a "mirror player" zombie that copies player movements with delay.
# Mirror heals boss if it kills a player. Must defeat mirror + boss simultaneously.
# Boss continues teleporting and shooting.

# ── Continue attacks ──
scoreboard players add #rd_va_tp_cd ec.var 1
execute if score #rd_va_tp_cd ec.var matches 60.. run function evercraft:raids/boss/void_architect/abilities/teleport
execute if score #rd_va_tp_cd ec.var matches 60.. run scoreboard players set #rd_va_tp_cd ec.var 0

scoreboard players add #rd_va_proj_cd ec.var 1
execute if score #rd_va_proj_cd ec.var matches 30.. run function evercraft:raids/boss/void_architect/abilities/fire_projectile
execute if score #rd_va_proj_cd ec.var matches 30.. run scoreboard players set #rd_va_proj_cd ec.var 0

# Projectile tracking
scoreboard players operation #rd_temp ec.var = #rd_timer ec.var
scoreboard players set #rd_temp2 ec.var 10
scoreboard players operation #rd_temp ec.var %= #rd_temp2 ec.var
execute if score #rd_temp ec.var matches 0 as @e[tag=ec.rd_va_proj] at @s run function evercraft:raids/boss/void_architect/abilities/aim_projectile
execute as @e[tag=ec.rd_va_proj] at @s run execute as @a[tag=ec.rd_participant,distance=..1.5] run damage @s 4 minecraft:mob_projectile by @e[tag=ec.rd_boss,limit=1]

# ── Mirror AI ──
# Mirror chases nearest player and deals melee damage
execute as @e[tag=ec.rd_mirror] at @s run effect give @s speed 1 1 true

# Mirror melee damage (proximity check every 20 ticks)
scoreboard players set #rd_temp2 ec.var 20
scoreboard players operation #rd_temp ec.var = #rd_timer ec.var
scoreboard players operation #rd_temp ec.var %= #rd_temp2 ec.var
execute if score #rd_temp ec.var matches 0 as @e[tag=ec.rd_mirror] at @s run damage @a[tag=ec.rd_participant,distance=..2,limit=1,sort=nearest] 6 minecraft:mob_attack by @e[tag=ec.rd_boss,limit=1]

# Mirror ambient particles
execute as @e[tag=ec.rd_mirror] at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.3 0.5 0.3 0.02 2

# ── Gravity wells continue ──
scoreboard players add #rd_va_well_cd ec.var 1
execute if score #rd_va_well_cd ec.var matches 250.. run function evercraft:raids/boss/void_architect/abilities/spawn_well
execute if score #rd_va_well_cd ec.var matches 250.. run scoreboard players set #rd_va_well_cd ec.var 0
execute as @e[tag=ec.rd_well] at @s run function evercraft:raids/boss/void_architect/abilities/well_pull
