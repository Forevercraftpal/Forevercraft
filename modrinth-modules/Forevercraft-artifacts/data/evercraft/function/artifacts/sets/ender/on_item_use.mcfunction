# Ender - Item Use Handler (Void Horn)
# Called by advancement when player uses the Void Horn item

# Revoke the advancement so it can trigger again
advancement revoke @s only evercraft:artifacts/sets/ender_item_use

# Only execute if player has 4pc bonus
execute if entity @s[tag=ender_4pc] run function evercraft:artifacts/sets/ender/blink

# If player doesn't have 4pc, notify them
execute unless entity @s[tag=ender_4pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You need the full Ender set (4pc) to use Blink!",color:"red"}]
