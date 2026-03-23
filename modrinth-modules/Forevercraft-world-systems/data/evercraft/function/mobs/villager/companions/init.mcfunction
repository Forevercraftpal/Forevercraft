execute store result score $villager_pet bestiary.technical run random value 1..10
execute if score $villager_pet bestiary.technical matches 1..4 run data modify storage eden:temp bestiary.villager.type set value "wolf"
execute if score $villager_pet bestiary.technical matches 5..6 run data modify storage eden:temp bestiary.villager.type set value "parrot"
execute if score $villager_pet bestiary.technical matches 7..10 run data modify storage eden:temp bestiary.villager.type set value "cat"

execute store result score $villager_age bestiary.technical run data get entity @s Age
execute if score $villager_age bestiary.technical matches 0.. run function evercraft:mobs/villager/companions/exec with storage eden:temp bestiary.villager