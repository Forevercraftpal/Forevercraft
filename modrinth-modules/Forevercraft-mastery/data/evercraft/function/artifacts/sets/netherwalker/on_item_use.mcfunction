# Netherwalker - Item Use Handler (Nether Horn)
# Called by advancement when player uses the Nether Horn item

# Revoke the advancement so it can trigger again
advancement revoke @s only evercraft:artifacts/sets/netherwalker_item_use

# Only execute if player has 4pc bonus
execute if entity @s[tag=netherwalker_4pc] run function evercraft:artifacts/sets/netherwalker/blaze_burst

# If player doesn't have 4pc, notify them
execute unless entity @s[tag=netherwalker_4pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You need the full Netherwalker set (4pc) to use Blaze Burst!",color:"red"}]
