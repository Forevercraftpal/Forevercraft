# Celestial - Item Use Handler (Star Horn)
advancement revoke @s only evercraft:artifacts/sets/celestial_item_use
execute if entity @s[tag=celestial_4pc] run function evercraft:artifacts/sets/celestial/meteor_strike
execute unless entity @s[tag=celestial_4pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You need the full Celestial set (4pc) to use Meteor Strike!",color:"red"}]
