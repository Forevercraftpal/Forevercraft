# Artisan Tome — Route to quest definition by part number (binary search)
execute if score @s ec.tq_part matches 1..50 run function evercraft:craftforever/spirit_tools/tome/quests/route/half_1
execute if score @s ec.tq_part matches 51..100 run function evercraft:craftforever/spirit_tools/tome/quests/route/half_2
