# Frost - Item Use Handler (Frost Horn)
# Called by advancement when player uses the Frost Horn item

# Revoke the advancement so it can trigger again
advancement revoke @s only evercraft:artifacts/sets/frost_item_use

# Only execute if player has 4pc bonus
execute if entity @s[tag=frost_4pc] run function evercraft:artifacts/sets/frost/blizzard

# If player doesn't have 4pc, notify them
execute unless entity @s[tag=frost_4pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You need the full Frost set (4pc) to use Blizzard!",color:"red"}]
