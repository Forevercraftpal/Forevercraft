$summon minecraft:$(type) ~ ~ ~ {Tags:["bestiary.villager_pet"]}
$data modify entity @n[type=$(type),tag=bestiary.villager_pet,tag=!bestiary.has_owner,distance=..1] owner set from entity @s UUID
$tag @n[type=$(type),tag=!bestiary.has_owner,distance=..1] add bestiary.has_owner