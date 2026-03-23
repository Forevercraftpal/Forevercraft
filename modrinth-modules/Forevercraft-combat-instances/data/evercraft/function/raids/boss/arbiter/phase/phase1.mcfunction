# Arbiter — Phase 1: Trial by Combat
# Boss mimics player attacks with 40-tick delay at double damage
# Wind blast projectiles

# ── Mimic Attack (every 80 ticks / 4 seconds — delayed counter) ──
scoreboard players add #rd_arb_mimic_cd ec.var 1
execute if score #rd_arb_mimic_cd ec.var matches 80.. run function evercraft:raids/boss/arbiter/abilities/mimic_attack
execute if score #rd_arb_mimic_cd ec.var matches 80.. run scoreboard players set #rd_arb_mimic_cd ec.var 0

# ── Wind Blast (every 60 ticks / 3 seconds) ──
scoreboard players add #rd_arb_blast_cd ec.var 1
execute if score #rd_arb_blast_cd ec.var matches 60.. run function evercraft:raids/boss/arbiter/abilities/wind_blast
execute if score #rd_arb_blast_cd ec.var matches 60.. run scoreboard players set #rd_arb_blast_cd ec.var 0

# ── Hit detection — boss takes damage from nearby players ──
execute as @e[type=!player,tag=ec.rd_boss,limit=1,nbt={HurtTime:10s}] at @s run function evercraft:raids/boss/arbiter/abilities/on_hit
