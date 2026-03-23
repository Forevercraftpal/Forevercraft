effect give @s regeneration 20 1 false
effect give @s resistance 20 1 false
effect give @s strength 20 1 false
effect give @s speed 20 0 false
execute store result score @s trim_math1 run attribute @s minecraft:knockback_resistance base get
execute if score @s trim_math1 matches ..0 run attribute @s minecraft:knockback_resistance base set 1.0
