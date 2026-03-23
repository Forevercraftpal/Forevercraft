# Journey Set 5pc Bonus: Fortune's Favor — +2 Luck when holding Journey weapon
tag @s add journey_5pc
effect give @s luck 5 1 false

# Class bonus: Beastlord (mainhand spear) — Speed I
execute if items entity @s weapon.mainhand #minecraft:spears[custom_data~{beastlord:true}] unless score @s ec.h_speed matches 2.. run effect give @s speed 5 0 false

# Class bonus: Healer (mainhand healer item) — Resistance I
execute if items entity @s weapon.mainhand *[custom_data~{healer:true}] unless score @s ec.h_resist matches 2.. run effect give @s resistance 5 0 false
