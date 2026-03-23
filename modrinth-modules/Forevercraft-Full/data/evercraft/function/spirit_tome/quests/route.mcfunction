# Spirit Tome — Route quest part to type/target/subtype and quest text
# Splits into 10 bucket files for performance (binary-style branching)
execute if score @s ec.sq_part matches 1..50 run function evercraft:spirit_tome/quests/route/half_1
execute if score @s ec.sq_part matches 51..100 run function evercraft:spirit_tome/quests/route/half_2
