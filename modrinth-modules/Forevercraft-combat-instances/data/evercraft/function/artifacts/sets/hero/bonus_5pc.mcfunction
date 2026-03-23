# Hero's Eternal 5-Piece Bonus: Hero's Aura — Strength I
execute unless entity @s[tag=hero_5pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Eternal 5pc: ",color:"light_purple"},{text:"Hero's Aura — Strength I",color:"gray"}]
tag @s add hero_5pc
execute unless score @s ec.h_str matches 2.. run effect give @s strength 3 0 false

# Class bonus: Dancer — +20% Attack Speed
execute if items entity @s weapon.mainhand #minecraft:swords[custom_data~{dancer:true,artifact_set:"hero"}] unless entity @s[tag=hero_dancer_5pc] run attribute @s attack_speed modifier add evercraft:hero_dancer_5pc_aspd 0.20 add_multiplied_base
execute if items entity @s weapon.mainhand #minecraft:swords[custom_data~{dancer:true,artifact_set:"hero"}] run tag @s add hero_dancer_5pc
execute unless items entity @s weapon.mainhand #minecraft:swords[custom_data~{dancer:true,artifact_set:"hero"}] if entity @s[tag=hero_dancer_5pc] run attribute @s attack_speed modifier remove evercraft:hero_dancer_5pc_aspd
execute unless items entity @s weapon.mainhand #minecraft:swords[custom_data~{dancer:true,artifact_set:"hero"}] if entity @s[tag=hero_dancer_5pc] run tag @s remove hero_dancer_5pc
