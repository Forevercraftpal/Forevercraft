# === HEARTHSTONE GUI ===
execute as @a[tag=HS.InMenu] at @s run function evercraft:housing/gui/tick


# === HOME SNOW GOLEM DEFENSE ===
# Per-tick snowball tracking + 3 damage on hit (existence-gated)
execute if entity @e[type=snow_golem,tag=hs.golem,limit=1] run function evercraft:housing/golem/tick


# === STASH LABEL ===
# Delayed label restore + process (consume_item fires before item removal — restore next tick)
execute as @a[tag=HS.Labeling] at @s run function evercraft:housing/stash/label/do_label


# === HOUSE KEY ===
# Delayed key restore + menu open (consume_item fires before item removal — restore next tick)
execute as @a[tag=HS.SatchelRestore] at @s run function evercraft:housing/satchel/restore_and_open
# Per-tick: menu validation + click detection for players with House Key menu open
execute as @a[tag=HS.InSatchel] at @s run function evercraft:housing/satchel/gui/tick


# === HOUSING LABORERS ===
# Contract restore (1-tick delay after consume_item — same pattern as healer artifacts)
execute as @a[tag=ec.lb_restore] at @s run function evercraft:laborer/hire/do_restore
# Laborer interaction clicks (per-tick for instant response)
execute if entity @e[type=interaction,tag=ec.lb_interact,limit=1] as @e[type=interaction,tag=ec.lb_interact] if data entity @s interaction run function evercraft:laborer/on_interact
# Laborer GUI tick (click detection for players with laborer menu open)
execute as @a[tag=LB.InMenu] at @s run function evercraft:laborer/gui/tick
