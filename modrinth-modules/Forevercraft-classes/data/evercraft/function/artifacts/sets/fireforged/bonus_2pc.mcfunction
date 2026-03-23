# Fireforged 2-Piece Bonus: Blazing Aura — Fire Damage Immunity
# Grants permanent fire resistance

# Tag player as having 2pc bonus
execute unless entity @s[tag=fireforged_2pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Fireforged 2pc: ",color:"light_purple"},{text:"Blazing Aura — Fire Immunity",color:"gray"}]
tag @s add fireforged_2pc

# Apply fire resistance
effect give @s fire_resistance 3 0 false
