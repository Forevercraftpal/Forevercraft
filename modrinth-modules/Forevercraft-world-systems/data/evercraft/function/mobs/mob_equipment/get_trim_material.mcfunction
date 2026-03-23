execute store result score $bestiary.trim_material bestiary.technical run random value 1..10

$execute if score $bestiary.trim_material bestiary.technical matches 1 run return run data modify storage eden:settings bestiary.mob_equipment.$(slot).trim_material set value iron
$execute if score $bestiary.trim_material bestiary.technical matches 2 run return run data modify storage eden:settings bestiary.mob_equipment.$(slot).trim_material set value copper
$execute if score $bestiary.trim_material bestiary.technical matches 3 run return run data modify storage eden:settings bestiary.mob_equipment.$(slot).trim_material set value gold
$execute if score $bestiary.trim_material bestiary.technical matches 4 run return run data modify storage eden:settings bestiary.mob_equipment.$(slot).trim_material set value lapis
$execute if score $bestiary.trim_material bestiary.technical matches 5 run return run data modify storage eden:settings bestiary.mob_equipment.$(slot).trim_material set value emerald
$execute if score $bestiary.trim_material bestiary.technical matches 6 run return run data modify storage eden:settings bestiary.mob_equipment.$(slot).trim_material set value diamond
$execute if score $bestiary.trim_material bestiary.technical matches 7 run return run data modify storage eden:settings bestiary.mob_equipment.$(slot).trim_material set value netherite
$execute if score $bestiary.trim_material bestiary.technical matches 8 run return run data modify storage eden:settings bestiary.mob_equipment.$(slot).trim_material set value redstone
$execute if score $bestiary.trim_material bestiary.technical matches 9 run return run data modify storage eden:settings bestiary.mob_equipment.$(slot).trim_material set value amethyst
$execute if score $bestiary.trim_material bestiary.technical matches 10 run return run data modify storage eden:settings bestiary.mob_equipment.$(slot).trim_material set value quartz