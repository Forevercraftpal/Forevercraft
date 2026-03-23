# Void Architect — Phase 1: The Constructor (100%-66% HP)
# Boss teleports between platforms every 60-100 ticks (3-5 sec).
# Fires homing projectiles (snowballs) every 40 ticks (2 sec).
# End crystal pillars heal boss 5 HP/sec when boss is within 10 blocks.

# ── Teleport Timer ──
scoreboard players add #rd_va_tp_cd ec.var 1
# Teleport every 80 ticks (4 seconds average)
execute if score #rd_va_tp_cd ec.var matches 80.. run function evercraft:raids/boss/void_architect/abilities/teleport
execute if score #rd_va_tp_cd ec.var matches 80.. run scoreboard players set #rd_va_tp_cd ec.var 0

# ── Homing Projectile ──
scoreboard players add #rd_va_proj_cd ec.var 1
execute if score #rd_va_proj_cd ec.var matches 40.. run function evercraft:raids/boss/void_architect/abilities/fire_projectile
execute if score #rd_va_proj_cd ec.var matches 40.. run scoreboard players set #rd_va_proj_cd ec.var 0

# ── Track existing projectiles (re-aim toward nearest player every 10 ticks) ──
scoreboard players operation #rd_temp ec.var = #rd_timer ec.var
scoreboard players set #rd_temp2 ec.var 10
scoreboard players operation #rd_temp ec.var %= #rd_temp2 ec.var
execute if score #rd_temp ec.var matches 0 as @e[tag=ec.rd_va_proj] at @s run function evercraft:raids/boss/void_architect/abilities/aim_projectile

# ── Projectile hit detection (snowball landed = killed by game) ──
# Projectile lifetime: kill old ones (120 ticks = 6 seconds)
execute as @e[tag=ec.rd_va_proj] at @s run execute as @a[tag=ec.rd_participant,distance=..1.5] run damage @s 4 minecraft:mob_projectile by @e[tag=ec.rd_boss,limit=1]

# ── Crystal Healing ──
# Boss heals 5 HP/second when within 10 blocks of a crystal (check every 20 ticks)
execute if score #rd_temp ec.var matches 0 as @e[type=!player,tag=ec.rd_boss,limit=1] at @s if entity @e[tag=ec.rd_va_crystal,distance=..10] run function evercraft:raids/boss/void_architect/abilities/crystal_heal
