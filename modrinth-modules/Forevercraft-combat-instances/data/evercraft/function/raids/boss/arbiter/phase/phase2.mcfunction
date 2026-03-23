# Arbiter — Phase 2: Trial by Agility
# Wind pushes players, safe zone shrinks, wind blast projectiles

# ── Wind Blast (every 50 ticks — faster) ──
scoreboard players add #rd_arb_blast_cd ec.var 1
execute if score #rd_arb_blast_cd ec.var matches 50.. run function evercraft:raids/boss/arbiter/abilities/wind_blast
execute if score #rd_arb_blast_cd ec.var matches 50.. run scoreboard players set #rd_arb_blast_cd ec.var 0

# ── Safe Zone Shrink (every 200 ticks / 10 seconds) ──
scoreboard players add #rd_arb_zone_timer ec.var 1
execute if score #rd_arb_zone_timer ec.var matches 200.. run function evercraft:raids/boss/arbiter/abilities/shrink_zone
execute if score #rd_arb_zone_timer ec.var matches 200.. run scoreboard players set #rd_arb_zone_timer ec.var 0

# ── Out-of-zone damage (per tick for players outside safe radius) ──
execute as @a[tag=ec.rd_participant] at @e[type=marker,tag=rd.center,limit=1] run function evercraft:raids/boss/arbiter/abilities/zone_damage

# ── Wind push effect (per tick — nudge players toward center zone) ──
execute as @a[tag=ec.rd_participant] at @s run function evercraft:raids/boss/arbiter/abilities/wind_push
