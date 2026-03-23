# Splendid Set 5pc Bonus: Explorer's Fortune — Luck III
tag @s add splendid_5pc
effect give @s luck 5 2 false

# Class bonus: Rogue (mainhand dagger) — +2 Attack Damage
execute if items entity @s weapon.mainhand #minecraft:swords[custom_data~{rogue:true}] unless entity @s[tag=spl_rogue_5pc] run attribute @s attack_damage modifier add evercraft:spl_rogue_5pc_dmg 2 add_value
execute if items entity @s weapon.mainhand #minecraft:swords[custom_data~{rogue:true}] run tag @s add spl_rogue_5pc
execute unless items entity @s weapon.mainhand #minecraft:swords[custom_data~{rogue:true}] if entity @s[tag=spl_rogue_5pc] run attribute @s attack_damage modifier remove evercraft:spl_rogue_5pc_dmg
execute unless items entity @s weapon.mainhand #minecraft:swords[custom_data~{rogue:true}] if entity @s[tag=spl_rogue_5pc] run tag @s remove spl_rogue_5pc
