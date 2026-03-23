# Dragonmaster 5-Piece Bonus: Dragon's Fury — Strength II
execute unless entity @s[tag=dragonmaster_5pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Dragonmaster 5pc: ",color:"light_purple"},{text:"Dragon's Fury — Strength II",color:"gray"}]
tag @s add dragonmaster_5pc
execute unless score @s ec.h_str matches 2.. run effect give @s strength 3 1 false

# Class bonus: Berserker (mainhand axe) — Speed I
execute if items entity @s weapon.mainhand #minecraft:axes[custom_data~{awakened:1b}] unless score @s ec.h_speed matches 2.. run effect give @s speed 3 0 false

# Class bonus: Dancer (mainhand gauntlet) — +15% Attack Speed
execute if items entity @s weapon.mainhand #minecraft:swords[custom_data~{dancer:true}] unless entity @s[tag=dm_dancer_5pc] run attribute @s attack_speed modifier add evercraft:dm_dancer_5pc_aspd 0.15 add_multiplied_base
execute if items entity @s weapon.mainhand #minecraft:swords[custom_data~{dancer:true}] run tag @s add dm_dancer_5pc
execute unless items entity @s weapon.mainhand #minecraft:swords[custom_data~{dancer:true}] if entity @s[tag=dm_dancer_5pc] run attribute @s attack_speed modifier remove evercraft:dm_dancer_5pc_aspd
execute unless items entity @s weapon.mainhand #minecraft:swords[custom_data~{dancer:true}] if entity @s[tag=dm_dancer_5pc] run tag @s remove dm_dancer_5pc
