# Nature - Item Use Handler (Grove Horn)
# Called by advancement when player uses the Grove Horn item

# Revoke the advancement so it can trigger again
advancement revoke @s only evercraft:artifacts/sets/nature_item_use

# Only execute if player has 4pc bonus
execute if entity @s[tag=nature_4pc] run function evercraft:artifacts/sets/nature/natures_wrath

# If player doesn't have 4pc, notify them
execute unless entity @s[tag=nature_4pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You need the full Nature set (4pc) to use Nature's Wrath!",color:"red"}]
