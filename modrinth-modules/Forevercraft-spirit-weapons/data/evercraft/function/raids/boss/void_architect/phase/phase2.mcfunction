# Void Architect — Phase 2: The Gravity Wells (66%-33% HP)
# Boss creates gravity well markers that pull players toward void edges.
# Levitation bubbles spawn randomly for movement.
# Boss continues teleporting + shooting + now fires void lasers.

# ── Continue Phase 1 attacks (teleport + projectiles) ──
scoreboard players add #rd_va_tp_cd ec.var 1
execute if score #rd_va_tp_cd ec.var matches 60.. run function evercraft:raids/boss/void_architect/abilities/teleport
execute if score #rd_va_tp_cd ec.var matches 60.. run scoreboard players set #rd_va_tp_cd ec.var 0

scoreboard players add #rd_va_proj_cd ec.var 1
execute if score #rd_va_proj_cd ec.var matches 40.. run function evercraft:raids/boss/void_architect/abilities/fire_projectile
execute if score #rd_va_proj_cd ec.var matches 40.. run scoreboard players set #rd_va_proj_cd ec.var 0

# Projectile tracking
scoreboard players operation #rd_temp ec.var = #rd_timer ec.var
scoreboard players set #rd_temp2 ec.var 10
scoreboard players operation #rd_temp ec.var %= #rd_temp2 ec.var
execute if score #rd_temp ec.var matches 0 as @e[tag=ec.rd_va_proj] at @s run function evercraft:raids/boss/void_architect/abilities/aim_projectile
execute as @e[tag=ec.rd_va_proj] at @s run execute as @a[tag=ec.rd_participant,distance=..1.5] run damage @s 4 minecraft:mob_projectile by @e[tag=ec.rd_boss,limit=1]

# ── Gravity Well Spawn (every 200 ticks = 10 seconds) ──
scoreboard players add #rd_va_well_cd ec.var 1
execute if score #rd_va_well_cd ec.var matches 200.. run function evercraft:raids/boss/void_architect/abilities/spawn_well
execute if score #rd_va_well_cd ec.var matches 200.. run scoreboard players set #rd_va_well_cd ec.var 0

# ── Gravity Well Pull (every tick — pull nearby players toward well center) ──
execute as @e[tag=ec.rd_well] at @s run function evercraft:raids/boss/void_architect/abilities/well_pull

# ── Gravity Well Despawn (10 seconds after spawn = 200 ticks lifetime) ──
# Wells are killed by well_pull after lifetime expires

# ── Levitation Bubbles (every 300 ticks = 15 seconds) ──
scoreboard players set #rd_temp2 ec.var 300
scoreboard players operation #rd_temp ec.var = #rd_timer ec.var
scoreboard players operation #rd_temp ec.var %= #rd_temp2 ec.var
execute if score #rd_temp ec.var matches 0 run function evercraft:raids/boss/void_architect/abilities/spawn_bubble

# ── Bubble Touch Detection ──
execute as @e[tag=ec.rd_bubble] at @s if entity @a[tag=ec.rd_participant,distance=..1.5] run function evercraft:raids/boss/void_architect/abilities/bubble_touch
