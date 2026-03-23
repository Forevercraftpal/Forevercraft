# ============================================================
# Cooking Buff Timer — 1s scheduled tick
# Counts down Well-Fed and Fortune buff timers
# ============================================================

# Gate: skip if no players online
execute unless entity @a run return run schedule function evercraft:cooking/buff/tick 1s

# Well-Fed timer countdown (20 ticks = 1 second)
execute as @a[scores={ec.ck_wellfed=1..}] run scoreboard players remove @s ec.ck_wellfed 20
execute as @a[scores={ec.ck_wellfed=..0}] run function evercraft:cooking/buff/remove_well_fed

# Fortune meal timer countdown
execute as @a[scores={ec.ck_fortune=1..}] run scoreboard players remove @s ec.ck_fortune 20
execute as @a[scores={ec.ck_fortune=..0}] run function evercraft:cooking/buff/remove_fortune

# Re-schedule
schedule function evercraft:cooking/buff/tick 1s
