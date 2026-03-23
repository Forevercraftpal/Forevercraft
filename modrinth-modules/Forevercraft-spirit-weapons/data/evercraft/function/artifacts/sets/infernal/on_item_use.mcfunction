# Infernal - Item Use Handler (Infernal Horn)
# Called by advancement when player uses the Infernal Horn item

# Revoke the advancement so it can trigger again
advancement revoke @s only evercraft:artifacts/sets/infernal_item_use

# Only execute if player has 4pc bonus
execute if entity @s[tag=infernal_4pc] run function evercraft:artifacts/sets/infernal/infernal_eruption

# If player doesn't have 4pc, notify them
execute unless entity @s[tag=infernal_4pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You need the full Infernal set (4pc) to use Infernal Eruption!",color:"red"}]
