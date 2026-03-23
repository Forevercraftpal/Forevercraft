# Javelin Class — On Melee Hit
# Called from on_hit router (trident in mainhand)

# === MOMENTUM: Grant Throw Momentum (5s = 100 ticks) ===
scoreboard players set @s ec.jv_thrown 100

# === STRIKE MOMENTUM BONUS (melee hit during ec.jv_melee window) ===
# Tiers 2-4: +2 bonus damage, Tiers 5-6: +3 bonus damage
execute if score @s ec.jv_melee matches 1.. if score @s ec.jv_tier matches 2..4 at @s run damage @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] 2 evercraft:bonus_strike
execute if score @s ec.jv_melee matches 1.. if score @s ec.jv_tier matches 5..6 at @s run damage @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] 3 evercraft:bonus_strike

# === COOLDOWN CHECK — skip ability if on cooldown ===
execute if score @s ec.jv_cd matches 1.. run return run title @s actionbar [{"text":"Ability cooldown: ","color":"gray"},{"score":{"name":"@s","objective":"ec.jv_cd"},"color":"aqua"},{"text":"s","color":"gray"}]

# === ROUTE TO ARTIFACT-SPECIFIC MELEE ABILITY ===
execute if score @s ec.jv_id matches 1 run function evercraft:artifacts/javelin/melee/norroen
execute if score @s ec.jv_id matches 2 run function evercraft:artifacts/javelin/melee/ancient
execute if score @s ec.jv_id matches 3 run function evercraft:artifacts/javelin/melee/royal
execute if score @s ec.jv_id matches 4 run function evercraft:artifacts/javelin/melee/fantasy
execute if score @s ec.jv_id matches 5 run function evercraft:artifacts/javelin/melee/shuriken
execute if score @s ec.jv_id matches 6 run function evercraft:artifacts/javelin/melee/crucible
execute if score @s ec.jv_id matches 7 run function evercraft:artifacts/javelin/melee/mjolnir
execute if score @s ec.jv_id matches 8 run function evercraft:artifacts/javelin/melee/ninja
execute if score @s ec.jv_id matches 9 run function evercraft:artifacts/javelin/melee/master_bolt
execute if score @s ec.jv_id matches 10 run function evercraft:artifacts/javelin/melee/gungnir
