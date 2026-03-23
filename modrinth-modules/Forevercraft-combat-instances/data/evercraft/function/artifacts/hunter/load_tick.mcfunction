# Hunter Crossbow — Load Tick
# Called every tick while loading a hunter crossbow (via using_item advancement)
advancement revoke @s only evercraft:artifacts/hunter/load

# Always re-identify crossbow (player may have swapped weapons)
function evercraft:artifacts/hunter/identify_crossbow

# Check for Fade: sneaking + no fade cooldown
execute if entity @s[predicate=evercraft:is_sneaking] unless score @s ec.ht_fade matches 1.. run function evercraft:artifacts/hunter/fade
