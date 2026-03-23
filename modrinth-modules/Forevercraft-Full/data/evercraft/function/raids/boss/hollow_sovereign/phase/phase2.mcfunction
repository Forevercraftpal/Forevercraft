# Hollow Sovereign — Phase 2: The Sculk Tendrils (66%-33% HP)
# Boss is permanently visible. Spawns sculk tendril markers that damage nearby players.
# Every 300 ticks (15 sec): boss goes "silent" with Glowing — reflecting ALL damage for 100 ticks (5 sec).
# Players must STOP attacking during silence or hurt themselves.

# ── Tendril Spawn (every 200 ticks = 10 seconds) ──
scoreboard players add #rd_hs_tendril_cd ec.var 1
execute if score #rd_hs_tendril_cd ec.var matches 200.. run function evercraft:raids/boss/hollow_sovereign/abilities/spawn_tendril
execute if score #rd_hs_tendril_cd ec.var matches 200.. run scoreboard players set #rd_hs_tendril_cd ec.var 0

# ── Tendril Damage Tick (every 20 ticks = 1 second, 2 damage to nearby players) ──
scoreboard players operation #rd_temp ec.var = #rd_timer ec.var
scoreboard players operation #rd_temp ec.var %= #4 adv.temp
execute if score #rd_temp ec.var matches 0 as @e[tag=ec.rd_tendril] at @s run execute as @a[tag=ec.rd_participant,distance=..2] run damage @s 2 minecraft:thorns by @e[tag=ec.rd_boss,limit=1]

# Tendril ambient particles
execute as @e[tag=ec.rd_tendril] at @s run particle minecraft:sculk_charge_pop ~ ~0.5 ~ 0.3 0.3 0.3 0.01 2

# ── Silence Mechanic (every 300 ticks = 15 seconds) ──
execute if score #rd_hs_silence ec.var matches 0 run scoreboard players add #rd_hs_silence_timer ec.var 1
execute if score #rd_hs_silence ec.var matches 0 if score #rd_hs_silence_timer ec.var matches 300.. run function evercraft:raids/boss/hollow_sovereign/abilities/start_silence

# ── Silence Active — reflect damage ──
execute if score #rd_hs_silence ec.var matches 1 run function evercraft:raids/boss/hollow_sovereign/abilities/silence_tick
