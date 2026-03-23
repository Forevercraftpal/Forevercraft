# Gilded Tyrant — Phase 2: The Gold Bombardment
# Continues charge + slam, adds gold block throws, piglin kills heal boss

# ── Charge Attack (every 160 ticks) ──
scoreboard players add #rd_gt_charge_cd ec.var 1
execute if score #rd_gt_charge_cd ec.var matches 160.. run function evercraft:raids/boss/gilded_tyrant/abilities/charge
execute if score #rd_gt_charge_cd ec.var matches 160.. run scoreboard players set #rd_gt_charge_cd ec.var 0

# ── Ground Pound (every 200 ticks) ──
scoreboard players add #rd_gt_slam_cd ec.var 1
execute if score #rd_gt_slam_cd ec.var matches 200.. run function evercraft:raids/boss/gilded_tyrant/abilities/ground_pound
execute if score #rd_gt_slam_cd ec.var matches 200.. run scoreboard players set #rd_gt_slam_cd ec.var 0

# ── Piglin Reinforcements (every 300 ticks — more frequent in P2) ──
scoreboard players add #rd_gt_add_cd ec.var 1
execute if score #rd_gt_add_cd ec.var matches 300.. run function evercraft:raids/boss/gilded_tyrant/abilities/summon_piglins
execute if score #rd_gt_add_cd ec.var matches 300.. run scoreboard players set #rd_gt_add_cd ec.var 0

# ── Gold Bombardment (every 120 ticks / 6 seconds) ──
scoreboard players add #rd_gt_gold_bomb_cd ec.var 1
execute if score #rd_gt_gold_bomb_cd ec.var matches 120.. run function evercraft:raids/boss/gilded_tyrant/abilities/gold_bomb
execute if score #rd_gt_gold_bomb_cd ec.var matches 120.. run scoreboard players set #rd_gt_gold_bomb_cd ec.var 0

# ── Gold Bomb Impact Check (per tick — detect landing bombs) ──
function evercraft:raids/boss/gilded_tyrant/abilities/bomb_impact

# ── Piglin death heal check — piglins killed heal boss 10 HP ──
execute as @e[type=piglin,tag=ec.rd_gt_add,nbt={HurtTime:10s}] at @s run function evercraft:raids/boss/gilded_tyrant/abilities/add_hurt_check

# ── Boss melee ──
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run function evercraft:raids/boss/gilded_tyrant/abilities/melee
