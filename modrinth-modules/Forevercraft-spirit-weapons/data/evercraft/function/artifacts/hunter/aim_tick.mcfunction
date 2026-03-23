# Hunter — Steady Aim Tick
# Called per tick when sneaking with a loaded hunter crossbow

# Already charged — show release prompt
execute if score @s ec.ht_charged matches 1 run return run title @s actionbar {"text":"\u2726 PRECISION SHOT READY \u2014 FIRE! \u2726","color":"aqua","bold":true}

# Cooldown check — show recharging
execute if score @s ec.ht_cd matches 1.. run return run title @s actionbar [{"text":"Precision Recharging... ","color":"gray"},{"score":{"name":"@s","objective":"ec.ht_cd"},"color":"red"},{"text":"s","color":"gray"}]

# Increment aim
scoreboard players add @s ec.ht_aim 1

# === THRESHOLD CHECK ===
# 1:RapidCrossbow=30 2:FireboltThrower=40 3:AcaciaBallista=50
# 4:CorruptedCrossbow=60 5:EchoShot=60 6:Voidcaller=80
execute if score @s ec.ht_bow_id matches 1 if score @s ec.ht_aim matches 30.. run scoreboard players set @s ec.ht_charged 1
execute if score @s ec.ht_bow_id matches 2 if score @s ec.ht_aim matches 40.. run scoreboard players set @s ec.ht_charged 1
execute if score @s ec.ht_bow_id matches 3 if score @s ec.ht_aim matches 50.. run scoreboard players set @s ec.ht_charged 1
execute if score @s ec.ht_bow_id matches 4 if score @s ec.ht_aim matches 60.. run scoreboard players set @s ec.ht_charged 1
execute if score @s ec.ht_bow_id matches 5 if score @s ec.ht_aim matches 60.. run scoreboard players set @s ec.ht_charged 1
execute if score @s ec.ht_bow_id matches 6 if score @s ec.ht_aim matches 80.. run scoreboard players set @s ec.ht_charged 1

# === CHARGED TRANSITION — flash title (only fires once) ===
execute if score @s ec.ht_charged matches 1 run title @s title {"text":"PRECISION SHOT","color":"aqua","bold":true}
execute if score @s ec.ht_charged matches 1 run title @s subtitle {"text":"Fire to unleash!","color":"dark_aqua"}
execute if score @s ec.ht_charged matches 1 run playsound minecraft:block.respawn_anchor.set_spawn master @s ~ ~ ~ 1 2.0
execute if score @s ec.ht_charged matches 1 run return 0

# === STILL FOCUSING — show progress ===
title @s actionbar {"text":"Focusing...","color":"dark_aqua"}
