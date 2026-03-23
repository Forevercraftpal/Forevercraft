# Hollow Fangs — Thousand Cuts Channel Tick
# Run as @s at @s each tick while ec.sp_thousand_cuts is active
# State 1 = channeling (40 ticks), State 2 = striking (20 ticks for 10 strikes)

# === STATE 1: CHANNELING ===
execute if score @s ec.sp_state matches 1 run function evercraft:spirit/abilities/hollow_fangs/tc_channel

# === STATE 2: STRIKING ===
execute if score @s ec.sp_state matches 2 run function evercraft:spirit/abilities/hollow_fangs/tc_strike
