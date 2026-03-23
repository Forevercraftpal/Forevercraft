# Hero's Eternal 4-Piece Bonus: Hero's Dance — Active ability (AoE dash, 60s cd)
execute unless entity @s[tag=hero_4pc] run function evercraft:artifacts/sets/hero/grant_ability_item
tag @s add hero_4pc

# Class bonus: Dancer — +15% Attack Speed
execute if items entity @s weapon.mainhand #minecraft:swords[custom_data~{dancer:true,artifact_set:"hero"}] unless entity @s[tag=hero_dancer_4pc] run attribute @s attack_speed modifier add evercraft:hero_dancer_4pc_aspd 0.15 add_multiplied_base
execute if items entity @s weapon.mainhand #minecraft:swords[custom_data~{dancer:true,artifact_set:"hero"}] run tag @s add hero_dancer_4pc
execute unless items entity @s weapon.mainhand #minecraft:swords[custom_data~{dancer:true,artifact_set:"hero"}] if entity @s[tag=hero_dancer_4pc] run attribute @s attack_speed modifier remove evercraft:hero_dancer_4pc_aspd
execute unless items entity @s weapon.mainhand #minecraft:swords[custom_data~{dancer:true,artifact_set:"hero"}] if entity @s[tag=hero_dancer_4pc] run tag @s remove hero_dancer_4pc
