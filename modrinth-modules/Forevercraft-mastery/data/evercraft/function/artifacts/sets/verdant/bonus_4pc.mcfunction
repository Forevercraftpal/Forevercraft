# Grove 4-Piece Bonus: Verdant Aura + Harvest Caller
execute unless entity @s[tag=verdant_4pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Grove 4pc: ",color:"light_purple"},{text:"Verdant Aura — 2x crop growth (32b) + Harvest Caller",color:"gray"}]
tag @s add verdant_4pc
function evercraft:artifacts/sets/verdant/grant_ability_item
particle happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.01 3 force @s

# Class bonus: Archer (mainhand bow) — Speed I
execute if items entity @s weapon.mainhand bow[custom_data~{awakened:1b}] unless score @s ec.h_speed matches 2.. run effect give @s speed 3 0 false

# Class bonus: Hunter (mainhand crossbow) — Night Vision
execute if items entity @s weapon.mainhand crossbow[custom_data~{awakened:1b}] run effect give @s night_vision 13 0 false
