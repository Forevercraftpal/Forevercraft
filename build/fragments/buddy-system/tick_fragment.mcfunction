# === TAMED ANIMAL BOND STATUS ===
execute as @a[scores={ec.bond=1..}] run function evercraft:tamed_bond/show_status
scoreboard players enable @a[scores={ec.bond=1..}] ec.bond
scoreboard players set @a[scores={ec.bond=1..}] ec.bond 0
