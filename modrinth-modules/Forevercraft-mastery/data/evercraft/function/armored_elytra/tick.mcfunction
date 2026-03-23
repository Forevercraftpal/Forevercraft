# Armored Elytra — Ritual Tick (every 1s) (OPT Session 76 — was 10t)
# Merge: throw elytra + chestplate on beacon (beacon is sacrificed)
# Unmerge: throw armored elytra on stonecutter
# Ritual detection doesn't need 0.5s precision — 1s is fine for thrown items

# Reschedule first (guarantees we keep ticking regardless of gate)
schedule function evercraft:armored_elytra/tick 1s

# Gate: skip logic if no players online
execute unless entity @a run return 0

# OPT: Tag-gate — only check NBT on unchecked item entities (avoids deep NBT scan on ALL items)
execute as @e[type=item,tag=!ec.ae_checked] run function evercraft:armored_elytra/check_item
