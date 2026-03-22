# === PET COMBAT SYSTEM ===
function evercraft:companions/combat/load
schedule function evercraft:companions/handler/schedule/timer_slow 60s


# === PET COMBAT SYSTEMS ===
schedule function evercraft:cats/combat_tick 20t replace
schedule function evercraft:parrots/combat_tick 20t replace
schedule function evercraft:horses/combat_tick 20t replace
