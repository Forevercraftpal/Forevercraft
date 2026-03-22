# === FOUNTAIN OF ETERNAL DREAMS (GACHA SYSTEM) ===
# OPT: Existence gate — skip when no fountain entities exist + no players in menu
execute if entity @e[type=interaction,tag=ec.fountain_click,limit=1] run function evercraft:gacha/tick
execute if entity @a[tag=ec.InFountain,limit=1] unless entity @e[type=interaction,tag=ec.fountain_click,limit=1] run function evercraft:gacha/tick
# Hero's Dance cooldown — already decremented in artifacts/sets/tick (removed duplicate)
