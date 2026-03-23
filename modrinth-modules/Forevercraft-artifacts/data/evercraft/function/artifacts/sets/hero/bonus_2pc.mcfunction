# Hero's Eternal 2-Piece Bonus: Hero's Resolve — Speed I + 10% Evasion
execute unless entity @s[tag=hero_2pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Eternal 2pc: ",color:"light_purple"},{text:"Hero's Resolve — Speed I",color:"gray"}]
tag @s add hero_2pc
execute unless score @s ec.h_speed matches 2.. run effect give @s speed 3 0 false

# Class bonus: Dancer (mainhand sword with dancer:true) — +1 Attack Damage
execute if items entity @s weapon.mainhand #minecraft:swords[custom_data~{dancer:true,artifact_set:"hero"}] unless entity @s[tag=hero_dancer_2pc] run attribute @s attack_damage modifier add evercraft:hero_dancer_2pc_dmg 1 add_value
execute if items entity @s weapon.mainhand #minecraft:swords[custom_data~{dancer:true,artifact_set:"hero"}] run tag @s add hero_dancer_2pc
execute unless items entity @s weapon.mainhand #minecraft:swords[custom_data~{dancer:true,artifact_set:"hero"}] if entity @s[tag=hero_dancer_2pc] run attribute @s attack_damage modifier remove evercraft:hero_dancer_2pc_dmg
execute unless items entity @s weapon.mainhand #minecraft:swords[custom_data~{dancer:true,artifact_set:"hero"}] if entity @s[tag=hero_dancer_2pc] run tag @s remove hero_dancer_2pc
