# Housing Zone — Buff a single pet if its owner is the homeowner
# @s = zone_protected_pet entity
# Homeowner is tagged ec.zone_owner before this is called

scoreboard players set #pet_owned ec.temp 0
execute on owner if entity @s[tag=ec.zone_owner] run scoreboard players set #pet_owned ec.temp 1
execute if score #pet_owned ec.temp matches 1 run effect give @s regeneration 5 0 true
execute if score #pet_owned ec.temp matches 1 run effect give @s resistance 5 0 true
