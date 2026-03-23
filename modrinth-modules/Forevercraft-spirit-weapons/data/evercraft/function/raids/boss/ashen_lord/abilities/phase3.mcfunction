# The Ashen Lord — Phase 3: The Inferno (33%-0% HP)
# - Constant heat damage ramping over time (1 → 2 damage/second)
# - 4 fire anchors (destructible, 100 HP each)
# - Each anchor destroyed reduces heat by 25%
# - Boss damage and speed maximized

# ── Heat Damage (ramping, reduced per anchor destroyed) ──
# Base heat every 20 ticks, scaling with time in phase
# Heat timer counts UP — higher = more damage
scoreboard players add #rd_al_heat_timer ec.var 1

# Every 20 ticks (1 second): deal heat damage
execute store result score #rd_temp ec.var run time query gametime
scoreboard players operation #rd_temp ec.var %= #20 adv.temp
execute unless score #rd_temp ec.var matches 0 run return 0

# Calculate heat damage: starts at 1, increases to 2 after 600 ticks (30 seconds)
# Reduce by 25% per destroyed anchor (4 - remaining = destroyed)
scoreboard players set #rd_temp2 ec.var 4
scoreboard players operation #rd_temp2 ec.var -= #rd_al_anchors ec.var
# rd_temp2 = destroyed anchors (0-4)

# Base damage = 1, ramps to 2 after 30s in phase
execute if score #rd_al_heat_timer ec.var matches ..600 run scoreboard players set #rd_temp ec.var 1
execute if score #rd_al_heat_timer ec.var matches 601.. run scoreboard players set #rd_temp ec.var 2

# Skip heat if all 4 anchors destroyed
execute if score #rd_temp2 ec.var matches 4 run scoreboard players set #rd_temp ec.var 0

# Reduce proportionally: 3 destroyed = 25% heat, 2 = 50%, 1 = 75%
execute if score #rd_temp2 ec.var matches 3 if score #rd_temp ec.var matches 2 run scoreboard players set #rd_temp ec.var 1

# Apply heat damage to all participants
execute if score #rd_temp ec.var matches 1.. as @a[tag=ec.rd_participant] run damage @s 1 minecraft:on_fire by @e[type=wither_skeleton,tag=ec.rd_boss,limit=1]
execute if score #rd_temp ec.var matches 2.. as @a[tag=ec.rd_participant] run damage @s 1 minecraft:on_fire by @e[type=wither_skeleton,tag=ec.rd_boss,limit=1]

# Heat VFX
execute if score #rd_temp ec.var matches 1.. run particle minecraft:flame ~ ~0.5 ~ 15 0.5 15 0.01 20
execute if score #rd_temp ec.var matches 1.. run playsound minecraft:block.fire.ambient master @a[tag=ec.rd_participant] ~ ~ ~ 0.3 0.5

# ── Fire Anchor particles (show remaining anchors) ──
execute as @e[tag=ec.rd_al_anchor] at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.5 0.3 0.02 5
execute as @e[tag=ec.rd_al_anchor] at @s run particle minecraft:flame ~ ~1.5 ~ 0.2 0.2 0.2 0.01 3

# ── Anchor destruction check ──
# Anchors are interaction entities — check if they've been hit enough
# (Hit detection is handled via advancement or per-tick proximity damage)
function evercraft:raids/boss/ashen_lord/abilities/check_anchors

# ── Boss continues attacking — fire breath faster (every 80 ticks) ──
execute if score #rd_al_fire_cd ec.var matches 0 as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] at @s run function evercraft:raids/boss/ashen_lord/abilities/fire_breath
execute if score #rd_al_fire_cd ec.var matches 0 run scoreboard players set #rd_al_fire_cd ec.var 80

# ── Wither skulls continue (every 50 ticks) ──
execute if score #rd_al_skull_cd ec.var matches 0 as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] at @s run function evercraft:raids/boss/ashen_lord/abilities/wither_skull
execute if score #rd_al_skull_cd ec.var matches 0 run scoreboard players set #rd_al_skull_cd ec.var 50
