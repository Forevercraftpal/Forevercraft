# Archer Bow — Overcharge Hit
# Dispatches overcharge ability based on bow_id, then sets cooldown
# @s = player, position = player location

# Reset overcharge state
scoreboard players set @s ec.ar_charged 0
scoreboard players set @s ec.ar_hit_timer 0

# Clean up overcharge arrow tag
tag @e[type=arrow,tag=ec.ar_oc_arrow] remove ec.ar_oc_arrow

# === DISPATCH OVERCHARGE ABILITY ===
execute if score @s ec.ar_bow_id matches 1 run function evercraft:artifacts/archer/overcharge/hunting_bow
execute if score @s ec.ar_bow_id matches 2 run function evercraft:artifacts/archer/overcharge/mechanical_shortbow
execute if score @s ec.ar_bow_id matches 3 run function evercraft:artifacts/archer/overcharge/battle_bow
execute if score @s ec.ar_bow_id matches 4 run function evercraft:artifacts/archer/overcharge/longbow
execute if score @s ec.ar_bow_id matches 5 run function evercraft:artifacts/archer/overcharge/frostbite_bow
execute if score @s ec.ar_bow_id matches 6 run function evercraft:artifacts/archer/overcharge/stormcaller_bow
execute if score @s ec.ar_bow_id matches 7 run function evercraft:artifacts/archer/overcharge/ancient_bow
execute if score @s ec.ar_bow_id matches 8 run function evercraft:artifacts/archer/overcharge/arm_cannon
execute if score @s ec.ar_bow_id matches 9 run function evercraft:artifacts/archer/overcharge/sabrewing
execute if score @s ec.ar_bow_id matches 10 run function evercraft:artifacts/archer/overcharge/call_of_the_void
execute if score @s ec.ar_bow_id matches 11 run function evercraft:artifacts/archer/overcharge/hunters_promise
execute if score @s ec.ar_bow_id matches 12 run function evercraft:artifacts/archer/overcharge/gaster_blaster
execute if score @s ec.ar_bow_id matches 13 run function evercraft:artifacts/archer/overcharge/soulstring

# === SET COOLDOWN (seconds) ===
execute if score @s ec.ar_bow_id matches 1 run scoreboard players set @s ec.ar_cd 8
execute if score @s ec.ar_bow_id matches 2 run scoreboard players set @s ec.ar_cd 8
execute if score @s ec.ar_bow_id matches 3 run scoreboard players set @s ec.ar_cd 10
execute if score @s ec.ar_bow_id matches 4 run scoreboard players set @s ec.ar_cd 18
execute if score @s ec.ar_bow_id matches 5 run scoreboard players set @s ec.ar_cd 22
execute if score @s ec.ar_bow_id matches 6 run scoreboard players set @s ec.ar_cd 12
execute if score @s ec.ar_bow_id matches 7 run scoreboard players set @s ec.ar_cd 18
execute if score @s ec.ar_bow_id matches 8 run scoreboard players set @s ec.ar_cd 15
execute if score @s ec.ar_bow_id matches 9 run scoreboard players set @s ec.ar_cd 25
execute if score @s ec.ar_bow_id matches 10 run scoreboard players set @s ec.ar_cd 30
execute if score @s ec.ar_bow_id matches 11 run scoreboard players set @s ec.ar_cd 25
execute if score @s ec.ar_bow_id matches 12 run scoreboard players set @s ec.ar_cd 45
execute if score @s ec.ar_bow_id matches 13 run scoreboard players set @s ec.ar_cd 12
