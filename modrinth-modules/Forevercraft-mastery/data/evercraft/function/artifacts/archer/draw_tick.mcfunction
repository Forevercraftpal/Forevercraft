# Archer Bow — Draw Tick
# Called by using_item advancement EVERY tick while drawing an archer bow
advancement revoke @s only evercraft:artifacts/archer/draw

# Increment draw counter and reset stale
scoreboard players add @s ec.ar_draw 1
scoreboard players set @s ec.ar_stale 0

# === FIRST TICK: IDENTIFY BOW + DISENGAGE CHECK ===
execute if score @s ec.ar_draw matches 1 run function evercraft:artifacts/archer/identify_bow
execute if score @s ec.ar_draw matches 1 if entity @s[predicate=evercraft:is_sneaking] unless score @s ec.ar_disengage matches 1.. run function evercraft:artifacts/archer/disengage

# === COOLDOWN CHECK — show recharging message and stop ===
execute if score @s ec.ar_cd matches 1.. run return run title @s actionbar [{"text":"Overcharge Recharging... ","color":"gray"},{"score":{"name":"@s","objective":"ec.ar_cd"},"color":"red"},{"text":"s","color":"gray"}]

# === ALREADY OVERCHARGED — show release prompt ===
execute if score @s ec.ar_charged matches 1 run return run title @s actionbar {"text":"\u2726 OVERCHARGED \u2014 RELEASE! \u2726","color":"red","bold":true}

# === VANILLA DRAW PHASE (ticks 1-20) ===
execute if score @s ec.ar_draw matches ..20 run return run title @s actionbar {"text":"Drawing...","color":"gray"}

# === OVERCHARGE THRESHOLD CHECK (only runs when not yet charged) ===
# Thresholds per bow (total draw ticks including vanilla charge):
# 1:HuntingBow=50 2:MechShort=50 3:BattleBow=40 4:Longbow=60
# 5:Frostbite=70 6:Stormcaller=60 7:AncientBow=70 8:ArmCannon=80
# 9:Sabrewing=80 10:CallVoid=80 11:Hunters=70 12:Gaster=100 13:Soulstring=80
execute if score @s ec.ar_bow_id matches 1 if score @s ec.ar_draw matches 50.. run scoreboard players set @s ec.ar_charged 1
execute if score @s ec.ar_bow_id matches 2 if score @s ec.ar_draw matches 50.. run scoreboard players set @s ec.ar_charged 1
execute if score @s ec.ar_bow_id matches 3 if score @s ec.ar_draw matches 40.. run scoreboard players set @s ec.ar_charged 1
execute if score @s ec.ar_bow_id matches 4 if score @s ec.ar_draw matches 60.. run scoreboard players set @s ec.ar_charged 1
execute if score @s ec.ar_bow_id matches 5 if score @s ec.ar_draw matches 70.. run scoreboard players set @s ec.ar_charged 1
execute if score @s ec.ar_bow_id matches 6 if score @s ec.ar_draw matches 60.. run scoreboard players set @s ec.ar_charged 1
execute if score @s ec.ar_bow_id matches 7 if score @s ec.ar_draw matches 70.. run scoreboard players set @s ec.ar_charged 1
execute if score @s ec.ar_bow_id matches 8 if score @s ec.ar_draw matches 80.. run scoreboard players set @s ec.ar_charged 1
execute if score @s ec.ar_bow_id matches 9 if score @s ec.ar_draw matches 80.. run scoreboard players set @s ec.ar_charged 1
execute if score @s ec.ar_bow_id matches 10 if score @s ec.ar_draw matches 80.. run scoreboard players set @s ec.ar_charged 1
execute if score @s ec.ar_bow_id matches 11 if score @s ec.ar_draw matches 70.. run scoreboard players set @s ec.ar_charged 1
execute if score @s ec.ar_bow_id matches 12 if score @s ec.ar_draw matches 100.. run scoreboard players set @s ec.ar_charged 1
execute if score @s ec.ar_bow_id matches 13 if score @s ec.ar_draw matches 80.. run scoreboard players set @s ec.ar_charged 1

# === OVERCHARGE REACHED — flash title (only fires on the transition tick) ===
execute if score @s ec.ar_charged matches 1 run title @s title {"text":"OVERCHARGED","color":"red","bold":true}
execute if score @s ec.ar_charged matches 1 run title @s subtitle {"text":"Release to fire!","color":"gold"}
execute if score @s ec.ar_charged matches 1 run playsound minecraft:block.respawn_anchor.set_spawn master @s ~ ~ ~ 1 2.0
execute if score @s ec.ar_charged matches 1 run return 0

# === STILL CHARGING — show progress ===
title @s actionbar {"text":"Overcharging...","color":"yellow"}
