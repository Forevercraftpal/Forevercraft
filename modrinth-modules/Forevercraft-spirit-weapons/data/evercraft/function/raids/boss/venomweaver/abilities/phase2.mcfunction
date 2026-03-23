# The Venomweaver — Phase 2: The Brood (66%-33% HP)
# - Boss stays on ground, melee-focused
# - Egg sacs spawn every 400 ticks (20s) — hatch into spiders if not destroyed
# - Faster poison spit (every 60 ticks)
# - Web traps continue (every 120 ticks)
# - Rage increases as egg sacs are destroyed (+5% damage per egg, max 20%)

# ── Egg Sac Spawn (every 20 seconds) ──
# Only spawn if fewer than 4 egg sacs exist
execute store result score #rd_temp ec.var if entity @e[tag=ec.rd_vw_egg]
execute if score #rd_vw_web_cd ec.var matches 0 if score #rd_temp ec.var matches ..3 run function evercraft:raids/boss/venomweaver/abilities/spawn_egg
execute if score #rd_vw_web_cd ec.var matches 0 run scoreboard players set #rd_vw_web_cd ec.var 400

# ── Egg Sac Hatch Check (continuous) ──
# Eggs that have existed for 200 ticks (10s) hatch
function evercraft:raids/boss/venomweaver/abilities/egg_tick

# ── Poison Spit (faster: every 3 seconds) ──
execute if score #rd_vw_spit_cd ec.var matches 0 run function evercraft:raids/boss/venomweaver/abilities/poison_spit
execute if score #rd_vw_spit_cd ec.var matches 0 run scoreboard players set #rd_vw_spit_cd ec.var 60

# ── Web Trap (every 6 seconds) ──
execute if score #rd_vw_perch_cd ec.var matches 0 run function evercraft:raids/boss/venomweaver/abilities/web_trap
execute if score #rd_vw_perch_cd ec.var matches 0 run scoreboard players set #rd_vw_perch_cd ec.var 120

# ── Melee Damage Aura (players within 2 blocks take poison) ──
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @s run effect give @a[tag=ec.rd_participant,distance=..2] poison 3 0
