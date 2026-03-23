# Night Owl — check if it's midnight (DayTime around 18000) and player is in overworld
execute store result score #sq_time ec.var run time query daytime
execute if score #sq_time ec.var matches 17500..18500 in minecraft:overworld at @s if predicate evercraft:spirit_tome/can_see_sky run function evercraft:spirit_tome/complete
