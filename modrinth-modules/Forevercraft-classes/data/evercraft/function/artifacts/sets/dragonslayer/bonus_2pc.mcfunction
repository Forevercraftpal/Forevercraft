# Dragonslayer 2-Piece Bonus: +20% damage vs Dragons/Endermen
# Applied via damage command when hitting these mobs

# Tag player as having 2pc bonus
execute unless entity @s[tag=dragonslayer_2pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Dragonslayer 2pc: ",color:"light_purple"},{text:"+20% damage vs Dragons & Endermen",color:"gray"}]
tag @s add dragonslayer_2pc
