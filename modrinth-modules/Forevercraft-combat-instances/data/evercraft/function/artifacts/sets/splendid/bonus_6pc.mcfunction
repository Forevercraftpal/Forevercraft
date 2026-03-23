# Splendid 6-Piece Bonus: Twilight Sovereign — Speed II + Night Vision
execute unless entity @s[tag=splendid_6pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Delver's 6pc: ",color:"light_purple"},{text:"Twilight Sovereign — Speed II + Night Vision",color:"gray"}]
tag @s add splendid_6pc
execute unless score @s ec.h_speed matches 2.. run effect give @s speed 3 1 false
effect give @s night_vision 13 0 false

# Class bonus: Rogue (mainhand dagger/sword) — +2 Attack Damage + Luck II
execute if items entity @s weapon.mainhand #minecraft:swords[custom_data~{rogue:true}] unless entity @s[tag=spl_rogue_6pc] run attribute @s attack_damage modifier add evercraft:spl_rogue_6pc_dmg 2 add_value
execute if items entity @s weapon.mainhand #minecraft:swords[custom_data~{rogue:true}] run tag @s add spl_rogue_6pc
execute unless items entity @s weapon.mainhand #minecraft:swords[custom_data~{rogue:true}] if entity @s[tag=spl_rogue_6pc] run attribute @s attack_damage modifier remove evercraft:spl_rogue_6pc_dmg
execute unless items entity @s weapon.mainhand #minecraft:swords[custom_data~{rogue:true}] if entity @s[tag=spl_rogue_6pc] run tag @s remove spl_rogue_6pc
execute if items entity @s weapon.mainhand #minecraft:swords[custom_data~{rogue:true}] run effect give @s luck 3 1 false
