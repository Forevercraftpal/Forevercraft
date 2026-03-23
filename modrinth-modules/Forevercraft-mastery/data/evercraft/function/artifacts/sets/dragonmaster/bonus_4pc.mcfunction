# Dragonmaster 4-Piece Bonus: Dragon Horn — Summon dragon ally
execute unless entity @s[tag=dragonmaster_4pc] run function evercraft:artifacts/sets/dragonmaster/grant_ability_item
tag @s add dragonmaster_4pc

# Dragon aura — fire particles around player
particle flame ~ ~1 ~ 0.5 0.5 0.5 0.01 3 force @s

# Class bonus: Berserker (mainhand axe) — +20% Attack Speed
execute if items entity @s weapon.mainhand #minecraft:axes[custom_data~{awakened:1b}] unless entity @s[tag=dm_berserk_4pc] run attribute @s attack_speed modifier add evercraft:dm_berserk_4pc_aspd 0.2 add_multiplied_base
execute if items entity @s weapon.mainhand #minecraft:axes[custom_data~{awakened:1b}] run tag @s add dm_berserk_4pc
execute unless items entity @s weapon.mainhand #minecraft:axes[custom_data~{awakened:1b}] if entity @s[tag=dm_berserk_4pc] run attribute @s attack_speed modifier remove evercraft:dm_berserk_4pc_aspd
execute unless items entity @s weapon.mainhand #minecraft:axes[custom_data~{awakened:1b}] if entity @s[tag=dm_berserk_4pc] run tag @s remove dm_berserk_4pc

# Class bonus: Dancer (mainhand gauntlet) — +1 Attack Damage
execute if items entity @s weapon.mainhand #minecraft:swords[custom_data~{dancer:true}] unless entity @s[tag=dm_dancer_4pc] run attribute @s attack_damage modifier add evercraft:dm_dancer_4pc_dmg 1 add_value
execute if items entity @s weapon.mainhand #minecraft:swords[custom_data~{dancer:true}] run tag @s add dm_dancer_4pc
execute unless items entity @s weapon.mainhand #minecraft:swords[custom_data~{dancer:true}] if entity @s[tag=dm_dancer_4pc] run attribute @s attack_damage modifier remove evercraft:dm_dancer_4pc_dmg
execute unless items entity @s weapon.mainhand #minecraft:swords[custom_data~{dancer:true}] if entity @s[tag=dm_dancer_4pc] run tag @s remove dm_dancer_4pc
