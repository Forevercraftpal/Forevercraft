# Golem - Item Use Handler (Iron Horn)
# Called by advancement when player uses the Iron Horn item

# Revoke the advancement so it can trigger again
advancement revoke @s only evercraft:artifacts/sets/golem_item_use

# Only execute if player has 4pc bonus
execute if entity @s[tag=golem_4pc] run function evercraft:artifacts/sets/golem/golem_smash

# If player doesn't have 4pc, notify them
execute unless entity @s[tag=golem_4pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You need the full Golem set (4pc) to use Golem Smash!",color:"red"}]
