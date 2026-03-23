# Cooking Utensil — Delayed Restore (1 tick after consume_item)
# The game removes the consumed item after the advancement reward runs,
# so we must restore on the next tick to avoid the restored item being wiped.

tag @s remove CK.Restore
loot replace entity @s weapon.mainhand loot evercraft:cooking/cooking_utensil
