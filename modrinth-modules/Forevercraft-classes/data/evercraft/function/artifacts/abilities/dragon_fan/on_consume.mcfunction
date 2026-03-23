# Dragon Fan - Right-click consumed
# Tag for 1-tick delayed restore, then route ability by sneak state

advancement revoke @s only evercraft:artifacts/abilities/dragon_fan/consume

# Save actual item data (preserves glyphforge runes, patina, mastery, etc.)
data modify storage evercraft:item_restore dragon_fan set from entity @s SelectedItem

# Always tag for item restore (consume destroys item in survival)
tag @s add ec.df_restore

# Sneaking → Inferno Burst (Dragon Incarnate AOE)
execute if predicate evercraft:is_sneaking run return run function evercraft:artifacts/dragon_incarnate/inferno_burst

# Standing → Dragon's Breath (fire laser, has internal cooldown check)
function evercraft:artifacts/abilities/dragon_fan/fire_breath
