# Gilded Tyrant — Phase 1: The Warlord
# Charge attacks, ground-pound shockwave, piglin reinforcements

# ── Charge Attack (every 160 ticks / 8 seconds) ──
scoreboard players add #rd_gt_charge_cd ec.var 1
execute if score #rd_gt_charge_cd ec.var matches 160.. run function evercraft:raids/boss/gilded_tyrant/abilities/charge
execute if score #rd_gt_charge_cd ec.var matches 160.. run scoreboard players set #rd_gt_charge_cd ec.var 0

# ── Ground Pound / Shockwave (every 200 ticks / 10 seconds) ──
scoreboard players add #rd_gt_slam_cd ec.var 1
execute if score #rd_gt_slam_cd ec.var matches 200.. run function evercraft:raids/boss/gilded_tyrant/abilities/ground_pound
execute if score #rd_gt_slam_cd ec.var matches 200.. run scoreboard players set #rd_gt_slam_cd ec.var 0

# ── Piglin Reinforcements (every 400 ticks / 20 seconds) ──
scoreboard players add #rd_gt_add_cd ec.var 1
execute if score #rd_gt_add_cd ec.var matches 400.. run function evercraft:raids/boss/gilded_tyrant/abilities/summon_piglins
execute if score #rd_gt_add_cd ec.var matches 400.. run scoreboard players set #rd_gt_add_cd ec.var 0

# ── Boss melee (constant — attack nearest player within 3 blocks) ──
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run function evercraft:raids/boss/gilded_tyrant/abilities/melee
