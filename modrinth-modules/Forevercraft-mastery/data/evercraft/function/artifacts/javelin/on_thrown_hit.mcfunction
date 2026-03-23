# Javelin Class — On Thrown Hit
# Called from on_trident_hit (triggered by thrown_hit advancement: is_projectile tag)

# === MOMENTUM: Grant Strike Momentum (5s = 100 ticks) ===
scoreboard players set @s ec.jv_melee 100

# === SPEED BOOST (non-Hoplite only) ===
execute unless score @s ec.jv_hoplite matches 1 run effect give @s speed 2 0 true

# === THROW MOMENTUM BONUS (thrown hit during ec.jv_thrown window) ===
# Tiers 2-4: +2 bonus damage, Tiers 5-6: +3 bonus damage
execute if score @s ec.jv_thrown matches 1.. if score @s ec.jv_tier matches 2..4 at @s run damage @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={HurtTime:10s}] 2 evercraft:bonus_strike
execute if score @s ec.jv_thrown matches 1.. if score @s ec.jv_tier matches 5..6 at @s run damage @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={HurtTime:10s}] 3 evercraft:bonus_strike

# === COOLDOWN CHECK — skip ability if on cooldown ===
execute if score @s ec.jv_cd matches 1.. run return run title @s actionbar [{"text":"Ability cooldown: ","color":"gray"},{"score":{"name":"@s","objective":"ec.jv_cd"},"color":"aqua"},{"text":"s","color":"gray"}]

# === ROUTE TO ARTIFACT-SPECIFIC THROWN ABILITY ===
execute if score @s ec.jv_id matches 1 run function evercraft:artifacts/javelin/thrown/norroen
execute if score @s ec.jv_id matches 2 run function evercraft:artifacts/javelin/thrown/ancient
execute if score @s ec.jv_id matches 3 run function evercraft:artifacts/javelin/thrown/royal
execute if score @s ec.jv_id matches 4 run function evercraft:artifacts/javelin/thrown/fantasy
execute if score @s ec.jv_id matches 5 run function evercraft:artifacts/javelin/thrown/shuriken
execute if score @s ec.jv_id matches 6 run function evercraft:artifacts/javelin/thrown/crucible
execute if score @s ec.jv_id matches 7 run function evercraft:artifacts/javelin/thrown/mjolnir
execute if score @s ec.jv_id matches 8 run function evercraft:artifacts/javelin/thrown/ninja
execute if score @s ec.jv_id matches 9 run function evercraft:artifacts/javelin/thrown/master_bolt
execute if score @s ec.jv_id matches 10 run function evercraft:artifacts/javelin/thrown/gungnir

# === SPIRIT TRIDENT ABILITIES (fire on thrown hit) ===
# Soul Piercer (spirit_id 8) — Maelstrom / Poseidon's Wrath
execute if entity @s[tag=ec.sp_active] if score @s ec.sp_weapon matches 8 run function evercraft:spirit/abilities/ellegaard_trident/on_thrown_hit
# Depthsworn (spirit_id 14) — Aegis Wall / Phalanx Charge
execute if entity @s[tag=ec.sp_active] if score @s ec.sp_weapon matches 14 run function evercraft:spirit/abilities/royal_trident/on_thrown_hit
