# Dragonmaster 6-Piece Bonus: Dragon Avatar — Strength III + Fire Resistance
execute unless entity @s[tag=dragonmaster_6pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Wyrmrider 6pc: ",color:"light_purple"},{text:"Dragon Avatar — Strength III + Fire Resistance",color:"gray"}]
tag @s add dragonmaster_6pc
execute unless score @s ec.h_str matches 2.. run effect give @s strength 3 2 false
effect give @s fire_resistance 3 0 false

# Class bonus: Berserker (mainhand axe) — +4 Attack Damage
execute if items entity @s weapon.mainhand #minecraft:axes[custom_data~{awakened:1b}] unless entity @s[tag=dm_berserker_6pc] run attribute @s attack_damage modifier add evercraft:dm_berserker_6pc_dmg 4 add_value
execute if items entity @s weapon.mainhand #minecraft:axes[custom_data~{awakened:1b}] run tag @s add dm_berserker_6pc
execute unless items entity @s weapon.mainhand #minecraft:axes[custom_data~{awakened:1b}] if entity @s[tag=dm_berserker_6pc] run attribute @s attack_damage modifier remove evercraft:dm_berserker_6pc_dmg
execute unless items entity @s weapon.mainhand #minecraft:axes[custom_data~{awakened:1b}] if entity @s[tag=dm_berserker_6pc] run tag @s remove dm_berserker_6pc

# Class bonus: Dancer (mainhand gauntlet) — +30% Attack Speed
execute if items entity @s weapon.mainhand #minecraft:swords[custom_data~{dancer:true}] unless entity @s[tag=dm_dancer_6pc] run attribute @s attack_speed modifier add evercraft:dm_dancer_6pc_aspd 0.30 add_multiplied_base
execute if items entity @s weapon.mainhand #minecraft:swords[custom_data~{dancer:true}] run tag @s add dm_dancer_6pc
execute unless items entity @s weapon.mainhand #minecraft:swords[custom_data~{dancer:true}] if entity @s[tag=dm_dancer_6pc] run attribute @s attack_speed modifier remove evercraft:dm_dancer_6pc_aspd
execute unless items entity @s weapon.mainhand #minecraft:swords[custom_data~{dancer:true}] if entity @s[tag=dm_dancer_6pc] run tag @s remove dm_dancer_6pc
