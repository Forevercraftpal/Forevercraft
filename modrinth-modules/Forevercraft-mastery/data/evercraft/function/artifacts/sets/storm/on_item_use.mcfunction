# Storm - Item Use Handler (Thunder Horn)
# Called by advancement when player uses the Thunder Horn item

# Revoke the advancement so it can trigger again
advancement revoke @s only evercraft:artifacts/sets/storm_item_use

# Only execute if player has 4pc bonus
execute if entity @s[tag=storm_4pc] run function evercraft:artifacts/sets/storm/thunder_strike

# If player doesn't have 4pc, notify them
execute unless entity @s[tag=storm_4pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You need the full Storm set (4pc) to use Thunder Strike!",color:"red"}]
