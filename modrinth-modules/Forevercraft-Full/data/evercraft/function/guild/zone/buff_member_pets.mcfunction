# Guild Zone — Buff a single pet if its owner is a guild member
# @s = zone_protected_pet entity
# Uses on owner to check guild membership, then applies buffs to pet

scoreboard players set #pet_owned ec.temp 0
execute on owner if score @s ec.guild_id matches 1.. run scoreboard players set #pet_owned ec.temp 1
execute if score #pet_owned ec.temp matches 1 run effect give @s regeneration 7 0 true
execute if score #pet_owned ec.temp matches 1 run effect give @s resistance 7 0 true
