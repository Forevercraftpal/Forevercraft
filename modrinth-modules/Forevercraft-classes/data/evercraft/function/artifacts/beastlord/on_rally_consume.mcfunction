# Beastlord — On consume (right-click) handler
# consume_item fires BEFORE item removal — must delay restore by 1 tick
# (immediate restore gets overwritten by the consume logic)

# Re-arm the advancement trigger
advancement revoke @s only evercraft:artifacts/beastlord/rally_trigger

# Save actual item data (preserves glyphforge runes, patina, mastery, etc.)
data modify storage evercraft:item_restore beastlord set from entity @s SelectedItem

# Mark for delayed restore (consume_item fires before item removal — restore next tick)
# The actual restore runs in tick.mcfunction Step 0, before weapon validation
tag @s add bl.restore

# Check if sneaking — only trigger Rally Cry when crouching
execute unless predicate evercraft:is_sneaking run return run title @s actionbar {"text":"Crouch + right-click to Rally!","color":"gray","italic":true}

# Check cooldown
execute if score @s ec.bl_rally_cd matches 1.. run return run title @s actionbar {"text":"Rally Cry recharging...","color":"red","italic":true}

# Check for any owned tamed animal nearby (wolves, cats, or parrots within 16 blocks)
tag @s add bl.owner
execute at @s as @e[type=wolf,distance=..16] run function evercraft:artifacts/beastlord/check_owned
execute at @s as @e[type=cat,distance=..16] run function evercraft:artifacts/beastlord/check_owned
execute at @s as @e[type=parrot,distance=..16] run function evercraft:artifacts/beastlord/check_owned
execute at @s as @e[type=fox,distance=..16,tag=ec.fox_tamed] run function evercraft:artifacts/beastlord/check_owned
tag @s remove bl.owner
execute unless entity @e[tag=bl.owned] run return run tellraw @s [{"text":"[Beastlord] ","color":"dark_purple"},{"text":"You need tamed animals nearby to use Rally Cry!","color":"red"}]
tag @e[tag=bl.owned] remove bl.owned

# Fire Rally Cry
function evercraft:artifacts/beastlord/rally
