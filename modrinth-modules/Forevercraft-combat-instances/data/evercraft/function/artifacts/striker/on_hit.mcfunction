# Striker — On-hit router
# Triggered by player_hurt_entity advancement

# Re-arm advancement
advancement revoke @s only evercraft:artifacts/striker/on_hit_trigger

# Verify still holding striker mace
execute unless items entity @s weapon.mainhand mace[custom_data~{striker:true}] run return 0

# === IMPACT GAIN: +8 on hit ===
scoreboard players add @s ec.sk_impact 8

# === REFRESH COMBAT TIMER (5 seconds = 100 ticks) ===
scoreboard players set @s ec.sk_combat 100

# === CHECK: SENTINEL FORTRESS (sneaking + 50+ Impact + off cooldown) ===
# Uses return run to guarantee exit after fortress fires (prevents double-fire with ground slam)
execute if entity @s[tag=ec.sk_sentinel] if predicate evercraft:sneaking if predicate evercraft:on_ground if score @s ec.sk_impact matches 50.. if score @s ec.sk_fort_cd matches ..-1 run return run function evercraft:artifacts/striker/fortress

# === CHECK: GROUND SLAM (sneaking + grounded + 25+ Impact + off cooldown) ===
execute if predicate evercraft:sneaking if predicate evercraft:on_ground if score @s ec.sk_impact matches 25.. if score @s ec.sk_cd matches ..-1 run return run function evercraft:artifacts/striker/ground_slam

# === IMPACT STRIKE: Now activated via right-click (impact_use.mcfunction) ===

# Cap Impact
execute if entity @s[tag=!ec.sk_sentinel] if score @s ec.sk_impact matches 101.. run scoreboard players set @s ec.sk_impact 100
execute if entity @s[tag=ec.sk_sentinel] if score @s ec.sk_impact matches 76.. run scoreboard players set @s ec.sk_impact 75
