# Hero's Eternal 6-Piece Bonus: Eternal Dance — Speed II + Strength II
execute unless entity @s[tag=hero_6pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Eternal 6pc: ",color:"light_purple"},{text:"Eternal Dance — Speed II + Strength II",color:"gray"}]
tag @s add hero_6pc
execute unless score @s ec.h_speed matches 2.. run effect give @s speed 3 1 false
execute unless score @s ec.h_str matches 2.. run effect give @s strength 3 1 false

# Class bonus: Dancer — +35% Attack Speed + 15% Evasion (via dodge attribute)
execute if items entity @s weapon.mainhand #minecraft:swords[custom_data~{dancer:true,artifact_set:"hero"}] unless entity @s[tag=hero_dancer_6pc] run attribute @s attack_speed modifier add evercraft:hero_dancer_6pc_aspd 0.35 add_multiplied_base
execute if items entity @s weapon.mainhand #minecraft:swords[custom_data~{dancer:true,artifact_set:"hero"}] run tag @s add hero_dancer_6pc
execute unless items entity @s weapon.mainhand #minecraft:swords[custom_data~{dancer:true,artifact_set:"hero"}] if entity @s[tag=hero_dancer_6pc] run attribute @s attack_speed modifier remove evercraft:hero_dancer_6pc_aspd
execute unless items entity @s weapon.mainhand #minecraft:swords[custom_data~{dancer:true,artifact_set:"hero"}] if entity @s[tag=hero_dancer_6pc] run tag @s remove hero_dancer_6pc
