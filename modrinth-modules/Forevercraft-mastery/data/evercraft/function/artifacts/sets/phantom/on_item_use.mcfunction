# Phantom - Item Use Handler (Phantom Horn)
# Called by advancement when player uses the Phantom Horn item

# Revoke the advancement so it can trigger again
advancement revoke @s only evercraft:artifacts/sets/phantom_item_use

# Only execute if player has 4pc bonus
execute if entity @s[tag=phantom_4pc] run function evercraft:artifacts/sets/phantom/phantom_form

# If player doesn't have 4pc, notify them
execute unless entity @s[tag=phantom_4pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You need the full Phantom set (4pc) to use Phantom Form!",color:"red"}]
