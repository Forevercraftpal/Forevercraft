# Splendid Set 2pc Bonus: Pathfinder — Speed I
tag @s add splendid_2pc
execute unless score @s ec.h_speed matches 2.. run effect give @s speed 5 0 false

# Class bonus: Rogue (mainhand dagger) — +1 Attack Damage
execute if items entity @s weapon.mainhand #minecraft:swords[custom_data~{rogue:true}] unless entity @s[tag=spl_rogue_2pc] run attribute @s attack_damage modifier add evercraft:spl_rogue_2pc_dmg 1 add_value
execute if items entity @s weapon.mainhand #minecraft:swords[custom_data~{rogue:true}] run tag @s add spl_rogue_2pc
execute unless items entity @s weapon.mainhand #minecraft:swords[custom_data~{rogue:true}] if entity @s[tag=spl_rogue_2pc] run attribute @s attack_damage modifier remove evercraft:spl_rogue_2pc_dmg
execute unless items entity @s weapon.mainhand #minecraft:swords[custom_data~{rogue:true}] if entity @s[tag=spl_rogue_2pc] run tag @s remove spl_rogue_2pc
