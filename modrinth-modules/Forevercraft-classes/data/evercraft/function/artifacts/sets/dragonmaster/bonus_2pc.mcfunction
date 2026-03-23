# Dragonmaster 2-Piece Bonus: Dragon's Blood — Strength I
execute unless entity @s[tag=dragonmaster_2pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Dragonmaster 2pc: ",color:"light_purple"},{text:"Dragon's Blood — Strength I",color:"gray"}]
tag @s add dragonmaster_2pc
execute unless score @s ec.h_str matches 2.. run effect give @s strength 3 0 false

# Class bonus: Berserker (mainhand axe) — +2 Attack Damage
execute if items entity @s weapon.mainhand #minecraft:axes[custom_data~{awakened:1b}] unless entity @s[tag=dm_berserk_2pc] run attribute @s attack_damage modifier add evercraft:dm_berserk_2pc_dmg 2 add_value
execute if items entity @s weapon.mainhand #minecraft:axes[custom_data~{awakened:1b}] run tag @s add dm_berserk_2pc
execute unless items entity @s weapon.mainhand #minecraft:axes[custom_data~{awakened:1b}] if entity @s[tag=dm_berserk_2pc] run attribute @s attack_damage modifier remove evercraft:dm_berserk_2pc_dmg
execute unless items entity @s weapon.mainhand #minecraft:axes[custom_data~{awakened:1b}] if entity @s[tag=dm_berserk_2pc] run tag @s remove dm_berserk_2pc

# Class bonus: Dancer (mainhand gauntlet) — Speed I
execute if items entity @s weapon.mainhand #minecraft:swords[custom_data~{dancer:true}] unless score @s ec.h_speed matches 2.. run effect give @s speed 3 0 false
