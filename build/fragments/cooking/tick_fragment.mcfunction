# === PANTRY ===
# Delayed pantry restore (consume_item fires before item removal — restore next tick)
execute as @a[tag=ec.pantry_restore] run function evercraft:pantry/restore_item


# === CAMPFIRE KITCHEN GUI ===
# Delayed utensil restore (consume_item fires before item removal — restore next tick)
execute as @a[tag=CK.Restore] run function evercraft:cooking/restore_utensil
# Per-tick: menu validation + click detection for players with kitchen open
execute as @a[tag=CK.InMenu] at @s run function evercraft:cooking/gui/tick
