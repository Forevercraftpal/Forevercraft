# Splendid Set 4pc Bonus: Pathfinder — grants compass ability
tag @s add splendid_4pc
# Give pathfinder's compass if not already held
execute unless items entity @s container.* minecraft:recovery_compass[custom_data~{pathfinders_compass:1b}] unless items entity @s weapon.* minecraft:recovery_compass[custom_data~{pathfinders_compass:1b}] run function evercraft:artifacts/sets/splendid/grant_ability

# Class bonus: Rogue (mainhand dagger) — +20% Attack Speed
execute if items entity @s weapon.mainhand #minecraft:swords[custom_data~{rogue:true}] unless entity @s[tag=spl_rogue_4pc] run attribute @s attack_speed modifier add evercraft:spl_rogue_4pc_aspd 0.2 add_multiplied_base
execute if items entity @s weapon.mainhand #minecraft:swords[custom_data~{rogue:true}] run tag @s add spl_rogue_4pc
execute unless items entity @s weapon.mainhand #minecraft:swords[custom_data~{rogue:true}] if entity @s[tag=spl_rogue_4pc] run attribute @s attack_speed modifier remove evercraft:spl_rogue_4pc_aspd
execute unless items entity @s weapon.mainhand #minecraft:swords[custom_data~{rogue:true}] if entity @s[tag=spl_rogue_4pc] run tag @s remove spl_rogue_4pc
