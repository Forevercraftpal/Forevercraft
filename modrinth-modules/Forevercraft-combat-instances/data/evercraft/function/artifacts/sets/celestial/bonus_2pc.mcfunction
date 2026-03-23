# Celestial 2-Piece Bonus: Night Vision + Treasure Alert
# The stars guide you to hidden riches

# Tag player as having 2pc bonus
execute unless entity @s[tag=celestial_2pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Celestial 2pc: ",color:"white"},{text:"Night Vision + Treasure Alert",color:"gray"}]
tag @s add celestial_2pc

# Night vision to see in darkness
effect give @s night_vision 13 0 false

# Treasure Alert — particles near chests/spawners
execute at @s run function evercraft:artifacts/accessories/chest_ping
