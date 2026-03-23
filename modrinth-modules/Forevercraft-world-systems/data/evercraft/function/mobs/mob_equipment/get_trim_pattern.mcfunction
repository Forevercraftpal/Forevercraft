execute store result score $bestiary.trim_pattern bestiary.technical run random value 1..18

$execute if score $bestiary.trim_pattern bestiary.technical matches 1 run return run data modify storage eden:settings bestiary.mob_equipment.$(slot).trim_pattern set value coast
$execute if score $bestiary.trim_pattern bestiary.technical matches 2 run return run data modify storage eden:settings bestiary.mob_equipment.$(slot).trim_pattern set value dune
$execute if score $bestiary.trim_pattern bestiary.technical matches 3 run return run data modify storage eden:settings bestiary.mob_equipment.$(slot).trim_pattern set value eye
$execute if score $bestiary.trim_pattern bestiary.technical matches 4 run return run data modify storage eden:settings bestiary.mob_equipment.$(slot).trim_pattern set value host
$execute if score $bestiary.trim_pattern bestiary.technical matches 5 run return run data modify storage eden:settings bestiary.mob_equipment.$(slot).trim_pattern set value raiser
$execute if score $bestiary.trim_pattern bestiary.technical matches 6 run return run data modify storage eden:settings bestiary.mob_equipment.$(slot).trim_pattern set value rib
$execute if score $bestiary.trim_pattern bestiary.technical matches 7 run return run data modify storage eden:settings bestiary.mob_equipment.$(slot).trim_pattern set value sentry
$execute if score $bestiary.trim_pattern bestiary.technical matches 8 run return run data modify storage eden:settings bestiary.mob_equipment.$(slot).trim_pattern set value shaper
$execute if score $bestiary.trim_pattern bestiary.technical matches 9 run return run data modify storage eden:settings bestiary.mob_equipment.$(slot).trim_pattern set value silence
$execute if score $bestiary.trim_pattern bestiary.technical matches 10 run return run data modify storage eden:settings bestiary.mob_equipment.$(slot).trim_pattern set value snout
$execute if score $bestiary.trim_pattern bestiary.technical matches 11 run return run data modify storage eden:settings bestiary.mob_equipment.$(slot).trim_pattern set value spire
$execute if score $bestiary.trim_pattern bestiary.technical matches 12 run return run data modify storage eden:settings bestiary.mob_equipment.$(slot).trim_pattern set value tide
$execute if score $bestiary.trim_pattern bestiary.technical matches 13 run return run data modify storage eden:settings bestiary.mob_equipment.$(slot).trim_pattern set value vex
$execute if score $bestiary.trim_pattern bestiary.technical matches 14 run return run data modify storage eden:settings bestiary.mob_equipment.$(slot).trim_pattern set value ward
$execute if score $bestiary.trim_pattern bestiary.technical matches 15 run return run data modify storage eden:settings bestiary.mob_equipment.$(slot).trim_pattern set value wayfinder
$execute if score $bestiary.trim_pattern bestiary.technical matches 16 run return run data modify storage eden:settings bestiary.mob_equipment.$(slot).trim_pattern set value wild
$execute if score $bestiary.trim_pattern bestiary.technical matches 17 run return run data modify storage eden:settings bestiary.mob_equipment.$(slot).trim_pattern set value bolt
$execute if score $bestiary.trim_pattern bestiary.technical matches 18 run return run data modify storage eden:settings bestiary.mob_equipment.$(slot).trim_pattern set value flow