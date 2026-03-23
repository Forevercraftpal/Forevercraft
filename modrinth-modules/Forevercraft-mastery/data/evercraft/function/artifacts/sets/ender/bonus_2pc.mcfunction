# Ender 2-Piece Bonus: No Enderman aggro + Pearl efficiency
# Walk among the void dwellers in peace

# Tag player as having 2pc bonus
execute unless entity @s[tag=ender_2pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Ender 2pc: ",color:"dark_purple"},{text:"No Enderman aggro + Pearl efficiency",color:"gray"}]
tag @s add ender_2pc

# Make nearby Endermen passive (clear anger)
execute as @e[type=enderman,distance=..16] run data merge entity @s {anger_time:0}

# Night vision to see in the End
effect give @s night_vision 13 0 false
