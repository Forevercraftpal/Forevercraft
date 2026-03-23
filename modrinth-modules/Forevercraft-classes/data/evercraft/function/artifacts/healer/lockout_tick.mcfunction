# Healer Artifacts — Per-Tick Lockout
# Runs every game tick for responsive arrow blocking and actionbar feedback

# Delayed item restore (consume_item fires before item removal — restore 1 tick later)
execute as @a[tag=ec.hl_restore] at @s run function evercraft:artifacts/healer/do_restore

# Tag fresh arrows near locked healer players (within 1.5 blocks = just fired)
execute as @a[scores={ec.hl_locked=1..}] at @s run tag @e[type=arrow,distance=..1.5,tag=!healer_arrow] add healer_arrow
execute as @a[scores={ec.hl_locked=1..}] at @s run tag @e[type=spectral_arrow,distance=..1.5,tag=!healer_arrow] add healer_arrow

# Actionbar warning when holding bow or crossbow during lockout
execute as @a[scores={ec.hl_locked=1..}] if items entity @s weapon.mainhand bow run title @s actionbar {"text":"Healer's Oath — Cannot use weapons","color":"red","bold":true}
execute as @a[scores={ec.hl_locked=1..}] if items entity @s weapon.mainhand crossbow run title @s actionbar {"text":"Healer's Oath — Cannot use weapons","color":"red","bold":true}
