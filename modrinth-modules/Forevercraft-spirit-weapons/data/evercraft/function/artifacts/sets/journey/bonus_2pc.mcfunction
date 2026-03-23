# Journey Set 2pc Bonus: Deep Delver — Haste I
tag @s add journey_2pc
execute unless score @s ec.h_haste matches 2.. run effect give @s haste 5 0 false

# Class bonus: Beastlord (mainhand spear) — +1 Attack Damage
execute if items entity @s weapon.mainhand #minecraft:spears[custom_data~{beastlord:true}] unless entity @s[tag=jrn_beast_2pc] run attribute @s attack_damage modifier add evercraft:jrn_beast_2pc_dmg 1 add_value
execute if items entity @s weapon.mainhand #minecraft:spears[custom_data~{beastlord:true}] run tag @s add jrn_beast_2pc
execute unless items entity @s weapon.mainhand #minecraft:spears[custom_data~{beastlord:true}] if entity @s[tag=jrn_beast_2pc] run attribute @s attack_damage modifier remove evercraft:jrn_beast_2pc_dmg
execute unless items entity @s weapon.mainhand #minecraft:spears[custom_data~{beastlord:true}] if entity @s[tag=jrn_beast_2pc] run tag @s remove jrn_beast_2pc

# Class bonus: Healer (mainhand healer item) — +4 Max Health
execute if items entity @s weapon.mainhand *[custom_data~{healer:true}] unless entity @s[tag=jrn_heal_2pc] run attribute @s max_health modifier add evercraft:jrn_heal_2pc_hp 4 add_value
execute if items entity @s weapon.mainhand *[custom_data~{healer:true}] run tag @s add jrn_heal_2pc
execute unless items entity @s weapon.mainhand *[custom_data~{healer:true}] if entity @s[tag=jrn_heal_2pc] run attribute @s max_health modifier remove evercraft:jrn_heal_2pc_hp
execute unless items entity @s weapon.mainhand *[custom_data~{healer:true}] if entity @s[tag=jrn_heal_2pc] run tag @s remove jrn_heal_2pc
