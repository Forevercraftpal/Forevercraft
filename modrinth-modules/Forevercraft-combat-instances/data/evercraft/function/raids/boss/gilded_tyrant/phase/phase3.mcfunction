# Gilded Tyrant — Phase 3: The Berserk
# Gold armor cracks (reduced armor), berserk speed, no more piglins, lava rises

# ── Charge Attack (every 100 ticks — faster in berserk) ──
scoreboard players add #rd_gt_charge_cd ec.var 1
execute if score #rd_gt_charge_cd ec.var matches 100.. run function evercraft:raids/boss/gilded_tyrant/abilities/charge
execute if score #rd_gt_charge_cd ec.var matches 100.. run scoreboard players set #rd_gt_charge_cd ec.var 0

# ── Ground Pound (every 140 ticks — faster) ──
scoreboard players add #rd_gt_slam_cd ec.var 1
execute if score #rd_gt_slam_cd ec.var matches 140.. run function evercraft:raids/boss/gilded_tyrant/abilities/ground_pound
execute if score #rd_gt_slam_cd ec.var matches 140.. run scoreboard players set #rd_gt_slam_cd ec.var 0

# ── Lava timer — rises every 100 ticks ──
scoreboard players add #rd_gt_lava_timer ec.var 1
execute if score #rd_gt_lava_timer ec.var matches 100.. run function evercraft:raids/boss/gilded_tyrant/abilities/lava_rise
execute if score #rd_gt_lava_timer ec.var matches 100.. run scoreboard players set #rd_gt_lava_timer ec.var 0

# ── Boss melee (berserk — higher damage applied via enter_phase3) ──
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run function evercraft:raids/boss/gilded_tyrant/abilities/melee

# ── Berserk particles ──
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:angry_villager ~ ~2 ~ 0.3 0.3 0.3 0 1
