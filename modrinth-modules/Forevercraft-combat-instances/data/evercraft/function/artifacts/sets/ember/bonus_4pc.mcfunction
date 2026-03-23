# Ember 4-Piece Bonus: Magma Core — Lava Walker + Fire AoE
execute unless entity @s[tag=ember_4pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Ember 4pc: ",color:"red"},{text:"Magma Core — Lava Walker + Fire AoE",color:"gray"}]
tag @s add ember_4pc
effect give @s fire_resistance 3 0 false
particle flame ~ ~1 ~ 0.5 0.5 0.5 0.02 5 force @s
