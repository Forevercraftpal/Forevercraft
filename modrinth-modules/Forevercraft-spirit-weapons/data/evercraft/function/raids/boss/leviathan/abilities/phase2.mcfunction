# The Leviathan — Phase 2: The Depths (66%-33% HP)
# - Whirlpool entities drag players downward
# - Boss burrows/erupts from below (10 damage + launch)
# - Ink cloud (Darkness effect)
# - Laser continues (faster)

# ── Whirlpool Drag (every tick, affects nearby players) ──
execute as @e[tag=ec.rd_lv_whirlpool] at @s run effect give @a[tag=ec.rd_participant,distance=..4] slowness 2 1
execute as @e[tag=ec.rd_lv_whirlpool] at @s run execute as @a[tag=ec.rd_participant,distance=..2] run damage @s 1 minecraft:drown by @e[type=guardian,tag=ec.rd_boss,limit=1]
execute as @e[tag=ec.rd_lv_whirlpool] at @s run particle minecraft:bubble ~ ~0.5 ~ 2 0.5 2 0.1 5

# ── Boss Burrow Attack (every 300 ticks / 15 seconds) ──
execute if score #rd_lv_burrow_cd ec.var matches 0 run function evercraft:raids/boss/leviathan/abilities/burrow_attack
execute if score #rd_lv_burrow_cd ec.var matches 0 run scoreboard players set #rd_lv_burrow_cd ec.var 300

# ── Ink Cloud (every 200 ticks / 10 seconds — Darkness effect) ──
execute store result score #rd_temp ec.var run time query gametime
scoreboard players operation #rd_temp ec.var %= #200 adv.temp
execute if score #rd_temp ec.var matches 0 run effect give @a[tag=ec.rd_participant] darkness 3 0
execute if score #rd_temp ec.var matches 0 run playsound minecraft:entity.squid.squirt master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.5
execute if score #rd_temp ec.var matches 0 as @e[type=guardian,tag=ec.rd_boss,limit=1] at @s run particle minecraft:squid_ink ~ ~1 ~ 3 1 3 0.1 30

# ── Laser continues (every 100 ticks) ──
execute if score #rd_lv_laser_cd ec.var matches 0 run function evercraft:raids/boss/leviathan/abilities/laser_beam
execute if score #rd_lv_laser_cd ec.var matches 0 run scoreboard players set #rd_lv_laser_cd ec.var 100

# ── Tidal waves continue ──
execute if score #rd_lv_wave_cd ec.var matches 0 run function evercraft:raids/boss/leviathan/abilities/tidal_wave
execute if score #rd_lv_wave_cd ec.var matches 0 run scoreboard players set #rd_lv_wave_cd ec.var 200
