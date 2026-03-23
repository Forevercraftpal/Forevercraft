# === PASSIVE TICK — Called every 72 ticks ===
scoreboard players set #aff_timer ec.aff_timer 0
execute as @a[scores={ec.aff_class=1..}] run function evercraft:affinity/passive_grant_player
