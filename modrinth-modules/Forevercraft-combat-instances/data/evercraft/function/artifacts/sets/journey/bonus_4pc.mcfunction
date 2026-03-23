# Journey Set 4pc Bonus: Miner's Call — grants horn ability
tag @s add journey_4pc
# Give goat horn if not already held
execute unless items entity @s container.* minecraft:goat_horn unless items entity @s weapon.* minecraft:goat_horn run function evercraft:artifacts/sets/journey/grant_ability

# Class bonus: Beastlord (mainhand spear) — Strength I
execute if items entity @s weapon.mainhand #minecraft:spears[custom_data~{beastlord:true}] unless score @s ec.h_str matches 2.. run effect give @s strength 5 0 false

# Class bonus: Healer (mainhand healer item) — Regeneration I
execute if items entity @s weapon.mainhand *[custom_data~{healer:true}] unless score @s ec.h_regen matches 2.. run effect give @s regeneration 5 0 false
